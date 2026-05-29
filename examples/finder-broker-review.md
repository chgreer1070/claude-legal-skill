# Finder/Broker Agreement Review Example

## Prompt

```
Review this finder's fee agreement. I'm the company engaging the finder.
```

## Example Output

```markdown
# Contract Review: Strategic Advisory & Finder's Fee Agreement

**Document Type:** Finder/Broker Agreement
**Your Position:** Company (Engaging Party)
**Counterparty:** Apex Capital Advisors LLC
**Risk Level:** 🟡 Medium
**Document Status:** Draft

## Executive Summary

Standard finder's agreement with some overbroad terms. The "covered buyer" definition is too
expansive, the 36-month tail period exceeds market norms, and the fee calculation includes
employment compensation in deal value. Fee percentage and escrow deduction terms are reasonable.

---

## Key Terms

| Term | Value | Location |
|------|-------|----------|
| Fee Percentage | 3% of Transaction Value | Section 2.1 |
| Minimum Fee | $150,000 | Section 2.2 |
| Tail Period | 36 months post-termination | Section 4.1 |
| Exclusivity | Non-exclusive | Section 1.3 |
| Term | 12 months, auto-renew | Section 5.1 |
| Governing Law | Delaware | Section 8.1 |

---

## Red Flags (Quick Scan)

| Flag | Found | Location |
|------|-------|----------|
| Perpetual obligations | No | — |
| Pre-signed conflict waivers | ⚠️ Yes | Section 7.2 (blanket waiver) |
| "Sole discretion" language | No | — |
| Uncapped indemnification | No | — |
| Asymmetric assignment rights | ⚠️ Yes | Section 8.3 (finder can assign) |

---

## Risk Analysis

### 🔴 Critical

**Covered Buyer Definition** (Section 1.2)
> "Covered Buyer means any person or entity (i) introduced by Finder, (ii) with whom Finder has had any contact regarding the Company, or (iii) identified on any buyer list provided by Finder"

- **Issue:** Clause (iii) is overly broad — Finder could submit a long list of names with no actual introduction effort, then claim fees on any deal
- **Risk:** Company could owe fees on deals Finder had no role in facilitating
- **Redline:**
  - Delete clause (iii) entirely, or limit to: "identified on a buyer list mutually agreed upon in writing"
  - Add: "Finder must demonstrate a material contribution to the introduction"
- **Fallback:** Cap the buyer list at 25 names, require quarterly updates, and exclude any party Company was already in discussions with
- **Negotiability:** High — reasonable finders agree to narrow definitions

---

### 🟡 Important

**Tail Period** (Section 4.1)
> "If a Transaction closes with a Covered Buyer within 36 months following termination, the Fee shall be payable"

- **Issue:** 36-month tail is above market (12-18 months typical); creates long-term fee exposure
- **Market Standard:** 12-18 months
- **Redline:** Change "36 months" → "18 months"
- **Fallback:** Accept 24 months with a declining fee structure (100% in months 1-12, 50% in months 13-24)
- **Negotiability:** Medium — most finders will negotiate duration

---

### 🟡 Important

**Fee Calculation — Employment Comp** (Section 2.1)
> "Transaction Value shall include all consideration, including base salary, bonuses, equity grants, and other compensation payable to any principal of the Company"

- **Issue:** Including employment comp inflates the fee base significantly
- **Risk:** If founder takes $500K salary + $2M equity in the deal, that's $75K+ in extra finder fees
- **Redline:** Add "Transaction Value shall exclude employment compensation, retention bonuses, and earn-out payments tied to post-closing services"
- **Negotiability:** High — standard carve-out

---

### 🟡 Important

**Conflict Waiver** (Section 7.2)
> "Company acknowledges that Finder may represent other parties in similar transactions and waives any conflict of interest"

- **Issue:** Blanket waiver; Finder could represent the buyer in the same deal
- **Redline:** Change to "Finder shall disclose any representation of a Covered Buyer and obtain Company's written consent before proceeding"
- **Negotiability:** High — disclosure is standard practice

---

## Reviewed & Acceptable

| Category | Status | Notes |
|----------|--------|-------|
| Fee Percentage | ✓ | 3% is market standard for deals in this range |
| Non-Exclusive | ✓ | Company retains right to engage other finders |
| Minimum Fee | ✓ | $150K minimum is reasonable for deal size |
| Payment Timing | ✓ | Due at closing from proceeds — standard |
| Governing Law | ✓ | Delaware — standard for M&A-related agreements |
| Confidentiality | ✓ | Mutual NDA provisions adequate |

---

## Missing Provisions

| Provision | Priority | Why It Matters |
|-----------|----------|----------------|
| Prior Relationship Carve-Out | Critical | No exclusion for buyers Company already knows |
| Activity Reporting | Important | No requirement for Finder to report on efforts |
| Broker-Dealer Status | Important | No representation that Finder is properly registered |

**Suggested Prior Relationship Carve-Out:**
> "Covered Buyer shall exclude any party with whom Company had a pre-existing relationship or substantive discussions prior to the Effective Date, as identified on Exhibit A."

---

## Internal Consistency

- ⚠️ Section 1.2 defines "Covered Buyer" but Section 4.1 uses "Introduced Party" — terms should be consistent
- ⚠️ Exhibit A referenced for buyer list but not attached

---

## Negotiation Priority

| # | Issue | Ask | Negotiability |
|---|-------|-----|---------------|
| 1 | Covered buyer definition | Narrow to actual introductions | High |
| 2 | Tail period | 18 months (from 36) | Medium |
| 3 | Fee calculation | Exclude employment comp | High |
| 4 | Conflict waiver | Require disclosure and consent | High |
| 5 | Prior relationships | Add carve-out on Exhibit A | High |

---

*This review is for informational purposes only. Finder/broker agreements may implicate securities laws — consult qualified legal counsel regarding broker-dealer registration requirements.*
```

## Company Protection Checklist

1. **Covered buyer definition** — narrow to actual introductions, not broad lists
2. **Tail period** — 12-18 months is market; push back on anything longer
3. **Fee calculation** — exclude employment comp, retention, and post-closing earnouts
4. **Prior relationships** — carve out existing contacts before engagement
5. **Conflict waivers** — require disclosure, don't give blanket waivers
6. **Broker-dealer status** — verify registration if securities are involved
7. **Exclusivity** — avoid exclusive engagements without clear deliverables
8. **Activity reporting** — require regular updates on outreach efforts
