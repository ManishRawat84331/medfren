const express = require('express');
const bodyParser = require('body-parser');
const axios = require('axios');
const cors = require('cors');

const app = express();

// Middleware to enable CORS
app.use(cors());

// Middleware to parse request body
app.use(bodyParser.json());

// Endpoint to handle login requests
app.post('/login', async (req, res) => {
    const { email, password } = req.body;

    // Make a request to the login API
    try {
        const response = await axios.post('http://medfren.us-east-1.elasticbeanstalk.com/api/v1/auth/doctor/login', {
            email,
            password
        });

        // Forward the API response to the client
        res.json(response.data);
    } catch (error) {
        // Handle errors
        console.error('Login error:', error.message);
        res.status(500).json({ error: 'An error occurred while processing your request.' });
    }
});

// Start the server
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
    console.log(`Server listening on port ${PORT}`);
});
