
document.addEventListener('DOMContentLoaded', () => {
  // Formulario para buscar por AÑO
  document.getElementById('formAny').addEventListener('submit', (event) => {
    event.preventDefault();
    const anyo = document.getElementById('anyo').value;
    if (anyo) {
      window.open(`/api/eoi/year/${anyo}`, '_blank');
    } else {
      alert("Por favor, introduce un año entre 2016 y 2017.");
    }
  });

  // Formulario para buscar por AÑO y TIPO
  document.getElementById('formAnyTipus').addEventListener('submit', (event) => {
    event.preventDefault();
    const anyo = document.getElementById('anyo2').value;
    const tipus = document.getElementById('tipus').value;
    if (anyo && tipus) {
      window.open(`/api/eoi/year/${anyo}/type/${tipus}`, '_blank');
    } else {
      alert("Por favor, introduce un año y un tipo.");
    }
  });

  // Formulario para buscar por IDIOMA
  document.getElementById('formIdioma').addEventListener('submit', (event) => {
    event.preventDefault();
    const idioma = document.getElementById('idioma').value;
    if (idioma) {
      window.open(`/api/eoi/lang/${idioma}`, '_blank');
    } else {
      alert("Elige un idioma.");
    }
  });
});