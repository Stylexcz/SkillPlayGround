# SkillPlayGround

Playground for developing and testing [opencode](https://opencode.ai) skills.

## Purpose

This repository hosts a single opencode skill, `skillproto`, used to generate
product wikis and support documentation for Electronic Cats hardware in
GitHub-compatible Markdown.

## Repository layout

```bash
SkillPlayGround/
├── README.md                     <- this file
└── .opencode/
    └── skills/
        └── skillproto/
            ├── SKILL.md          <- skill instructions and workflow
            ├── .markdownlint.json
            ├── References/       <- writing rules the skill must apply
            ├── Templates/        <- Markdown page templates per page type
            └── examples/         <- fictional worked example (CatsBoard)
```

### skillproto

Generates documentation from official Electronic Cats product information,
covering these page types:

| Template file                        | Page type                             |
|--------------------------------------|---------------------------------------|
| `Templates/README.md`                | Wiki index / landing page             |
| `Templates/understanding-product.md` | Understanding a product (wiki home)   |
| `Templates/getting-started.md`       | Getting started / first use           |
| `Templates/tutorial.md`              | Step-by-step tutorial                 |
| `Templates/reference.md`             | Command / API reference               |
| `Templates/hardware.md`              | Hardware features and pinout          |
| `Templates/software-firmware.md`     | Software & firmware                   |
| `Templates/feature-application.md`   | Feature or application use cases      |
| `Templates/troubleshooting.md`       | Common problems and fixes             |
| `Templates/faq.md`                   | Frequently asked questions            |
| `Templates/resources.md`             | External resources and links          |

Reference documents the skill must follow before generating:

| File                                                      | Covers                                                        |
|-----------------------------------------------------------|---------------------------------------------------------------|
| `References/wiki-structure.md`                            | Wiki architecture, navigation, naming, images, quality checks |
| `References/github_markdown_reference_electronic_cats.md` | GitHub Flavored Markdown rules                                |
| `References/style-guide_electronic_cats.md`               | Electronic Cats style and terminology                         |

The `.markdownlint.json` config keeps the generated pages compatible with
[markdownlint-cli](https://github.com/DavidAnson/markdownlint-cli):
line length and trailing punctuation are relaxed to match the house style.

`examples/` contains a fictional worked example (CatsBoard) that shows the
expected output for selected page types; the examples are for reference only
and their technical content is invented.

## Usage

1. Open the `skillproto` skill in opencode (it lives in
   `.opencode/skills/skillproto/`).
2. Provide the Electronic Cats product you want documented.
3. The skill reads the references, picks the needed templates, and outputs
   GitHub-compatible Markdown pages.
