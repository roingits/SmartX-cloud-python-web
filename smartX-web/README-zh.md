# web项目介绍
null

## 技术栈
- 1:
- 2:
- 3:

## 环境需求
node git

## 目录结构
```text
|-smartX-web
   |-build  //webpack基本配置
   |-config //dev,pro 环境配置文件
   |-mock   //加载mock数据文件 
   |-src    //资源文件
   |     |-api //对接后台接口
   |     |-assets //资源文件
   |         |-images  //图片资源
   |         |-js      //外部js资源
   |         |-svg     //外部svg资源
   |     |-components //通用组建
   |     |-icon //项目icon
   |     |-router //路由控制 左边菜单控制
   |     |-store //业务处理 store作用域
   |     |-style //外部css资源
   |     |-utils //工具js资源
   |     |-views //页面资源
   |          |-dashboard //首页页面
   |          |-face //人脸识别相关页面
   |          |-system //系统设置相关页面
   |
   |-static //静态文件(勿做操作)
```


## 快速入门
- 1:
- 2:













## Extra

如果你想要根据用户角色来动态生成侧边栏和 router，你可以使用该分支[permission-control](https://github.com/PanJiaChen/vue-admin-template/tree/permission-control)

本项目基于`webpack4`开发，若还想使用`webpack3`开发，请使用该分支[webpack3](https://github.com/PanJiaChen/vue-admin-template/tree/webpack3)

如果你想使用基于 vue + typescript 的管理后台, 可以看看这个项目: [vue-typescript-admin-template](https://github.com/Armour/vue-typescript-admin-template) (鸣谢: [@Armour](https://github.com/Armour))

## 相关项目


## Build Setup

```bash
# Clone project
git clone https://github.com/PanJiaChen/vue-admin-template.git

# Install dependencies
npm install

# 建议不要用cnpm  安装有各种诡异的bug 可以通过如下操作解决npm速度慢的问题
npm install --registry=https://registry.npm.taobao.org

# Serve with hot reload at localhost:9528
npm run dev

# Build for production with minification
npm run build

# Build for production and view the bundle analyzer report
npm run build --report
```

## Demo

![demo](https://github.com/PanJiaChen/PanJiaChen.github.io/blob/master/images/demo.gif)

### Element-Ui 使用 cdn 教程

首先找到 `index.html` ([根目录下](https://github.com/PanJiaChen/vue-admin-template/blob/element-ui-cdn/index.html))

引入 Element 的 css 和 js ，并且引入 vue 。因为 Element-Ui 是依赖 vue 的，所以必须在它之前引入 vue 。

之后找到 [webpack.base.conf.js](https://github.com/PanJiaChen/vue-admin-template/blob/element-ui-cdn/build/webpack.base.conf.js) 加入 `externals` 让 webpack 不打包 vue 和 element

