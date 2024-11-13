
const sequelize = require('./../config/db');
const {DataTypes, Model} = require('sequelize');

class Role extends Model {}

Role.init(
  {
    id: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true,
    },
    name: {
      type: DataTypes.STRING(20),
    },
  },
  {
  sequelize,
  modelName: 'Role',
  }
);


module.exports = Role;
