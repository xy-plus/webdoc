# build web doc

用于构建含评论区（与 GitHub issue 关联）的 GitHun Page 的教程，文档已通过网页形式部署于：https://xy-plus.github.io/webdoc/

## 快速构建

执行以下命令：

```sh
git clone https://github.com/xy-plus/webdoc.git
cd webdoc
gitbook install
gitbook serve
```

然后访问：http://localhost:4000 即可。

> 注意：此时你看到的评论区链接的是我的 GitHub issue ，如果试图登录会跳转至本文部署的页面，而非 localhost 。

如果你需要将评论区改为关联到自己的 GitHub issue ，请阅读 **3.2 评论区** 和 **4. 部署网页** 。
