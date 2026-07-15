# AnalogAssist

A local, document-aware analog IC design chatbot. Your API key remains on the server, not in the browser.

## Run

1. Install Python 3.10+.
2. In this folder, run `python -m pip install -r requirements.txt`.
3. Copy `.env.example` to `.env` and add your OpenAI API key.
4. Run `python server.py`.
5. Browse to `http://127.0.0.1:8000`.

It accepts up to four PDF, TXT, CSV, LOG, or MD files (10 MB each). Scanned PDFs need OCR first.

For public deployment, add authentication, rate limiting, moderation, privacy controls, and HTTPS.
