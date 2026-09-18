---
name: skillproto
description: Generate and structure Electronic Cats product wikis and support documentation in GitHub-compatible Markdown using the company's documentation architecture, templates, and style rules.
---

# Electronic Cats Documentation

## Purpose

Generate clear, consistent documentation for Electronic Cats products from technical source material.

The output may include:

- Understanding [Product] pages
- Hardware pages
- Software & Firmware pages
- Getting Started pages
- Feature/Application pages
- Tutorials
- Reference pages
- Troubleshooting pages
- FAQ pages
- Resources pages

## Workflow

1. Analyze the available product information.
2. Identify the product and its relevant components, software, firmware, features, and tools.
3. Read the relevant documentation references.
4. Determine which wiki sections are needed.
5. Select the appropriate page template.
6. Generate the Markdown content.
7. Apply the Markdown and style rules.
8. Check the document for consistency and missing information; compare it with the matching example in `examples/`.
9. Save the final Markdown.

## References

Before generating documentation, consult:

- `References/wiki-structure.md`
- `References/github_markdown_reference_electronic_cats.md`
- `References/style-guide_electronic_cats.md`

## Templates

Select the template that matches the page type:

| Page type          | Template                                    |
|--------------------|---------------------------------------------|
| Understanding [Product] | `Templates/understanding-product.md`    |
| Getting Started    | `Templates/getting-started.md`              |
| Tutorial           | `Templates/tutorial.md`                     |
| Reference          | `Templates/reference.md`                    |
| Hardware           | `Templates/hardware.md`                     |
| Software & Firmware | `Templates/software-firmware.md`           |
| Feature/Application | `Templates/feature-application.md`         |
| Troubleshooting    | `Templates/troubleshooting.md`              |
| FAQ                | `Templates/faq.md`                          |
| Resources          | `Templates/resources.md`                    |
| Wiki index         | `Templates/README.md`                       |

Worked examples for selected page types are in `examples/`. Use them as reference output when generating.

## Core Rules

- Prefer current official Electronic Cats tools.
- Write for end users and beginners.
- Do not invent technical information.
- Keep the product overview high-level.
- Use specialized pages for detailed procedures and references.
- Keep Markdown compatible with GitHub.
