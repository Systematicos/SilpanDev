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

function setInputsForm() {
    inputs = []

    if (document.getElementById('text_date') == null) {

        div = document.createElement('div')
        div.className = 'controls form-group'

        input = document.createElement('input')
        input.className = 'billing-address-name form-control'
        input.type = 'date'
        input.name = 'data'
        input.placeholder = 'Data'
        input.id = 'text_date'
        input.required = ""
        div.appendChild(input)

        inputs.push(div)
    }

    if (document.getElementById('text_email') == null) {

        div = document.createElement('div')
        div.className = 'controls form-group'

        input = document.createElement('input')
        input.className = 'billing-address-name form-control'
        input.type = 'email'
        input.name = 'email'
        input.placeholder = 'E-mail'
        input.id = 'text_email'
        input.required = ""
        div.appendChild(input)

        inputs.push(div)
    }


    return inputs
}

function deleteInputsForm() {

    text_dat = document.getElementById('text_date')
    text_dat.parentNode.removeChild(text_dat)

    text_email = document.getElementById('text_email')
    text_email.parentNode.removeChild(text_email)
}



async function esconderCampoPesquisa(input) {
    const data = {}
    data.csrfmiddlewaretoken = getCookie('csrftoken')
    const headers = new Headers({
        'X-CSRFToken': data.csrfmiddlewaretoken
    });

    data.cpf = document.getElementById("text_cpf").value

    var handleError = function (err) {
        console.warn(err);
        return new Response(JSON.stringify({
            code: 400,
            message: 'Stupid network Error'
        }));
    };

    await fetch(`${url}/cliente/buscar`, {
        method: 'POST',
        headers,
        body: JSON.stringify(data)

    }).then((response) => {
        if (response.ok) {
            deleteInputsForm()
            return response.json()
        } else if (response.status == 404) {
            form = document.getElementById('form_cliente')

            divInputs = form.querySelectorAll('.controls.form-group')[1]
            inputs = setInputsForm()


            for (let i = 0; i < inputs.length; i++) {
                divInputs.parentNode.insertBefore(inputs[i], divInputs.nextSibling);
            }

        }

    }).then(data => ({
            data: data,

        })
    ).then(res => {

        let response = JSON.parse(res.data.Cliente)
        console.log(response)
        document.getElementById("nome").value = `${response[0]['fields']['nome']} ${response[0]['fields']['sobrenomez']} `

    }).catch((error) => {
        console.error(error)
    });


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

document.getElementById("text_cpf").addEventListener("blur", esconderCampoPesquisa);

document.getElementById('form_cliente').addEventListener('submit', (event) => {
    event.preventDefault();
    pagar(event.target)
})


/*document.getElementById('form').addEventListener('submit', (event) => {
    event.preventDefault();
    pagar(event.target)
})*/