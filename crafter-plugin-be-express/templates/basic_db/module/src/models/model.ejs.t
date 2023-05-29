---
to: <%= outputPath %>/<%= properties.name %>/src/models/<%= database.properties.name %>/<%= database.properties.name %>.js
---
'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class <%= database.properties.name %> extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  <%= database.properties.name %>.init({
    name: DataTypes.STRING,
  }, {
    sequelize,
    modelName: '<%= database.properties.name %>',
    freezeTableName: true,
  });
  return <%= database.properties.name %>;
};