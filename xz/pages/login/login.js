// pages/login/login.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    list:[],
    img:[],
    datayear:''
  },
  viewlist(){
    wx.request({
      url:"https://zzlong.applinzi.com/videos",
      success: (res)=>{
          // console.log(res.data
         this.setData({
            list:res.data.list
          })
         this.setData({
           img:res.data.img
         })
        //  console.log(this.data.list)
      }
    })
  },
  datalist(){ 
   var datalist = setInterval(()=>{
     var date = new Date();
     var now = date.getTime();
     //设置截止时间  
     var str = "2019/4/30 00:00:00";
     var endDate = new Date(str);
     var end = endDate.getTime();
     //时间差  
     var leftTime = end - now;
     //定义变量 d,h,m,s保存倒计时的时间  
     var d, h, m, s;
     if (leftTime >= 0) {
       d = Math.floor(leftTime / 1000 / 60 / 60 / 24);
       h = Math.floor(leftTime / 1000 / 60 / 60 % 24);
       m = Math.floor(leftTime / 1000 / 60 % 60);
       s = Math.floor(leftTime / 1000 % 60);
     }
        this.setData({
          datayear: `\n${d}天${h}时${m}分${s}秒`
        })
      // console.log(this.data.datayear)
    },1000)
    
   
  },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    this.viewlist()
    this.datalist() 
  },

  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function () {

  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {

  },

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function () {

  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload: function () {

  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function () {

  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {

  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {

  }
})