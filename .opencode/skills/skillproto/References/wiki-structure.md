# Electronic Cats Wiki Structure

## 1. Purpose

This document defines the architecture of an Electronic Cats product wiki.

It complements:

- the page templates;
- the Markdown reference;
- the style guide.

Its purpose is to keep every product wiki consistent: same page set, same hierarchy, and the same links between pages.

---

## 2. Wiki Architecture

Each product has a wiki made of an index page and the content pages:

1. **Wiki home / index:** `README.md` at the wiki root, the entry point of the wiki. It is generated from `Templates/wiki-index.md` and maps every page with a Page Map table.
2. **Entry page:** `Understanding [Product]`, a high-level map of the product and a starting point to navigate.
3. **Specialized pages:** detailed documentation for a concrete topic.

The page set is defined by the templates in `Templates/`:

| Page                       | Purpose                                            |
|----------------------------|----------------------------------------------------|
| `wiki-index.md`            | High-level map of the wiki and navigation (home)   |
| `understanding-product.md` | High-level map of the product and navigation       |
| `hardware.md`              | Detailed hardware documentation                    |
| `software-firmware.md`     | Detailed software and firmware documentation       |
| `getting-started.md`       | Initial setup and first successful result          |
| `feature-application.md`   | Detailed documentation for one feature/application |
| `tutorial.md`              | Procedure for one concrete task                    |
| `reference.md`             | Lookup/reference information                       |
| `troubleshooting.md`       | Resolution of a concrete problem                   |
| `faq.md`                   | Concise answers to frequent questions              |
| `resources.md`             | Directly relevant external/internal resources      |

---

## 3. Page Hierarchy

- The entry page answers: *What is this product, what does it contain, what can it do, and where do I find the detailed documentation?*
- Specialized pages answer the detailed questions.
- Do not duplicate complete information between the entry page and the specialized pages.
- The entry page only summarizes a topic when it links to the corresponding specialized page.

---

## 4. Navigation Model

- `Understanding [Product]` is the home for the wiki and the entry point for the user.
- Every page links back to the other relevant pages through its `Related Documentation` section.
- Use relative links between wiki pages so the wiki works when rendered locally and on GitHub.
- Every specialized page must be reachable from `Understanding [Product]`.

---

## 5. File and Section Naming

- Name wiki page files in kebab-case matching the template names, for example `understanding-product.md`, `getting-started.md`, `troubleshooting.md`.
- Use `feature-<topic>.md` in kebab-case for feature/application pages when a product has several, for example `feature-packet-protocol.md` or `feature-wifi.md`.
- `README.md` is the fixed name of the wiki home and the only page at the wiki root; every other page lives next to it.
- Use exactly one `#` (H1) title per page, matching the template heading.
- Keep heading levels consistent: `##` for sections, `###` for subsections.
- Use Markdown headings for sections, not horizontal rules, to separate content.

---

## 6. Sidebar

- Every wiki includes a `_Sidebar.md` file at the wiki root, generated from `Templates/sidebar.md`.
- GitHub Wiki renders it as the navigation column; when the wiki lives in a repository folder, the `[[page-name|Label]]` lines show literally. It is included in every wiki regardless.
- Link every wiki page exactly once with the GitHub-Wiki-only syntax `[[page-name|Label]]`, where `page-name` is the page filename without the `.md` extension.
- Group the links in sections that mirror the Page Map of the wiki home.
- The sidebar is a navigation column, not a content page: it has no `Related Documentation` section and is excluded from the structured checks.

---

## 7. Links and Cross-References

- Prefer relative links between wiki pages: `hardware.md` instead of absolute URLs.
- Link to first-party resources (the product's own repository, firmware, or other documentation files in the same repo) inline when relevant, using relative paths such as `../../firmware/README.md`.
- Restrict third-party external links to the `Resources` page, or use them only when no internal or first-party page exists.
- Add a `Related Documentation` section at the end of every page.
- Do not link to pages that do not exist in the wiki.

---

## 8. Images

- Keep images inside an `images/` folder, next to the wiki page that uses them.
- Name images in kebab-case following the pattern `[product]-<topic>.png`, for example `images/minino-board-anatomy.png`.
- Reference images with relative paths: `images/[product]-<topic>.png`.
- Always include a descriptive alt text.

---

## 9. Page Checklist

Before a page is complete, verify that:

- [ ] The page uses the correct template.
- [ ] The page has exactly one `#` (H1) title.
- [ ] The page links to the relevant specialized pages.
- [ ] The page does not duplicate content already present in another page.
- [ ] The page follows the Markdown reference and the style guide.
- [ ] The page passes markdownlint.

---

## 10. Related Documentation

- [Templates](../Templates/README.md)
- [Markdown Reference](github_markdown_reference_electronic_cats.md)
- [Style Guide](style-guide_electronic_cats.md)
