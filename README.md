# Backend-Node.js-with-express-and-stripe-const express = require('express');
const bcrypt = require('bcrypt');
const mongoose = require('mongoose');
const User = require('./models/User'); // Mongoose User model
const app = express();

app.use(express.json());

// Registration Endpoint
app.post('/register', async (req, res) => {
    try {
        const { email, password } = req.body;
        // Input validation
        if (!email || !password) {
            return res.status(400).send('Email and password are required');
        }
        
        // Password encryption
        const hashedPassword = await bcrypt.hash(password, 10);
        
        // Save user to database
        const newUser = new User({ email, password: hashedPassword });
        await newUser.save();
        
        res.status(201).send('User registered successfully');
    } catch (error) {
        res.status(500).send('Server error');
    }
});

mongoose.connect('mongodb://localhost:27017/alumni', { useNewUrlParser: true, useUnifiedTopology: true });
app.listen(3000, () => console.log('Server running on port 3000'));

