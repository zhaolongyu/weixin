//index.js
//获取应用实例
const app = getApp()

Page({
  /**
   * 页面的初始数据
   */
  data: {
    list:[],
    navlist:[]
  },
  loadMore:function(){
    //1.创建ajax请求 imagelist2
    //2.保存数据list
    wx.request({
      url: "https://zzlong.applinzi.com/imglist",
      success:(res)=>{
        // console.log(res.data);
        this.setData({
          list:res.data
        })
       //  console.log(this.data.list)
      }
    })
  },
  loadMoreNav: function () {
    //1.创建ajax请求 imagelist3
    //2.保存数据masg
    wx.request({
      url: "https://zzlong.applinzi.com/icons",
      success: (res) => {
        this.setData({
          navlist: res.data
        })
        // console.log(res.data)
      }
    })
  },
  hangleJump:function(e){
    // console.log(e.target.dataset.idx)
     var id = e.target.dataset.idx
     if(id == 1)
     wx.navigateTo({url:"/pages/shoplist/shoplist"})
     else if(id == 2)
     wx.navigateTo({url:'/pages/search/search'})
     else if(id == 3)
       wx.navigateTo({ url: '/pages/logs/logs'})
     else if(id == 4)
       wx.navigateTo({ url: '/pages/login/login'})
  },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    this.loadMore();
    this.loadMoreNav();
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
  