# Pitfalls & Gotchas Research

## High-Risk Areas to Mitigate

### 1. The "Photo Spoof" Attack
- **Risk**: Students hold up an iPad with a video or photo of their friend to the camera to fake attendance.
- **Mitigation**: Pure facial recognition is not enough. You must implement **Liveness Detection** (challenge-response like "turn head left") to ensure a live human is present.

### 2. Lighting and Environment Constraints
- **Risk**: The gym entrance or event hall might be dark, causing the facial recognition to fail and creating long queues.
- **Mitigation**: Provide a fallback authentication method (e.g., an OTP sent to the student's registered college email/phone) and instruct users to adjust lighting.

### 3. Browser Privacy & Permissions
- **Risk**: iOS Safari and some Android browsers strictly block camera access unless the site is served over HTTPS and the user explicitly clicks a button.
- **Mitigation**: Ensure robust error handling for `NotAllowedError`. The UI must explicitly explain *why* the camera is needed before requesting permission.

### 4. Biometric Data Privacy Laws
- **Risk**: Storing biometric data can violate privacy policies if not handled correctly.
- **Mitigation**: Store mathematical vectors (embeddings), never raw JPEGs. Provide a "delete my biometric data" option.
