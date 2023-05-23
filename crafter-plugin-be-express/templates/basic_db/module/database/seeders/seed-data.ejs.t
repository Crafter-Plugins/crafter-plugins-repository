---
to: <%= outputPath %>/<%= properties.name %>/database/seeders/<%= database.properties.name %>/seed-data.js
force: true
---
/* eslint-disable no-unused-vars */
'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up (queryInterface, Sequelize) {
    /**
     * Add seed commands here.
     *
     * Example:
     * await queryInterface.bulkInsert('People', [{
     *   name: 'John Doe',
     *   isBetaMember: false
     * }], {});
    */
    return queryInterface.bulkInsert('<%= database.properties.name %>', [
      {
        name: <%= database.properties.name %>1,
        createdAt: new Date(),
        updatedAt: new Date()
      },
      {
        name: <%= database.properties.name %>2,
        createdAt: new Date(),
        updatedAt: new Date()
      },
      {
        name: <%= database.properties.name %>3,
        createdAt: new Date(),
        updatedAt: new Date()
      }
    ], {});
  },

  async down (queryInterface, Sequelize) {
    /**
     * Add commands to revert seed here.
     *
     * Example:
     * await queryInterface.bulkDelete('People', null, {});
     */
    return queryInterface.bulkDelete('<%= database.properties.name %>', null, {});
  }
};
