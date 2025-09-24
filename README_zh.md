# docs

在 GitHub 项目中建立一个可供 **线上访问的文档站点**，并且文档内容是 `.rst` 格式（reStructuredText），使用 **Sphinx + GitHub Pages**。Sphinx 是 Python 官方推荐的文档生成工具，非常适合 `.rst` 文档。

---

## ✅ 总体流程

1. 安装 Sphinx 工具
2. 初始化文档项目
3. 编写 `.rst` 文档
4. 构建 HTML 页面
5. 发布到 GitHub Pages（docs 目录）
6. 启用 GitHub Pages 功能

---

## 🔧 详细步骤

### 1. 安装 Sphinx（本地）

如果你还没安装 Sphinx，请先安装：

```bash
pip install sphinx
```

---

### 2. 初始化文档目录

进入你的项目目录，在终端中运行：

```bash
sphinx-quickstart docs
```

它会创建一个 `docs/` 目录，并生成基础配置。根据提示选择：

* Separate source and build directories? `yes`
* Project name: `你的项目名`
* Author name(s): `你的名字`
* Project release: `0.1`（版本号）

---

### 3. 编辑 `index.rst` 和其它 `.rst` 文档

在 `docs/source/index.rst` 中是你的文档首页：

```rst
Welcome to MyProject's documentation!
=====================================

Contents:

.. toctree::
   :maxdepth: 2
   :caption: Contents:

   intro
   usage
```

然后在 `docs/source/` 目录下新建 `intro.rst`, `usage.rst` 等文件。

---

### 4. 生成 HTML 页面

在项目根目录运行（或进入 `docs/`）：

```bash
cd docs
make html
```

生成的 HTML 文件会放在：`docs/build/html/` 下。

---

### 5. 发布到 GitHub Pages

有两种方式推荐：

---

#### ✅ **方法 A：直接将 HTML 放在 docs 目录并推送**

这是最简单的方式：

1. 将 `docs/build/html/*` 下的内容复制到项目根目录的 `docs/` 文件夹下：

   ```bash
   cp -r build/html/* ../docs/
   ```

2. 提交并推送到 GitHub：

   ```bash
   git add docs
   git commit -m "Add Sphinx documentation"
   git push
   ```

3. 在 GitHub 仓库设置中启用 GitHub Pages：

   * 打开你的仓库 → Settings → Pages
   * Source 选择：`Deploy from a branch`
   * 分支选择：`main`（或你的默认分支），目录选择：`/docs`

4. 保存后你会看到一个公开网址，比如：

   ```
   https://your-username.github.io/your-repo/
   ```

---

#### 🔁 方法 B：使用 GitHub Actions 自动构建部署（进阶）

如果你不想手动复制/推送 HTML，可以使用 GitHub Actions 自动部署到 GitHub Pages。适合复杂项目或持续集成。可根据需要我可以帮你写 `action.yml`。

---

## 🧪 示例仓库

你可以参考这个例子仓库：

📘 [https://github.com/readthedocs/sphinx-notes](https://github.com/readthedocs/sphinx-notes)

---

## ✅ 最终结构（简化）

```
your-project/
├── docs/
│   ├── conf.py
│   ├── index.rst
│   └── ...
├── README.md
├── yourcode/
└── .git
```

或者如果是 HTML 发布用：

```
your-project/
├── docs/              ← 发布到 GitHub Pages 的目录（包含 HTML）
│   ├── index.html
│   └── ...
├── source/            ← 可选，Sphinx 原始 rst 源码
│   ├── conf.py
│   └── *.rst
```

---

需要我帮你生成一个示例结构或自动化脚本吗？
