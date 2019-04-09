// pages/search/search.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    list:[]
  },
  searchProduct:function(e){
    //1.获取用户商品名称
    var name = e.detail.value.name
    //  console.log(name)
    //2.发送ajax请求   search
    wx.request({
      url: 'https://zzlong.applinzi.com/search',
      data:{key:name},
      //3.接收搜索返回数据
      success:(req)=>{
    //  console.log(req.data.data)
         //4.将数据显示在组件中
      this.setData({
        list: req.data.data
      })
      }    
    })
  },
  handlejump:function(){
    wx.navigateTo({ url:'/pages/index/index'})
  },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {

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