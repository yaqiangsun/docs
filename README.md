# docs

The steps for setting up a **Sphinx documentation site using `.rst` files** and publishing it via **GitHub Pages**:

---

# 📚 Set Up Sphinx Docs with `.rst` and Host on GitHub Pages

This guide walks you through creating and publishing Sphinx-based documentation in `.rst` format directly on GitHub Pages.

---

## ✅ Overview

1. Install Sphinx
2. Initialize the documentation project
3. Write `.rst` files
4. Build the HTML output
5. Deploy using GitHub Pages
6. Enable GitHub Pages in repository settings

---

## 1. Install Sphinx

Make sure you have Python and pip installed.

```bash
pip install sphinx
```

---

## 2. Initialize the Documentation

From the root of your project:

```bash
sphinx-quickstart docs
```

During the setup prompts:

* Separate source and build directories: `yes`
* Project name: `YourProject`
* Author name: `Your Name`
* Project release: `0.1`

This creates a `docs/` folder with initial config and structure.

---

## 3. Write `.rst` Files

Your `docs/source/index.rst` is the landing page:

```rst
Welcome to YourProject's documentation!
=======================================

Contents:

.. toctree::
   :maxdepth: 2
   :caption: Contents:

   intro
   usage
```

Create other files like `intro.rst` and `usage.rst` in the same folder (`docs/source/`).

---

## 4. Build HTML Output

From within the `docs/` folder, run:

```bash
make html
```

This generates HTML files under `docs/build/html/`.

---

## 5. Deploy to GitHub Pages

### 🔹 Option A: Use `/docs` folder for GitHub Pages (Simple)

1. Copy the built HTML files to the top-level `docs/` folder (for GitHub Pages to pick them up):

   ```bash
   cp -r build/html/* ../docs/
   ```

2. Commit and push to GitHub:

   ```bash
   git add docs
   git commit -m "Add Sphinx documentation"
   git push
   ```

3. Enable GitHub Pages:

   * Go to your repository on GitHub
   * Open **Settings → Pages**
   * Source: `Deploy from a branch`
   * Branch: `main` (or default branch)
   * Folder: `/docs`

4. After saving, you'll get a public URL like:

   ```
   https://your-username.github.io/your-repo/
   ```

---

### 🔁 Option B: Use GitHub Actions to Auto Deploy (Advanced)

Instead of manually copying HTML files, set up a GitHub Actions workflow to build and deploy automatically. Let me know if you'd like a template for this.

---

## 🔧 Project Structure (Simplified)

After setup, your project may look like:

```
your-project/
├── docs/
│   ├── conf.py
│   ├── index.rst
│   ├── _build/
│   └── (other .rst files)
├── your_code/
├── README.md
└── .git/
```

If using GitHub Pages directly from `/docs`:

```
your-project/
├── docs/
│   ├── index.html
│   ├── *.html
│   └── (copied HTML files from build)
```

---

## 🧪 Example Repositories

* [Sphinx Notes by ReadTheDocs](https://github.com/readthedocs/sphinx-notes)

---

Let me know if you’d like a ready-made starter repo or GitHub Actions config!
