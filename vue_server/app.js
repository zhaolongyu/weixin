//app.js
//1:加载模块 express pool.js
const express = require("express");
const pool = require("./pool");
const cors = require("cors");
const bodyParser = require("body-parser");

var app = express();
app.listen(5050);
app.use(express.static("public"));

//5.跨域问题  引入
app.use(cors({
  origin:["*"],
  credentials:true
}));

// post 请求
app.use(bodyParser.urlencoded({
  extended:false
}));


//功能一:index 组件轮播图片
app.get("/imglist",(req,res)=>{
  var sql = "select * from zl_imagelist"
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    // console.log(req.session.uid)
    res.send(result); 
  })
});
//功能2:index 九宫格图片
app.get("/icons",(req,res)=>{
    var list = [
      {id:1,imgurl:"http://zzlong.applinzi.com/icon/1.png",title:"商品信息"},
      {id:2,imgurl:"http://zzlong.applinzi.com/icon/2.png",title:"搜索"},
      {id:3,imgurl:"http://zzlong.applinzi.com/icon/3.png",title:"地图"},
      {id:4,imgurl:"http://zzlong.applinzi.com/icon/4.png",title:"提前特卖"},
      {id:5,imgurl:"http://zzlong.applinzi.com/icon/5.png",title:"无"},
      {id:6,imgurl:"http://zzlong.applinzi.com/icon/6.png",title:"无"},
    ]
    res.send(list);
});

//功能3:shoplist  shoplist
app.get("/shoplist",(req,res)=>{
  var pno = req.query.pno;
  var pageSize = req.query.pageSize;
  if(!pno){pno=1}
  if(!pageSize){pageSize=7}
  var sql = " SELECT * FROM zl_imgbody LIMIT ?,?";  
  var offset = (pno-1)*pageSize;
  pageSize = parseInt(pageSize);
  pool.query(sql,[offset,pageSize],(err,result)=>{
      if(err)throw err;
      res.send({code:200,data:result});
  });
})
//功能4:shoplist  搜索功能
app.get("/search",(req,res)=>{
  //1.获取参数  key  pno pageSize
  var key = req.query.key;
  var pno = req.query.pno;
  var pageSize = req.query.pageSize;
  //2.设置默认值 1 7
  if(!pno) pno = 1;
  if(!pageSize) pageSize = 7; 
  //3.创建sql搜索商品信息
  var sql ="select * from zl_imgbody where zname LIKE ? LIMIT ?,?"
  //4.offset pageSize parseInt()
  var pageSize = parseInt(pageSize);
  var offset = (pno-1)*pageSize;
  //5.发送sql
  pool.query(sql,["%"+key+"%",offset,pageSize],(err,result)=>{
   if(err)throw err;
    //6.执行成功
    res.send({code:1,data:result});   
  })
 })  
//功能5: video  视频
app.get("/videos",(req,res)=>{
  // var uid = req.session.uid
    var list = [
      {id:1,imgUrl:"http://zzlong.applinzi.com/video/1.mp4",title:"戴尔"}
    ]
    var img = [
      {id:1,imgUrl:"http://zzlong.applinzi.com/img/weixin/video1.jpg",title:"戴尔ind"},
      {id:2,imgUrl:"http://zzlong.applinzi.com/img/weixin/video2.jpg",title:"indlond"},
      {id:3,imgUrl:"http://zzlong.applinzi.com/img/weixin/video3.jpg",title:"bindtap"}
    ]
    res.send({list,img}); 
});

//功能6:查询购物车列表
app.get("/HomeImgUrl",(req,res)=>{
  var id = req.query.id;
  var sql = "select * from zl_imgbody where id=?"
  pool.query(sql,[id],(err,result)=>{
    if(err)throw err;
      res.send(result);
  })
});

