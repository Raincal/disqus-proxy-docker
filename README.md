# disqus-proxy-docker

> [disqus-php-api](https://github.com/fooleap/disqus-php-api) Docker 镜像

## 环境变量

| 变量名           | 默认值                                                    | 描述                                                                                 |
| ---------------- | --------------------------------------------------------- | ------------------------------------------------------------------------------------ |
| PUBLIC_KEY       |                                                           | Disqus APP 公钥，在 https://disqus.com/api/applications/ 申请注册后获得              |
| SECRET_KEY       |                                                           | Disqus APP 私钥，在 https://disqus.com/api/applications/ 申请注册后获得              |
| DISQUS_USERNAME  |                                                           | Disqus 用户名                                                                        |
| DISQUS_EMAIL     |                                                           | Disqus 注册邮箱，重要                                                                |
| DISQUS_PASSWORD  |                                                           | Disqus 密码，重要                                                                    |
| DISQUS_WEBSITE   |                                                           | 网站域名，如：'https://raincal.com'                                                  |
| DISQUS_SHORTNAME |                                                           | 网站在 Disqus 对应的 shortname                                                       |
| DISQUS_APPROVED  | true                                                      | 评论是否免审核，true 即跳过评论预审核，false 则按后台设置                            |
| DISQUS_BLACKLIST | false                                                     | 评论发表应用官方的 IP 黑名单，true 即启用，false 则跳过                              |
| GRAVATAR_CDN     | //cn.gravatar.com/avatar/                                 | Gravatar 头像 CDN                                                                    |
| GRAVATAR_DEFAULT | retro                                                     | Gravatar 默认头像，即 d 参数，可参考 https://www.gravatar.com/site/implement/images/ |
| EMOJI_PATH       | https://assets-cdn.github.com/images/icons/emoji/unicode/ | Emoji 表情 PNG 资源路径                                                              |
| SMTP_SECURE      | ssl                                                       | 安全协议                                                                             |
| SMTP_HOST        |                                                           | 邮箱服务器                                                                           |
| SMTP_PORT        | 465                                                       | 端口号                                                                               |
| SMTP_USERNAME    |                                                           | SMTP 登录的账号，即邮箱号                                                            |
| SMTP_PASSWORD    |                                                           | SMTP 登录的账号，即邮箱密码                                                          |
| SMTP_FROM        |                                                           | 发件人的邮箱地址，可以留空                                                           |
| SMTP_FROMNAME    |                                                           | 发件人的名称，可以留空                                                               |

## 部署到 [Now](https://zeit.co/now)

### 优势

- 自带 https
- 可在国内正常访问
- 免费套餐可以同时运行 3 个实例
- 支持 Docker / Node.js / Static Websites 部署

[使用文档](https://zeit.co/docs)

### Demo

浏览器访问：[DEMO PAGE](https://raincal.com/post/vscode-icon-share/)

### 教程

#### 创建 disqus-api 文件夹并进入

#### 创建 Dockerfile

```Dockerfile
FROM raincal/disqus-proxy-docker:latest
```

#### 创建 now.json

填入相关变量，@开头为私密信息，需要通过 **now secrets add** 添加

```json
{
  "alias": "raincal-blog-disqus",
  "env": {
    "PUBLIC_KEY": "@public-key",
    "SECRET_KEY": "@secret-key",
    "DISQUS_EMAIL": "@disqus-email",
    "DISQUS_PASSWORD": "@disqus-password",
    "DISQUS_USERNAME": "Raincal",
    "DISQUS_WEBSITE": "https://raincal.com",
    "DISQUS_SHORTNAME": "raincal",
    "GRAVATAR_CDN": "https://gravatar.loli.net/avatar/",
    "SMTP_HOST": "smtp.office365.com",
    "SMTP_PORT": "587",
    "SMTP_SECURE": "STARTTLS",
    "SMTP_USERNAME": "admin@raincal.com",
    "SMTP_PASSWORD": "@smtp-password",
    "SMTP_FROM": "admin@raincal.com",
    "SMTP_FROMNAME": "Raincal's Blog"
  }
}  
```

#### 部署

```bash
now
```

至此 后端 api 服务就部署好了 🎉

之后请看 [disqus-php-api](https://github.com/fooleap/disqus-php-api) 使用说明