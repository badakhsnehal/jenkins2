const express = require('express');
const path = require('path');
const app = express();
const port = process.env.PORT || 3000;

app.get('/', (req, res) => {
  res.send('Hello from spnodeserver!');
});

// An example endpoint
app.get('/health', (req, res) => {
  res.json({ status: 'OK', timestamp: new Date() });
});

// Serve static files if needed
app.use(express.static(path.join(__dirname, 'public')));

app.listen(port, () => {
  console.log(`Server is listening on port ${port}`);
});
