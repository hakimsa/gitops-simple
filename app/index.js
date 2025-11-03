﻿const express = require('express');
const bodyParser = require('body-parser');
const mongoose = require('mongoose');
const PORT = process.env.PORT || 8080;
const app = express();
const {logger,logEvents}=require("./midlewares/LogEvents");
const {serv,user,pass,cluster,db}=require("./dbConfig/conf");
const rooter = require('./roots/api/productos');
const index= require('./roots/root');
app.use(bodyParser.urlencoded( {extended:false} ));
app.use(bodyParser.json());
//const conexion=`${serv}${user}:${pass}@${cluster}${db}?retryWrites=true&w=majority`;
const encodedPass = encodeURIComponent(pass);

const conexion = `${serv}${user}:${encodedPass}@${cluster}/${db}?retryWrites=true&w=majority`;

console.log("conexion up :")
app.use( (req, res, next) => {
	//permitimos que las peticiones se puedan hacer desde cualquier sitio
	res.header('Access-Control-Allow-Origin', '*')
	//res.header('Access-Control-Allow-Origin', '192.168.0.11')
	// configuramos las cabeceras que pueden llegar
	res.header('Access-Control-Allow-Headers', 'X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Request-Method' )
	// configuramos los métodos que nos pueden llegar
	res.header('Access-Control-Allow-Methods', 'GET, POST, OPTIONS, PUT, DELETE')
	res.header('Allow', 'GET, POST, OPTIONS, PUT, DELETE')
	next(); // para que se salga de esta función
})
app.use(logger);
//app.use(errorHandeler);
app.use(rooter);
app.use(index);

mongoose.connect(conexion.toString(),
 { }).then(
    ()=> {  
	
        app.listen(PORT, ()=>{
        });
	}).catch(
error=>{

	logEvents( error.name +"\t" +"\t"+"Error" +"\t"+error.message+"\t");
});