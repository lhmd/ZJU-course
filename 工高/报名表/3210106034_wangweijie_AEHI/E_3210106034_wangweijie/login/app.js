const Koa = require('koa');
const staticfile = require('koa-static');
const Router = require('koa-router');
const bodyParser = require('koa-body');
const fs = require('fs-extra');
const path = require('path');
const { Recruitment } = require('./db')//引入.db
const router = new Router()
const port = 3301//端口
//初始化


router.post('/submit', bodyParser(), async (ctx, next) => {
	try {
		const body = ctx.request.body
		console.log(body);
		await Recruitment.create({
			admin: body.form.admin,
			pst: body.form.pst,
		})
		ctx.body = {
			message: 'success'
		}
		await next()
	} catch (e) {
		ctx.body = {
			message: 'error'
		}
	}
})//试着写的注册提交函数，但并没有完成功能

