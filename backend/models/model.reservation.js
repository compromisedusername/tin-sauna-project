const sequelize = require('./../config/db');
const {DataTypes, Model} = require('sequelize');
class Reservation extends Model {}

Reservation.init(
  {
    id: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true,
    },
    date_from: {
      type: DataTypes.DATE,
    },

    date_to: {
      type: DataTypes.DATE,
    },
    number_of_people: {
      type: DataTypes.INTEGER
    },
  },
  {
  sequelize,
  modelName: 'Reservation',
  }
);


module.exports = Reservation;
