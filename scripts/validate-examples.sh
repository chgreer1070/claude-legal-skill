#!/usr/bin/env bash
# Validates that all example files follow the canonical output format.
# Run: bash scripts/validate-examples.sh
# Exit code 0 = all pass, 1 = failures found.

set -euo pipefail

ERRORS=0
EXAMPLES_DIR="examples"

# Required sections in the canonical output format (inside the ```markdown block)
CANONICAL_SECTIONS=(
  "Red Flags"
  "Risk Analysis"
  "Reviewed & Acceptable"
  "Missing Provisions"
  "Internal Consistency"
  "Negotiation Priority"
)

# Required header fields
HEADER_FIELDS=(
  "Document Type"
  "Your Position"
  "Counterparty"
  "Risk Level"
  "Document Status"
)

# Check that example files exist
EXAMPLE_FILES=()
for f in "$EXAMPLES_DIR"/*-review.md "$EXAMPLES_DIR"/balanced-agreement.md; do
  [ -f "$f" ] && EXAMPLE_FILES+=("$f")
done

if [ ${#EXAMPLE_FILES[@]} -eq 0 ]; then
  echo "ERROR: No example files found in $EXAMPLES_DIR/"
  exit 1
fi

echo "Validating ${#EXAMPLE_FILES[@]} example files..."
echo ""

for file in "${EXAMPLE_FILES[@]}"; do
  FILE_ERRORS=0
  basename=$(basename "$file")

  # Check canonical sections
  for section in "${CANONICAL_SECTIONS[@]}"; do
    if ! grep -q "$section" "$file"; then
      echo "FAIL: $basename — missing section: $section"
      FILE_ERRORS=$((FILE_ERRORS + 1))
    fi
  done

  # Check header fields
  for field in "${HEADER_FIELDS[@]}"; do
    if ! grep -q "$field" "$file"; then
      echo "FAIL: $basename — missing header field: $field"
      FILE_ERRORS=$((FILE_ERRORS + 1))
    fi
  done

  # Check for disclaimer footer
  if ! grep -q "informational purposes only" "$file"; then
    echo "FAIL: $basename — missing disclaimer footer"
    FILE_ERRORS=$((FILE_ERRORS + 1))
  fi

  # Check that the file has a Prompt section
  if ! grep -q "## Prompt" "$file"; then
    echo "FAIL: $basename — missing ## Prompt section"
    FILE_ERRORS=$((FILE_ERRORS + 1))
  fi

  # Check that the file has an Example Output section
  if ! grep -q "## Example Output" "$file"; then
    echo "FAIL: $basename — missing ## Example Output section"
    FILE_ERRORS=$((FILE_ERRORS + 1))
  fi

  if [ $FILE_ERRORS -eq 0 ]; then
    echo "PASS: $basename"
  else
    ERRORS=$((ERRORS + FILE_ERRORS))
  fi
done

echo ""

# Check that README references all example files
echo "Checking README references..."
for file in "${EXAMPLE_FILES[@]}"; do
  basename=$(basename "$file")
  if ! grep -q "$basename" README.md; then
    echo "FAIL: README.md does not reference $basename"
    ERRORS=$((ERRORS + 1))
  else
    echo "PASS: README.md references $basename"
  fi
done

echo ""

# Check version consistency
echo "Checking version consistency..."
README_VERSION=$(grep -oP 'version-\K[0-9]+\.[0-9]+\.[0-9]+' README.md | head -1)
SKILL_VERSION=$(grep -oP '^version:\s*\K[0-9]+\.[0-9]+\.[0-9]+' skill.md | head -1)
CHANGELOG_VERSION=$(grep -oP '## \[\K[0-9]+\.[0-9]+\.[0-9]+' CHANGELOG.md | head -1)

if [ "$README_VERSION" = "$SKILL_VERSION" ] && [ "$SKILL_VERSION" = "$CHANGELOG_VERSION" ]; then
  echo "PASS: Version $README_VERSION consistent across README.md, skill.md, CHANGELOG.md"
else
  echo "FAIL: Version mismatch — README=$README_VERSION, skill.md=$SKILL_VERSION, CHANGELOG=$CHANGELOG_VERSION"
  ERRORS=$((ERRORS + 1))
fi

echo ""

if [ $ERRORS -eq 0 ]; then
  echo "All checks passed."
  exit 0
else
  echo "$ERRORS error(s) found."
  exit 1
fi
