# Phase 1: Foundation & Biometrics - Nyquist Validation Strategy

> Generated automatically from `RESEARCH.md` Validation Architecture.
> Used by `gsd-eval-review` and `gsd-validate-phase` to audit verification coverage.

## Core Properties to Validate

### 1. Component Boundaries
- **Property:** Next.js Server Actions vs Client Components.
- **Verification:** Ensure `face-api.js` is dynamically imported or only run in `"use client"` components, as it requires the browser `window`/`document` object.

### 2. State & Data Flow
- **Property:** Supabase Vector Matching.
- **Verification:** Ensure the client securely passes the 128D array to the Edge Function/Server Action, and the Postgres RPC `match_face` correctly uses `<=>` cosine distance on `vector` types to find the nearest neighbor.

### 3. Error Handling & Edge Cases
- **Property:** Camera Permissions & Liveness.
- **Verification:** Must gracefully handle `NotAllowedError` when requesting webcam access. Must correctly reject static photos (no blink detected).

## Continuous Validation Gates

During planning, the planner agent will consume this document and inject specific `<acceptance_criteria>` into the PLAN.md files to verify these properties.
