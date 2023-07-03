const koa = require('koa')
const staticfile = require('koa-static')
const Router=require('koa-router')
const bodyParser = require('koa-body')
const Sequelize = require('sequelize')
const router= new Router()
const app = new koa()
var sequelize = new Sequelize('todo','root','',{
    host:'localhost',
    dialect:'mysql',
    pool:{
        max:5,
        min:0,
        idle:30000
    }
})

var Item = sequelize.define('item', {
    id: {
        type: Sequelize.STRING(50),
        primaryKey: true
    },
    text:Sequelize.STRING(100)
    },{
    timestamps: false,
    freezeTableName:true
    });
Item.sync({force:false})

app.use(bodyParser())
//后端向前端传数据
router.get("/loadEvent",async(ctx,next)=>{
    // console.log("start load")
    try{
        ctx.body = await Item.findAll()
        await next()
    }
    catch{
        ctx.body = 'error'
        console.log('load error')
    }
})
//接收前端传来的数据
router.post("/addEvent",async(ctx,next)=>{
    try{
        const body = ctx.request.body
        // console.log(body)
        await Item.create({
            id:body.id,
            text:body.data
        })
        ctx.body = 'success'
        // console.log(ctx.body)
        await next()
    }
    catch(e){
        ctx.body = 'error'
        console.log('add error')
    }
})
router.post("/deleteOne",async(ctx,next)=>{
    try{  
        const text = ctx.request.body.text
        ctx.body=await Item.destroy({where:{text:text}})
        // console.log(ctx.body)
        await next()
    }
    catch(e){
        console.log('delete error'+e)
    }
})
router.post("/deleteAll",async(ctx,next)=>{
    try{  
        const text = ctx.request.body.text
        ctx.body=await Item.destroy({
            truncate: true
        })
        
        // console.log(ctx.body)
        await next()
    }
    catch(e){
        console.log('delete error'+e)
    }
})
router.post("/searchEvent",async(ctx,next)=>{
    try{
        const body = ctx.request.body;
        // console.log(body)
        ctx.body = await Item.findAll({
            where:{
                text:{
                    [Sequelize.Op.like]:'%'+body.key+'%'
                }
            }
        })
        // console.log(ctx.body)
        await next()
    }
    catch(e){
        ctx.body = 'error'
        console.log('search error')
    }
})

app.use(router.routes())
app.use(staticfile('public'))
app.listen(3400)
// console.log('success')