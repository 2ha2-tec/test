var express = require('express')

const app = express();


app.get('/', (req, res) => {
  res.send('index...');
});

app.get('/p', (req, res) => {
  res.json(req.query);
})


app.get('/t', (req, res) => {
  res.send('t...');
});

app.listen(process.env.PORT || 3000);