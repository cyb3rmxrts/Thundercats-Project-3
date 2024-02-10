document.getElementById('carRentalForm').addEventListener('submit', function(event) {
  event.preventDefault();
  submitForm();
});

function submitForm() {
  var email = document.getElementById("email").value;
  var name = document.getElementById("name").value;
  var model = document.getElementById("model").value;

  callAPI(email, name, model);
}

var callAPI = (email, name, model) => {
  var myHeaders = new Headers();
  myHeaders.append("Content-Type", "application/json");

  // Stringify the request body
  var raw = JSON.stringify({ "email": email, "name": name, "model": model});

  var requestOptions = {
    method: 'POST',
    headers: myHeaders,
    body: raw, // Use the stringified JSON object as the body
    redirect: 'follow'
  };

    // Send the request to the API
    fetch("https://c0qou9fsql.execute-api.us-east-1.amazonaws.com/dev", requestOptions)
        .then(response => response.text())
        .then(result => {
            alert(JSON.parse(result).body);
            // Clear the form fields here after successful submission
            document.getElementById('carRentalForm').reset();
        })
        .catch(error => console.log('error', error));
}
