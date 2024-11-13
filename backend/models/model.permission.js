const { Sequelize, DataTypes, Model} = require("sequelize");
const sequelize = require('./../config/db');
class Permission extends Model {}

Permission.init(
  {
    id: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true,
    },
    name: {
      type: DataTypes.STRING(20),
    }
  },
  {
  sequelize,
  modelName: 'Permission',
  }
);


module.exports = Permission;
