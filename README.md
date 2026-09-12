# -- 全局占位符：将 {SITE_URL} 替换为正式站点地址 -->（SpringBoot + Vue）— 完整源码 + 数据库脚本 + 运行说明
# 船运物流管理系统--论文
**关键词**：-- 全局占位符：将 {SITE_URL} 替换为正式站点地址 -->、SpringBoot、Vue、Java、管理系统、源码、数据库脚本、课程设计、毕业设计、毕设、项目实战、学习参考

本商品为「船运物流管理系统--论文」，基于 SpringBoot 技术栈开发。

## 👉 完整项目 / 演示录屏 / 更多项目：{SITE_URL}

## ✨ 功能清单

- 首页：展示系统的整体概况和重要信息。
- 网站介绍：介绍系统的功能和特点。
- 公告：查看系统发布的公告信息。
- 联系我们：提供联系方式。
- 新闻信息：浏览最新的行业新闻和相关资讯。
- 个人中心：管理个人信息和账户。
- 个人中心：管理个人信息和账户。
- 公告管理：发布和管理系统的公告信息。
- 新闻信息管理：发布和管理行业新闻和相关资讯。
- 货运单管理：管理货物的运输订单。
- 物流记录管理：记录和管理物流过程中的相关信息。
- 个人中心：管理个人信息和账户。
- 管理员管理：管理系统管理员的信息。
- 基础数据管理：管理系统的基础数据。
- 公告管理：发布和管理系统的公告信息。
- 新闻信息管理：发布和管理行业新闻和相关资讯。
- 单页数据管理：管理网站的单页内容。
- 货运单管理：管理货物的运输订单。
- 物流记录管理：记录和管理物流过程中的相关信息。
- 用户管理：管理系统中的用户信息。
- 员工管理：管理系统中的员工信息。
- 轮播图信息：管理网站首页的轮播图信息。

## 🛠 技术栈

- spring-boot-starter-parent: 2.2.2.RELEASE
- java.version: 1.8
- org.springframework.boot:spring-boot-starter-web
- mybatis-spring-boot-starter: 2.1.1
- org.springframework.boot:spring-boot-starter-jdbc
- org.springframework.boot:spring-boot-starter-thymeleaf
- org.springframework.boot:spring-boot-devtools
- mysql:mysql-connector-java
- shiro-spring: 1.3.2
- mybatis-plus: 2.3
- mybatisplus-spring-boot-starter: 1.0.5
- protobuf-java: 3.10.0
- commons-lang3: 3.0
- validation-api: 2.0.1.Final
- commons-io: 2.5
- hutool-all: 4.0.12
- fastjson: ${fastjson.version}

## 📁 目录结构

```
chuan-yun-wu-liu-guan-li-xi-tong-springboot/
├── db/
│   └── db.sql
├── docs/
│   ├── DESENSITIZE.md
│   └── REVIEW.md
├── src/
│   └── main/
├── 运行截图/
│   ├── 1.png
│   ├── 10.png
│   ├── 12.png
│   ├── 13.png
│   ├── 2.png
│   ├── 3.png
│   ├── 4.png
│   ├── 5.png
│   ├── 6.png
│   ├── 7.png
│   ├── 8.png
│   └── 9.png
├── pom.xml
└── 运行必读.txt
```

## 🚀 快速开始

### 环境要求
- JDK 1.8+（以 `pom.xml` 为准）
- Maven 3.x
- MySQL 5.7+ / 8.x

### 步骤
1. 克隆本仓库
2. 用 IDE 打开项目根目录（含 `pom.xml` / `package.json`）
3. 导入 `db/` 或根目录下的 `*.sql` 到 MySQL
4. 修改 `src/main/resources/application.yml`（或 `.properties`）中的数据库账号密码
5. 启动主启动类（`*Application.java`）或执行 `mvn spring-boot:run`
6. 浏览器访问 `http://localhost:8080`

### 端口
- `8080`

### 账号
- http://localhost:8080/chuanyunwuliu/admin/dist/index.html
- 管理员				账户:admin 		密码：admin
- 用户				账户:a1 		密码：123456
- 用户				账户:a2 		密码：123456
- 用户				账户:a3 		密码：123456
- 员工				账户:a1 		密码：123456
- 员工				账户:a2 		密码：123456
- 员工				账户:a3 		密码：123456
- username: root	    数据库用户名 root
- password: 123456	用户密码    123456

## 📸 截图

![运行截图](运行截图/1.png)
![运行截图](运行截图/10.png)
![运行截图](运行截图/12.png)
![运行截图](运行截图/13.png)
![运行截图](运行截图/2.png)
![运行截图](运行截图/3.png)
![运行截图](运行截图/4.png)
![运行截图](运行截图/5.png)
![运行截图](运行截图/6.png)
![运行截图](运行截图/7.png)
![运行截图](运行截图/8.png)
![运行截图](运行截图/9.png)

## ❓ 常见问题

**跑不起来？**
- 确认 JDK / Maven / MySQL 版本与运行必读一致；先能编译通过再启动。

**端口占用？**
- 修改 `server.port`，或关闭占用 8080 的进程。

**数据库连接失败？**
- 检查库名是否已创建、账号密码、时区与 `allowPublicKeyRetrieval` 等 JDBC 参数。

## 📚 更多开源项目

完整清单见仓库内 [`PROJECTS.md`](./PROJECTS.md)。

## 免责声明与许可

- 本仓库仅供学习交流，不包含商业授权。
- 源码来源于教学/毕设实践整理，使用风险自负。
- 转载请注明出处；请勿用于非法用途。
- 详见 [`LICENSE`](./LICENSE)。

---

**更多完整项目 → {SITE_URL}**