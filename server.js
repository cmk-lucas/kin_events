
const express = require('express');
const fs = require('fs');
const path = require('path');
const app = express();

app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(express.static('public'));
app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, 'views'));

app.get('/evenements', (req, res) => {
  const events = JSON.parse(fs.readFileSync('./data/events.json', 'utf-8'));
  res.render('evenements', { events });
});

app.post('/api/events', (req, res) => {
  const events = JSON.parse(fs.readFileSync('./data/events.json', 'utf-8'));
  events.push(req.body);
  fs.writeFileSync('./data/events.json', JSON.stringify(events, null, 2));
  res.status(200).send({ message: 'Événement ajouté !' });
});

app.listen(3000, () => {
  console.log('Serveur démarré sur http://localhost:3000');
});
