# StudySupport

Hosted student support with photo questions, AI explanations, and a teacher dashboard.

## Deploy

1. Create a Supabase project and run `supabase/schema.sql` in its SQL Editor.
2. Import this repository into Vercel.
3. Add the values from `.env.local.example` in Vercel's environment variables.
4. Add the OpenAI key only to Vercel, never to GitHub or browser code.
5. Deploy to receive a permanent public link.

The starter includes a working AI image-question endpoint and teacher dashboard UI. Connect Supabase Auth, database, and Storage before inviting students.
