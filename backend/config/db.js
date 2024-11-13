require('dotenv').config();

const permissions = require('./../models/model.permission');
const reservation= require('./../models/model.reservation');
const role = require('./../models/model.role');
const sauna = require('./../models/model.sauna');
const user = require('./../models/model.user');


const { Sequelize, DataTypes, Model} = require("sequelize");

const sequelize = new Sequelize(`postgres://${process.env.DB_USER}:${process.env.DB_PASSWORD}@${process.env.DB_HOST}:${process.env.DB_PORT}/${process.env.DB_NAME}`
);


const authenticate = async () =>{
  try{
    await sequelize.authenticate();
    console.log("Connection has been establishied successfully.");
  }catch(err){
    console.error("Unable to connect to database: ", err);
  }
};






module.exports = {authenticate, sequelize};

