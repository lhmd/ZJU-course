const koa = require('koa')
const staticfile = require('koa-static')
const Router=require('koa-router')
const bodyParser = require('koa-body')
const Sequelize = require('sequelize')
const router= new Router()
const app = new koa()
var sequelize = new Sequelize('todo','root','qwe987',{
    host:'localhost',
    dialect:'mysql',
    pool:{
        max:5,
        min:0,
        idle:30000
    }
})
var Pet = sequelize.define('pet', {
    id: {
        type: Sequelize.STRING(50),
        primaryKey: true
    },
    text:Sequelize.STRING(100)
    },{
    timestamps: false,
    freezeTableName:true
    });
Pet.sync({force:false})

app.use(bodyParser())
router.get("/loadEvent",async(ctx,next)=>{
    // console.log("start load")
    try{
        ctx.body = await Pet.findAll()
        await next()
    }
    catch{
        ctx.body = 'error'
        console.log('load error')
    }
})
router.post("/addEvent",async(ctx,next)=>{
    try{
        const body = ctx.request.body
        // console.log(body)
        await Pet.create({
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
        ctx.body=await Pet.destroy({where:{text:text}})
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
        ctx.body=await Pet.destroy({
            truncate: true
        })
        
        // console.log(ctx.body)
        await next()
    }
    catch(e){
        console.log('delete error'+e)
    }
})
app.use(router.routes())
app.use(staticfile('public'))
app.listen(3400)
// console.log('success')
