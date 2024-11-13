
const sequelize = require('./../config/db');
const {DataTypes, Model} = require('sequelize');

class User extends Model {}

User.init(
  {
    id: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true,
    },
    name: {
      type: DataTypes.STRING(60),
    },

    surname: {
      type: DataTypes.STRING(60),
    },

   email: {
      type: DataTypes.STRING(200),
    },

   password_hash: {
      type: DataTypes.STRING(255),
    },
   salt: {
      type: DataTypes.STRING(50),
    },
  },
  {
  sequelize,
  modelName: 'User',
  }
);


module.exports = User;
