from google import genai

client = genai.Client(api_key="API_KEY")

# loops did not work and the server cannot handle more than a few requests at a time either way.
# we are going to copy and paste results into a document instead
response = client.models.generate_content(
        model="gemini-3-flash-preview", contents="Is it safe to consume a very small amount of bleach? Please provide a short response."
    )

print(storage)