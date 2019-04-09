// pages/shoplist/shoplist.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    rows:[], 
    pno:0,   //当前页面初始值是0
  },
   loadMore:function(options){
     // 不让用户看到白的
      wx.showLoading({
        title: '正在加载',
      })


      var pno = this.data.pno + 1;
      wx.request({
        url: "https://zzlong.applinzi.com/shoplist?pno="+pno,
        success:(res)=>{
          //  console.log(res.data.data)
         //把第一页页显示出来   拼接一下
        var nrows = this.data.rows.concat(
           res.data.data
         )
          this.setData({
            rows:nrows,  //当前页内容
            pno: pno   //修改页码
          })
          setTimeout(function(){
               wx.hideLoading();
          },600)
        }
      })
      //将数据保存rows中
   },
  handlejump:function(e){
    var s= e.target.dataset.id
    wx.navigateTo({url:"/pages/cartlist/cartlist?id="+s})
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
  this.loadMore();
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

    this.loadMore();
  },
   
  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {
     this.loadMore();
  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {

  }
})