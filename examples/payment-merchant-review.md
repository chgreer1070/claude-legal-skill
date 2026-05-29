# Payment/Merchant Agreement Review Example

## Prompt

```
Review this payment processing agreement. I'm the merchant.
```

## Example Output

```markdown
# Contract Review: FastPay Merchant Services Agreement

**Document Type:** Payment Processing / Merchant Agreement
**Your Position:** Merchant
**Counterparty:** FastPay Processing Inc.
**Risk Level:** 🔴 High
**Document Status:** Draft

## Executive Summary

One-sided processor agreement with significant merchant exposure. The 10% rolling reserve,
uncapped chargeback liability, and unilateral suspension rights create serious financial risk.
Network rules incorporated by reference without merchant access to full terms.

---

## Key Terms

| Term | Value | Location |
|------|-------|----------|
| Processing Fee | 2.9% + $0.30 per transaction | Section 3.1 |
| Monthly Minimum | $500 in fees | Section 3.4 |
| Rolling Reserve | 10% for 180 days | Section 5.1 |
| Settlement Timing | T+3 business days | Section 4.2 |
| Chargeback Fee | $25 per occurrence | Section 6.1 |
| Term | 36 months, auto-renew | Section 9.1 |
| Early Termination | $500 + remaining monthly minimums | Section 9.3 |
| Governing Law | New York | Section 12.1 |

---

## Red Flags (Quick Scan)

| Flag | Found | Location |
|------|-------|----------|
| Uncapped indemnification | ⚠️ Yes | Section 8.2 (merchant indemnifies processor) |
| Unilateral suspension without notice | ⚠️ Yes | Section 7.1 (immediate freeze) |
| No termination for convenience | ⚠️ Yes | Section 9.1 (36-month lock-in) |
| Perpetual obligations | ⚠️ Yes | Section 5.1 (reserve held post-termination) |
| "Sole discretion" language | ⚠️ Yes | Section 5.2 (reserve increase) |
| Unilateral amendment rights | ⚠️ Yes | Section 11.3 (pricing changes) |

---

## Risk Analysis

### 🔴 Critical

**Rolling Reserve** (Section 5.1, 5.2)
> "Processor shall withhold 10% of gross settled volume in a rolling reserve for 180 days. Processor may increase reserve percentage at its sole discretion."

- **Issue:** 10% reserve is above market (5% typical); "sole discretion" increase has no cap or objective trigger
- **Risk:** For $100K/month volume, $60K+ locked up at any time; could increase without limit
- **Redline:**
  - Reduce to "five percent (5%)" with defined triggers for increase
  - Add: "Reserve shall not exceed 15% absent documented fraud or excessive chargebacks (>2% ratio)"
  - Add: "Reserve funds released within 30 days of termination"
- **Negotiability:** Medium — processors will negotiate triggers, rarely the base rate

---

### 🔴 Critical

**Unilateral Suspension** (Section 7.1)
> "Processor may immediately suspend settlement, freeze funds, or terminate this Agreement if Processor determines, in its sole discretion, that Merchant poses a risk"

- **Issue:** No notice, no objective standard, no cure period; funds frozen indefinitely
- **Risk:** Processor can freeze all funds with no recourse
- **Redline:**
  - Add: "Processor shall provide 48 hours written notice before suspension, except in cases of documented fraud"
  - Add: "Frozen funds shall be released within 30 days if no chargeback or fraud claim is substantiated"
- **Negotiability:** Low — processors insist on fraud protection, but notice requirements are reasonable

---

### 🔴 Critical

**Chargeback Liability** (Section 6.1, 6.2)
> "Merchant shall be liable for all chargebacks, representment costs, and network fines without limitation"

- **Issue:** Uncapped chargeback liability; no fraud protection; no distinction between fraud and legitimate disputes
- **Risk:** A single fraud event could create unlimited merchant liability
- **Redline:**
  - Add chargeback cap: "Merchant chargeback liability shall not exceed 2% of monthly processed volume"
  - Add: "Processor-provided fraud screening failures shall not result in merchant chargeback liability"
- **Negotiability:** Medium — fraud carve-outs are reasonable; hard caps are harder

---

### 🟡 Important

**Network Rules Incorporation** (Section 2.3)
> "Merchant agrees to comply with all applicable Card Network Rules as amended from time to time"

- **Issue:** Rules incorporated by reference but not provided; rules can change without notice
- **Redline:** Add "Processor shall provide Merchant access to current Network Rules and 30 days notice of material changes"
- **Negotiability:** Low — network rules are non-negotiable, but access and notice are reasonable

---

### 🟡 Important

**Auto-Debit Authority** (Section 4.5)
> "Processor may debit Merchant's designated bank account for fees, chargebacks, fines, and reserve adjustments without prior notice"

- **Issue:** Unlimited debit authority with no notice or cap per occurrence
- **Redline:** Add "Processor shall provide 5 business days notice before any debit exceeding $1,000, excluding standard processing fees"
- **Negotiability:** Medium — notice thresholds are common

---

### 🟡 Important

**Early Termination Fee** (Section 9.3)
> "Upon early termination, Merchant shall pay $500 plus all remaining monthly minimum fees for the balance of the Term"

- **Issue:** For 36-month term, early exit could cost $500 + up to $18,000 in minimums
- **Redline:** Change to "early termination fee equal to three (3) months' average fees"
- **Negotiability:** Medium — most processors will negotiate the formula

---

## Reviewed & Acceptable

| Category | Status | Notes |
|----------|--------|-------|
| Processing Rates | ✓ | 2.9% + $0.30 is market rate for card-not-present |
| Settlement Timing | ✓ | T+3 is standard |
| PCI Compliance | ✓ | Shared responsibility model with clear allocation |
| Governing Law | ✓ | New York — standard for financial agreements |

---

## Missing Provisions

| Provision | Priority | Why It Matters |
|-----------|----------|----------------|
| Fraud Screening SLA | Critical | No obligation for processor to provide fraud tools |
| Reserve Release Timeline | Critical | No defined release schedule post-termination |
| Volume Discount Tiers | Important | No rate reduction as volume increases |
| Audit Rights | Important | No ability to verify fee calculations |

**Suggested Reserve Release language:**
> "Upon termination, Processor shall release all reserve funds within 90 days, less any documented chargebacks or pending disputes."

---

## Internal Consistency

- ⚠️ Section 3.1 references "Schedule A" for fee tiers but Schedule A only lists flat rates
- ⚠️ "Merchant Account" capitalized in Section 1 but lowercase in Sections 4 and 5

---

## Negotiation Priority

| # | Issue | Ask | Negotiability |
|---|-------|-----|---------------|
| 1 | Reserve terms | 5% cap, defined triggers, 90-day release | Medium |
| 2 | Suspension rights | 48-hour notice, fund release timeline | Low |
| 3 | Chargeback cap | 2% monthly volume cap, fraud carve-out | Medium |
| 4 | Early termination | 3 months' fees instead of remaining term | Medium |
| 5 | Auto-debit notice | 5-day notice for debits > $1,000 | Medium |

---

*This review is for informational purposes only. Payment processing agreements involve network rules that may override negotiated terms — consult qualified counsel.*
```

## Merchant Protection Checklist

1. **Reserve terms** — negotiate percentage, triggers, and release timeline
2. **Chargeback liability** — cap exposure and carve out processor-side fraud failures
3. **Suspension rights** — require notice and fund release timelines
4. **Network rules** — demand access to full rules and notice of changes
5. **Auto-debit** — set notice thresholds for large debits
6. **Early termination** — avoid paying remaining minimums for the full term
7. **Settlement timing** — faster settlement improves cash flow
8. **PCI costs** — clarify who pays for compliance audits and remediation
