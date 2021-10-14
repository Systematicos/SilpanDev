const url = window.location.origin

function getCookie(name) {
    var cookieValue = null;
    if (document.cookie && document.cookie != '') {
        var cookies = document.cookie.split(';');
        for (var i = 0; i < cookies.length; i++) {
            var cookie = jQuery.trim(cookies[i]);
            // Does this cookie string begin with the name we want?
            if (cookie.substring(0, name.length + 1) == (name + '=')) {
                cookieValue = decodeURIComponent(cookie.substring(name.length + 1));
                break;
            }
        }
    }
    return cookieValue;
}


function pagar(element) {

    const inputs = new FormData(element);
    const data = Object.fromEntries(inputs)

    data.csrfmiddlewaretoken = getCookie('csrftoken')
    data.cart = loadProducts().items;

    const headers = new Headers({
        'X-CSRFToken': data.csrfmiddlewaretoken
    });

    console.log(data)
    fetch(`${url}/pedido/`, {
        method: 'POST',
        headers,
        body: JSON.stringify(data)
    })


}

document.getElementById('form_endereco').addEventListener('submit', (event) => {
    event.preventDefault();
    pagar(event.target)
})