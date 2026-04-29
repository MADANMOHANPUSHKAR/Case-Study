# Phase 1 Technical Research

## Architecture Patterns

### Next.js Setup
- Use Next.js 14+ with App Router.
- Tailwind CSS and shadcn/ui for rapid UI development.
- Server Actions for secure database operations (like storing embeddings).

### Supabase & pgvector
- Enable `pgvector` extension in Supabase.
- Table: `users` (id, email, face_embedding `vector(128)`).
- RPC (Remote Procedure Call): Create a Postgres function `match_face` that takes a query embedding and a match threshold, and returns the closest user ID using cosine distance (`<=>`).

### MediaPipe Integration
- MediaPipe FaceLandmarker produces a 478-point 3D face mesh.
- **Gotcha**: MediaPipe itself doesn't output a traditional 128D FaceNet embedding natively in the standard vision tasks; it outputs landmarks. To do a *recognition* match (1-to-1 or 1-to-N), we either need to compute geometric features from the landmarks OR use a specialized face recognition embedding model (like `face-api.js` FaceRecognitionNet, or a TensorFlow.js MobileFaceNet model) running alongside MediaPipe.
- **Correction based on research**: `face-api.js` is much easier for extracting a 128D embedding directly. While MediaPipe is great for liveness (tracking landmarks for blinking), `face-api.js` gives us the `FaceRecognitionNet` we need for the 128D vector. We will use a hybrid approach or stick entirely to `face-api.js` for both. Let's plan to use `face-api.js` for both landmarks (liveness) and embeddings (recognition) to simplify the stack.

## Dependencies
- `next`, `react`, `react-dom`
- `@supabase/supabase-js`
- `face-api.js` (loaded via CDN or installed via npm)

## Validation Architecture

To ensure the foundation is rock solid, we will validate:
1. **Next.js & Supabase Connectivity**: Verify that the app can read/write to the Supabase database.
2. **Biometric Model Loading**: Verify `face-api.js` weights load correctly in the browser without CORS errors.
3. **Liveness Action**: Verify the client can detect an active blink using eye aspect ratio (EAR) from the facial landmarks.
4. **Vector Matching**: Verify the `match_face` RPC correctly identifies a user given their embedding.
