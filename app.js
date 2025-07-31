import path from "node:path";
import { fileURLToPath } from "url";
import express from "express";
import { connection } from "./database/mysql.js"; // Conexión a la BD

process.loadEnvFile(); // Carga variables de entorno del .env

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

const app = express(); // Crea la aplicación Express
const PORT = process.env.PORT || 3000; // Define el puerto desde .env o usa 3000 por defecto

app.use(express.static(path.join(__dirname, "public"))); // Sirve archivos estáticos desde 'public'
app.use(express.json()); // Habilita el parsing de JSON en las peticiones

// Sirve la página principal
app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, 'public', 'index.html'));
});

// Obtiene todos los cursos
app.get('/api/eoi', (req, res) => {
    connection.query("SELECT * FROM cursos", (err, result) => {
        if (err) return res.status(500).json({ error: "Error al recuperar los cursos." });
        res.json(result);
    });
});

// Filtra cursos por año 
app.get('/api/eoi/year/:anyo', (req, res) => {
    const { anyo } = req.params;
    connection.query("SELECT * FROM cursos WHERE Any = ?", [anyo], (err, result) => {
        if (err) return res.status(500).json({ error: "Error al filtrar por año." });
        if (result.length === 0) return res.status(404).json({ message: "Curso no encontrado" });
        res.json(result);
    });
});

// Filtra cursos por año y tipo (ej: ordinari, especial)
app.get('/api/eoi/year/:anyo/type/:tipus', (req, res) => {
    const { anyo, tipus } = req.params;
    connection.query("SELECT * FROM cursos WHERE Any = ? AND Tipus = ?", [anyo, tipus], (err, result) => {
        if (err) return res.status(500).json({ error: "Error al filtrar por año y tipo." });
        if (result.length === 0) return res.status(404).json({ message: "Curso no encontrado" });
        res.json(result);
    });
});

// Filtra cursos por idioma (español o catalán)
app.get('/api/eoi/lang/:idioma', (req, res) => {
    const { idioma } = req.params;
    const query = `
        SELECT c.* FROM cursos c
        JOIN idiomes i ON c.id_idioma = i.id_idioma
        WHERE i.nom_idioma = ? OR i.nombre_idioma = ?
    `;
    connection.query(query, [idioma, idioma], (err, result) => {
        if (err) return res.status(500).json({ error: "Error al filtrar por idioma." });
        if (result.length === 0) return res.status(404).json({ message: "Curso no encontrado" });
        res.json(result);
    });
});

//rutas no encontradas (404)
app.use((req, res) => {
    res.status(404).json({ message: "La Ruta no fue encontrada." });
});

// Aqui se inicia el servidor
app.listen(PORT, () => {
    console.log(`Servidor escuchando en http://localhost:${PORT}`);
});