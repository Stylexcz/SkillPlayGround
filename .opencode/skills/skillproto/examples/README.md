# Synthetic Examples

> [!NOTE]
> These example pages are fictional. "CatsBoard" is an invented product, and all commands, values, and hardware in them are made up for demonstration only. Do not copy them into real documentation.

## Purpose

The examples show what a completed wiki page looks like when `skillproto` applies the references ([wiki-structure.md](../References/wiki-structure.md), [GitHub Markdown reference](../References/github_markdown_reference_electronic_cats.md), [style-guide](../References/style-guide_electronic_cats.md)) and the templates in `Templates/`.

## Page Map

| Example page                           | Template                             | What it demonstrates                                           |
|----------------------------------------|--------------------------------------|----------------------------------------------------------------|
| `catsboard/understanding-catsboard.md` | `Templates/understanding-product.md` | Entry page: high-level overview, features, CLI and compatibility tables, section links.                                                                                                             |
| `catsboard/getting-started.md`         |  `Templates/getting-started.md`      | First successful result: requirements, numbered steps, commands with expected output, expected result.                                                                                                                                          |
| `catsboard/troubleshooting.md` | `Templates/troubleshooting.md` | Problem resolution: symptoms, likely causes, solution steps, verification. |
| `catsboard/reference.md` | `Templates/reference.md` | Lookup reference: syntax, parameters, options, examples with `### Expected Output`, return values. |

## Differences from a Real Wiki

- A real wiki includes every template in `Templates/`. These examples ship only three pages, so `Related Documentation` links point only to pages that exist here, as required by wiki-structure §6.
- The image `images/catsboard-setup.png` is a placeholder so the image link resolves. Replace it with a real photo in actual documentation.
- Facts, versions, and tool names are invented.

## How to Use

1. Generate the page from the matching template.
2. Apply the references and the style guide.
3. Compare the result with the example of the same type before saving.
