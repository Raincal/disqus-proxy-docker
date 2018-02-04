# disqus-proxy-docker

> 部署 [disqus-php-api](https://github.com/fooleap/disqus-php-api) 到 Now.sh

## 通过 Now.sh 部署的优势

* 自带 https
* 可在国内正常访问
* 免费套餐可以同时运行 3 个实例
* 支持 Docker / Node.js / Static Websites 部署

## Demo

浏览器访问：[DEMO PAGE](https://raincal.com/2017/10/12/vscode-icon-share/)

![QR](./qrcode.png)

手机端可扫描二维码访问

## 注册 now 账号

* 访问 https://zeit.co/login
* 输入邮箱
* 前往邮箱 点击链接完成注册

> Note: 登录也是同样的操作

## 下载 now 命令行工具

* ### 通过 npm 安装

```bash
npm install -g now
```

* ### 到官网下载

https://zeit.co/download#command-line

相关命令可以通过 **now help** 查看

## 命令行登录

```bash
now login
```

## 配置 disqus 账号

> Note: 免费套餐的项目 源码都是公开的 可以通过 now secrets add 添加私密信息

```bash
now secrets add disqus-email "你的disqus邮箱"
now secrets add disqus-password "你的disqus密码"
```

## 使用教程

* ### clone 本项目到本地

```bash
git clone https://github.com/Raincal/disqus-proxy-docker.git
cd disqus-proxy-docker
git submodule init
git submodule update
```

* ### 修改相关参数

打开 Dockerfile 对照着 disqus/api/config.php 文件里的说明 修改相关配置

## 部署

在项目根目录输入 **now** 开始部署

```
now
```

部署时会得到一个链接 默认会保存到剪切板

部署成功后可以通过

```bash
now alias disqus-proxy-docker-gopxvkzmwu.now.sh 自定义子域
```

修改默认的 URL 链接

或者修改 now.json 文件的 **alias** 然后在命令行输入

```bash
now alias
```

完成自定义子域

> Note: now 部署的应用 一段时间不用后会被 Frozen (冻结) 可以通过 now scale 修改实例的范围

```bash
now scale 你的应用链接 1
```

至此 后端 api 服务就部署好了 🎉
