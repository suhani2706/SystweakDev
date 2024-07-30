document.addEventListener('DOMContentLoaded', function () {
    const form = document.getElementById('signupForm');
    const passwordInput = document.getElementById('password');
    const confirmPasswordInput = document.getElementById('confirmPassword');
    const passwordError = document.getElementById('passwordError');
    const confirmPasswordError = document.getElementById('confirmPasswordError');

    form.addEventListener('submit', function (event) {
        let isValid = true;
        const password = passwordInput.value;
        const confirmPassword = confirmPasswordInput.value;

        // Clear previous error messages
        passwordError.textContent = '';
        confirmPasswordError.textContent = '';

        // Check if the password is at least 8 characters long
        if (password.length < 8) {
            passwordError.textContent = "Password must be at least 8 characters long.";
            isValid = false;
        }

        // Check if the password contains at least one number
        if (!/\d/.test(password)) {
            passwordError.textContent += (passwordError.textContent ? " " : "") + "Password must contain at least one number.";
            isValid = false;
        }

        // Check if the password contains at least one special character
        if (!/[!@#$%^&*(),.?":{}|<>]/.test(password)) {
            passwordError.textContent += (passwordError.textContent ? " " : "") + "Password must contain at least one special character.";
            isValid = false;
        }

        // Check if the passwords match
        if (password !== confirmPassword) {
            confirmPasswordError.textContent = "Passwords do not match.";
            isValid = false;
        }

        // Prevent form submission if there are validation errors
        if (!isValid) {
            event.preventDefault();
        }
    });
});
