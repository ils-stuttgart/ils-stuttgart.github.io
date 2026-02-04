# ILS Doctoral Seminar Website (GitHub Pages + Jekyll)

This repository contains a small **Jekyll** website deployed via **GitHub Pages**.

⚠️ **Note:** This is **not** the official ILS institute website.  
At the moment, it is mainly used to publish information and materials for the **ILS doctoral seminar**, e.g. the `seminar-2025/` subpage.

---

## 🌍 Live Website

- GitHub Pages base: https://ils-stuttgart.github.io/
- Seminar page example: https://ils-stuttgart.github.io/seminar-2025/

---

## 🧱 Repository Structure

Important directories/files:

- `seminar-2025/`  
  Main pages for the doctoral seminar 2025 (schedule, seminar information, etc.)

- `_abstracts/`  
  Seminar abstract files, separated by year:
  - `_abstracts/2025/`
  - `_abstracts/2026/`
  - ...

- `_layouts/`  
  HTML templates (Jekyll layouts)

- `_includes/`  
  Reusable snippets used from layouts (header/footer etc.)

- `_sass/`  
  Styles (Sass/SCSS)

- `assets/`  
  Static assets (images, PDFs, etc.)

- `_config.yml`  
  Jekyll configuration

- `Gemfile`  
  Dependencies for local build

---

## ✍️ Editing Seminar Pages

Most pages are Markdown and start with **front matter**, e.g.:

```yaml
---
layout: page
title: "Doctoral Seminar 2025"
---
````

Then regular Markdown content follows.

---

## 📝 Adding / Updating Abstracts

Abstracts are stored by year:

* `_abstracts/2025/<your-abstract>.md`
* `_abstracts/2026/<your-abstract>.md`

Each abstract file contains a header in the following format:

```yaml
---
title: "Approach for a holistic and quantified Risk Assessment of Actuator Failures in X-by-Wire Vehicles"
layout: page
author: "Oliver Markus"
year: 2025
---
```

### Why do we include `year:`?

Jekyll collections (`site.abstracts`) are not automatically filtered by folder name.
Without explicit metadata, an abstracts list page would show abstracts from **all years**.

Therefore, we explicitly tag each abstract with `year: 2025`, `year: 2026`, etc.

### Abstract list pages

Abstract overview pages should filter abstracts like this:

```liquid
{% assign abstracts_2025 = site.abstracts | where: "year", 2025 | sort: "title" %}
{% for abstract in abstracts_2025 %}
  ...
{% endfor %}
```

---

## ➕ Creating a New Seminar Year (Example: seminar-2026)

Typical steps:

1. Copy and adapt seminar pages

    * Duplicate `seminar-2025/` → `seminar-2026/`
    * Adjust titles, dates, schedule, and links

2. Add the new abstract folder

    * Create `_abstracts/2026/`
    * Add new abstract Markdown files
    * Use `year: 2026` in the abstract front matter

3. Link the new seminar year

    * Add a link on the landing page (`index.markdown`)
    * change _config.yml to show the new seminar year

> Keeping older seminar years online is encouraged (stable URLs + archive).

---

## 🚀 Deployment

Deployment is automatic via GitHub Pages:

* push to the default branch (`main`)
* GitHub builds the Jekyll site using Jekyll
* updates appear on [https://ils-stuttgart.github.io/](https://ils-stuttgart.github.io/)

---

## 🧪 Running Locally

Recommended if you want to preview changes before pushing.

### Requirements

* Ruby
* Bundler

### Install dependencies

```bash
bundle install
```

### Run local server

```bash
bundle exec jekyll serve
```

Then open:

* [http://localhost:4000](http://localhost:4000)

---

## 🤝 Contribution Guidelines

* Keep commits small and descriptive (e.g. “Add 2026 abstract: …”)
* Use pull requests if multiple people edit concurrently
* Do **not** publish personal/private information on this public repository

---

## License / Attribution

Content belongs to its respective authors and contributors.
Please do not reuse ILS logos/branding in ways that suggest an official institute publication.
