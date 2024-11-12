require('dotenv').config();

const { Sequelize } = require("sequelize");
const sequelize = new Sequelize(`postgres://${process.env.DB_USER}:${process.env.DB_PASSWORD}@${process.env.DB_HOST}:${process.env.DB_PORT}/${process.env.DB_NAME}`);

console.log(process.env.NODE_ENV) // dev
console.log(process.env.NODE_ENV === 'dev') // false
console.log(process.env.NODE_ENV.length) // 4 (including a space at the end)


const authenticate = async () =>{
  try{
    await sequelize.authenticate();
    console.log("Connection has been establishied successfully.");
  }catch(err){
    console.error("Unable to connect to database: ", err);
  }
};
authenticate();
