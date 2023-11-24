import express from 'express';
import { exec } from 'child_process';



const app = express();

app.use(express.json());

app.post('/deploy', (req, res) => {
  exec('./deploy.sh', (err, stdout, stderr) => {
    if (err) {
      console.error(err);
      return res.status(500).send('Erreur lors du déploiement');
    }
    res.status(200).send('Déploiement réussi');
  });
});

app.listen(3000, () => {
  console.log('Server listening on port 3000');
});
