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

Each product has a wiki made of two kinds of pages:

1. **Entry page:** `Understanding [Product]`, a high-level map of the product and a starting point to navigate.
2. **Specialized pages:** detailed documentation for a concrete topic.

The page set is defined by the templates in `Templates/`:

| Page                       | Purpose                                            |
|----------------------------|----------------------------------------------------|
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
- Use exactly one `#` (H1) title per page, matching the template heading.
- Keep heading levels consistent: `##` for sections, `###` for subsections.
- Use Markdown headings for sections, not horizontal rules, to separate content.

---

## 6. Links and Cross-References

- Prefer relative links between wiki pages: `hardware.md` instead of absolute URLs.
- Link to external resources only in the `Resources` page or when no internal page exists.
- Add a `Related Documentation` section at the end of every page.
- Do not link to pages that do not exist in the wiki.

---

## 7. Images

- Keep images inside an `images/` folder, next to the wiki page that uses them.
- Name images in kebab-case following the pattern `[product]-<topic>.png`, for example `images/minino-board-anatomy.png`.
- Reference images with relative paths: `images/[product]-<topic>.png`.
- Always include a descriptive alt text.

---

## 8. Page Checklist

Before a page is complete, verify that:

- [ ] The page uses the correct template.
- [ ] The page has exactly one `#` (H1) title.
- [ ] The page links to the relevant specialized pages.
- [ ] The page does not duplicate content already present in another page.
- [ ] The page follows the Markdown reference and the style guide.
- [ ] The page passes markdownlint.

---

## 9. Related Documentation

- [Templates](../Templates/README.md)
- [Markdown Reference](github_markdown_reference_electronic_cats.md)
- [Style Guide](style-guide_electronic_cats.md)
