
const sequelize = require('./../config/db');
const {DataTypes, Model} = require('sequelize');
class Sauna extends Model {}

Sauna.init(
  {
    id: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true,
    },
    sauna_type: {
      type: DataTypes.STRING(20),
    },
    humidity: {
      type: DataTypes.INTEGER,
      defaultValue: 40,
    },
    temperature: {
      type: DataTypes.INTEGER,
      defaultValue: 40,
    },
    people_capacity: {
      type: DataTypes.INTEGER,
    },
  },
  {
  sequelize,
  modelName: 'Sauna',
  }
);


module.exports = Sauna;
