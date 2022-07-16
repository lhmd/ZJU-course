const { Sequelize, DataTypes } = require('sequelize')

const formdata = new Sequelize('formdata', 'root', '3anfVole', {
	host: 'localhost',
	dialect: 'mariadb',
	dialectOptions: {
		charset: 'utf8mb4'
	}
})//初始化
