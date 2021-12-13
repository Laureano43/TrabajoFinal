const { application } = require('express');
const express=require('express');


const routes=express.Router();

const {Todo,Paletas,Remeras,Zapas,RankingVaron, RankingMujer, Ubicacion, Quienes}=require('../controllers/Controllers')

        routes.get('/',Todo);
        routes.get('/Paletas',Paletas);
        routes.get('/Remeras',Remeras);
        routes.get('/Zapas',Zapas);
        routes.get('/RankingVaron',RankingVaron);
        routes.get('/RankingMujer',RankingMujer);
        routes.get('/Ubicacion',Ubicacion);
        routes.get('/Quienes',Quienes);
        

module.exports= routes;