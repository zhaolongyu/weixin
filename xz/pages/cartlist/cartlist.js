// pages/cartlist/cartlist.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
   list:[],
   datalist:[],
   hidden:'',
  hiddentext:"body-data1"
  },
  cartlist: function (options){
    // console.log(this.data.list)
    var id = this.data.list
    wx.request({
      url:"https://zzlong.applinzi.com/HomeImgUrl?id="+id,
      success:(res)=>{
        this.setData({
          datalist: res.data[0]
        })
      }
    })
   },
  handlejump:function(){
    this.setData({
      hidden:"body-data",
      hiddentext:'body-datashow'
    })
     setTimeout(function(){
       wx.navigateTo({ url: '/pages/index/index'})
     },800)
  },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
     //保存 传过的id 的值
      this.setData({
        list:options.id
      })
     this.cartlist()
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