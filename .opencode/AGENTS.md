# Agent Guidelines for Freelancing in Finland

## Build/Test Commands
- `npm run build` - Generate TOC and contributors list
- `npm run table-of-contents` - Update TOC in README.md
- `npm run contributors-list` - Regenerate contributors list
- `npm run export:pdf` - Export guide with cover image and metadata
- `npm run export:epub` - Export guide with metadata only

## Code Style & Conventions
- **Content**: Markdown documentation targeting software developers in Finland
- **Primary file**: All content lives in `README.md`
- **Line length**: No hard limit
- **Formatting**: Use `markdown-toc` for TOC with asterisk bullets (`--bullets '*'`)
- **Contributors**: Managed via `all-contributors-cli`

## Content Guidelines
- **Target audience**: Software developers who have been living in Finland for 3+ months and are planning to freelance and start a limited liability company
- **Tone**: Direct, factual, and backed by official sources ("Source of truth" links)
- **Structure**: Preparation → Foundation → Operation
- **Strong opinions**: Respect existing positions (e.g., tax optimization, limited liability company rather than a sole trader)
- Ensure changes align with the target audience and maintain the integrity of the guide

## PR Requirements (from template)
- Respect the target audience scope
- Read the full guide to ensure integrity
- Honor existing strong opinions
