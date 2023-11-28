function validateForm() {
    var username = document.getElementById('username').value;
    var password = document.getElementById('password').value;
    var errorMessage = document.getElementById('errorMessage');

    // Check if username and password are not empty
    if (username === '' || password === '') {
        errorMessage.textContent = 'Username and password are required';
    } else {
        // Perform any additional validation or authentication here
        // For simplicity, let's consider any non-empty input as a successful login
        errorMessage.textContent = ''; // Clear any previous error message
        alert('Login successful!'); // You can replace this with the desired action
    }
}
