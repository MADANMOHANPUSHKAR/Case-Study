# Research Synthesis

## The Domain: College Activity & Biometric Portal

Building a web-based facial recognition portal for college facilities and events is highly feasible but comes with specific technical constraints, primarily around security, spoofing, and browser capabilities.

### Strategic Recommendations

1. **Stack**: Use **Next.js** + **Supabase (with pgvector)** + **MediaPipe/face-api.js**. This combination allows you to run the heavy AI models directly on the user's mobile/laptop browser, saving server costs and protecting privacy by only sending mathematical face vectors to the database.
2. **The Liveness Problem**: The biggest threat to this app is students faking attendance using photos of their friends. You *must* include liveness detection (e.g., asking the user to blink or smile) during the scan.
3. **Progressive Web App (PWA)**: Build the web app as a PWA so students can add it to their mobile home screens. This provides a native-app-like experience and better camera performance without needing to deploy to the iOS App Store or Google Play Store.
4. **Fallback Mechanisms**: Facial recognition *will* fail in bad lighting (e.g., outside a dark gym). The app needs a secure fallback, like a time-sensitive OTP.

### Next Steps

This research provides the foundation for defining the exact requirements of the application, ensuring we build a secure, performant, and reliable system.
