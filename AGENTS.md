# AGENTS.md

## Git commits

Every commit message must follow Conventional Commits:

- Format: `type(scope): description`
- Types: `feat`, `fix`, `docs`, `style`, `refactor`, `perf`, `test`, `build`, `ci`, `chore`
- Scope (optional but preferred): the affected area, e.g. `skill`, `checks`, `templates`, `readme`
- Description: imperative mood, lowercase, no trailing period
- Breaking changes: add `!` after the type/scope (`feat(skill)!: ...`) or a `BREAKING CHANGE:` trailer
- Add a body only when extra context is needed

Examples:

```text
feat(skill): add structure validation script
fix(checks): match actual writer-note text
docs(readme): update template table
chore: remove Minino mirror
```

## Validating skillproto changes

The skillproto skill lives in `.opencode/skills/skillproto/`. Before
considering skill changes done, run:

```bash
bash .opencode/skills/skillproto/checks/no-template-notes.sh --self-test
bash .opencode/skills/skillproto/checks/structure.sh <path-to-a-known-good-wiki>
```

Generated pages must pass both checks (plus `checks/structure.sh` on the wiki
or page folder being generated).