const url = window.location.origin

async function pesquisar(element) {


    const inputs = new FormData(element);
    const data = Object.fromEntries(inputs)
    var buscar = `${url}/produto/${data.search}`
    window.location.href = `${buscar}`


}

document.getElementById('formpesfsquisaprodutobynome').addEventListener('submit', (event) => {
    event.preventDefault();
     const inputs = new FormData(event.target);
    const data = Object.fromEntries(inputs)
    window.location.replace(`${url}/produto/${data.search}` + $("#query").val());
})

