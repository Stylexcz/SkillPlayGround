# Electronic Cats Wiki Templates

These templates define the individual page types used inside an Electronic Cats product wiki.

The important distinction is between:

1. **Understanding [Product] / Product Overview** — a high-level map and introduction to the product.
2. **Specialized pages** — detailed documentation for a specific topic such as hardware, firmware, a feature, a tutorial, or a reference.

`Understanding [Product]` may mention hardware, software, features, CLI/TUI, and compatibility, but only at a summary level. The detailed content belongs in the corresponding specialized page.

## Templates

| Template                   | Purpose                                            |
|----------------------------|----------------------------------------------------|
| `understanding-product.md` | General product context and navigation             |
| `hardware.md`              | Detailed hardware documentation                    |
| `software-firmware.md`     | Detailed software and firmware documentation       |
| `getting-started.md`       | Initial setup and first successful result          |
| `feature-application.md`   | Detailed documentation for one feature/application |
| `tutorial.md`              | Procedure for one concrete task                    |
| `reference.md`             | Lookup/reference information                       |
| `troubleshooting.md`       | Resolution of a concrete problem                   |
| `faq.md`                   | Concise answers to frequent questions              |
| `resources.md`             | Directly relevant external/internal resources      |

## General rule

Do not duplicate complete information between the product overview and specialized pages.

The overview should answer:

> What is this product, what does it contain, what can it do, and where do I find the detailed documentation?

Specialized pages should answer the detailed questions.
