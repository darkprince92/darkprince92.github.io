# Agent Guidelines for al-folio

A simple, clean, and responsive Jekyll theme for academics.

## Quick Links by Role

- **Are you a coding agent?** → Read [`.github/copilot-instructions.md`](.github/copilot-instructions.md) first (tech stack, build, CI/CD, common pitfalls & solutions)
- **Customizing the site?** → See [`.github/agents/customize.agent.md`](.github/agents/customize.agent.md)
- **Writing documentation?** → See [`.github/agents/docs.agent.md`](.github/agents/docs.agent.md)
- **Need setup/deployment help?** → [site/INSTALL.md](site/INSTALL.md)
- **Troubleshooting & FAQ?** → [site/TROUBLESHOOTING.md](site/TROUBLESHOOTING.md)
- **Customization & theming?** → [site/CUSTOMIZE.md](site/CUSTOMIZE.md)
- **Quick 5-min start?** → [site/QUICKSTART.md](site/QUICKSTART.md)

## Repository Layout

```
root/
├── _profile/       ← source of truth for all profile/CV data
├── site/           ← Jekyll GitHub Pages site (al-folio)
├── resume/         ← LaTeX resume builder
└── .github/        ← CI/CD workflows
```

## Essential Commands

### Local Development (Docker)

Run from the `site/` directory:

```bash
cd site

# Initial setup & start dev server
docker compose pull && docker compose up
# Site runs at http://localhost:8080

# Rebuild after changing dependencies or Dockerfile
docker compose up --build

# Stop containers and free port 8080
docker compose down
```

### Pre-Commit Checklist

Before every commit, you **must** run these steps:

1.  **Format Code:**
    ```bash
    # (First time only, from repo root)
    npm install --save-dev prettier @shopify/prettier-plugin-liquid
    # Format all files
    npx prettier . --write
    ```
2.  **Build Locally & Verify:**

    ```bash
    cd site
    docker compose up --build

    # Verify by visiting http://localhost:8080.
    # Check navigation, pages, images, and dark mode.
    ```

## Critical Configuration

When modifying `site/_config.yml`, these **must be updated together**:

- **Personal site:** `url: https://username.github.io` + `baseurl:` (empty)
- **Project site:** `url: https://username.github.io` + `baseurl: /repo-name/`
- **YAML errors:** Quote strings with special characters: `title: "My: Cool Site"`

## Development Workflow

- **Git & Commits:** For commit message format and Git practices, see [.github/GIT_WORKFLOW.md](.github/GIT_WORKFLOW.md).
- **Code-Specific Instructions:** Consult the relevant instruction file for your code type.

| File Type                                           | Instruction File                                                                                |
| --------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| Markdown content (`site/_posts/`, `site/_pages/`)   | [markdown-content.instructions.md](.github/instructions/markdown-content.instructions.md)       |
| YAML config (`site/_config.yml`, `site/_data/`)     | [yaml-configuration.instructions.md](.github/instructions/yaml-configuration.instructions.md)   |
| BibTeX (`site/_bibliography/`)                      | [bibtex-bibliography.instructions.md](.github/instructions/bibtex-bibliography.instructions.md) |
| Liquid templates (`site/_includes/`, `site/_layouts/`) | [liquid-templates.instructions.md](.github/instructions/liquid-templates.instructions.md)    |
| JavaScript (`site/_scripts/`)                       | [javascript-scripts.instructions.md](.github/instructions/javascript-scripts.instructions.md)   |

## Common Issues

For troubleshooting, see:

- [Common Pitfalls & Workarounds](.github/copilot-instructions.md#common-pitfalls--workarounds) in copilot-instructions.md
- [site/TROUBLESHOOTING.md](site/TROUBLESHOOTING.md) for detailed solutions
- [GitHub Issues](https://github.com/alshedivat/al-folio/issues) to search for your specific problem.
