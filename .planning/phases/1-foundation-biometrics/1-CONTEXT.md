# Phase 1: Foundation & Biometrics - Context

**Gathered:** 2026-04-29
**Status:** Ready for planning

<domain>
## Phase Boundary

Core infrastructure, authentication, and the facial recognition/liveness engine.
</domain>

<decisions>
## Implementation Decisions

### Biometric Processing
- **Location:** Strictly Client-Side (In-Browser). The AI model (`face-api.js` or MediaPipe) runs locally, extracting embeddings and sending only the vector to Supabase.

### Authentication Flow UX
- **UX:** Passwordless Face Login (with OTP Fallback). Face scan is a primary login method for speed and low friction.

### Liveness Detection
- **Mechanism:** Randomized Active Challenge. The scanner prompts the user to perform a random action (e.g., blink twice, turn head) to prevent photo/video spoofing.

</decisions>

<canonical_refs>
## Canonical References

**Downstream agents MUST read these before planning or implementing.**

No external specs — requirements fully captured in decisions above.
</canonical_refs>

<specifics>
## Specific Ideas

- Fallback authentication must be a one-time passcode (OTP) sent to the college email if camera access fails or lighting is too poor.
</specifics>

<deferred>
## Deferred Ideas

None — Phase covers scope.
</deferred>

---

*Phase: 1-foundation-biometrics*
*Context gathered: 2026-04-29*
