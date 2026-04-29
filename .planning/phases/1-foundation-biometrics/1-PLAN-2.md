---
wave: 2
depends_on:
  - "1-PLAN-1"
files_modified:
  - "package.json"
  - "src/components/BiometricScanner.tsx"
  - "src/app/api/auth/face/route.ts"
  - "src/app/login/page.tsx"
autonomous: true
---

# Plan 2: Biometric Scanner & Liveness Detection

<tasks>

<task>
<description>Integrate face-api.js and build the Biometric Scanner component</description>
<read_first>
- .planning/phases/1-foundation-biometrics/1-AI-SPEC.md
- .planning/phases/1-foundation-biometrics/1-RESEARCH.md
</read_first>
<action>
1. Install `face-api.js`.
2. Create `src/components/BiometricScanner.tsx`.
3. Use `navigator.mediaDevices.getUserMedia` to stream the webcam to a `<video>` element inside the component. Ensure it handles `NotAllowedError` gracefully.
4. Load the `face-api.js` models (`ssdMobilenetv1`, `faceLandmark68Net`, `faceRecognitionNet`) from a public `/models` directory (or CDN).
5. Implement a continuous scanning loop using `requestAnimationFrame` that detects a face and extracts the 128D descriptor (embedding).
6. Implement **Liveness Detection**: Track the Eye Aspect Ratio (EAR) using the facial landmarks (eyes) across multiple frames to detect a "blink". The scan should only succeed if a blink is detected.
</action>
<acceptance_criteria>
- `src/components/BiometricScanner.tsx` exists and uses `navigator.mediaDevices.getUserMedia`.
- The component code imports and uses `faceapi.detectSingleFace`.
- The code includes logic to calculate eye blinks (liveness detection).
</acceptance_criteria>
</task>

<task>
<description>Create Face Login API and UI Integration</description>
<read_first>
- src/components/BiometricScanner.tsx
- src/lib/supabase.ts
</read_first>
<action>
1. Create a Next.js API route `src/app/api/auth/face/route.ts`.
2. This route must accept a POST request containing a 128-element float array (the embedding).
3. The route calls the Supabase `match_face` RPC using the provided embedding. If a match is found with high confidence (> 0.95), it returns the user profile.
4. Create `src/app/login/page.tsx` which renders the `BiometricScanner` component. When the scanner successfully detects a live face and extracts the embedding, it sends it to the API route to log the user in.
</action>
<acceptance_criteria>
- `src/app/api/auth/face/route.ts` exists and handles POST requests.
- The API route calls `supabase.rpc('match_face', ...)`.
- `src/app/login/page.tsx` exists and renders `<BiometricScanner />`.
</acceptance_criteria>
</task>

</tasks>

<verification>
- The BiometricScanner component correctly handles the video stream without React memory leaks.
- The API route successfully parses the 128D embedding.
</verification>

<must_haves>
- The face scanner securely runs locally and only sends math vectors to the server.
- Liveness detection (blinking) is enforced before processing the login.
</must_haves>
