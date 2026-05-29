# Changelog

## [3.1.0] - 2026-05-29

### Added

- Payment/Merchant agreement example with reserve, chargeback, and suspension analysis
- Finder/Broker agreement example with fee tail, covered buyer, and conflict analysis
- CI workflow: markdown lint (markdownlint-cli2) and link check (lychee)
- Markdownlint configuration (`.markdownlint.jsonc`)
- Individual example links in README Usage Examples section

### Changed

- Updated `demo.png` to show full output format (Red Flags, Internal Consistency, Negotiation Priority)
- Fixed markdown formatting across all files to pass linting (blank lines around headings/lists)
- Updated CHANGELOG formatting for lint compliance

## [3.0.0] - 2026-01-26

### Added

- "Why This Exists" backstory section in README
- Multi-platform support via [Agent Skills standard](https://agentskills.io) (26+ tools)
- Full example outputs for NDA, SaaS, M&A, and balanced agreements
- Optimized skill description for Claude Code discovery

### Changed

- Complete rewrite of skill.md based on real-world contract testing
- Position-aware analysis now adjusts for power dynamics
- Market benchmark thresholds refined from actual negotiation outcomes
- Redline suggestions include fallback positions

## [2.1.0] - 2026-01-26

### Added

- Markdown output format with severity badges
- shields.io badges and GitHub topics for discoverability
- Link to examples folder in README

## [2.0.0] - 2026-01-26

### Added

- Position-aware review (customer/vendor/buyer/seller)
- Complete CUAD 41-category coverage
- Document-type checklists (NDA, SaaS, M&A, Payment, Finder/Broker)
- Market standard benchmarks with color-coded thresholds
- Negotiability ratings (High/Medium/Low)
- Red flags quick scan
- Jurisdiction awareness
- M&A-specific support (earnouts, escrow, rep survival)

### Changed

- Improved redline language with specific replacement text
- Better severity classification (Critical/Important/Acceptable)

## [1.0.0] - 2026-01-26

### Added

- Initial release
- Basic contract review with risk detection
- Key terms extraction
- CUAD dataset integration
