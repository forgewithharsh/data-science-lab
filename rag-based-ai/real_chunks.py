import requests
import os
import json

def create_embedding(text):
    r = requests.post("http://localhost:11434/api/embeddings", json={
        "model": "bge-m3",
        "prompt": text
    })

    embedding = r.json()['embedding']
    return embedding

jsons = [f for f in os.listdir("jsons") if f.endswith(".json")]

for json_file in jsons:
    with open(f"jsons/{json_file}", "r", encoding="utf-8", errors="ignore") as f:
        content = json.loads(f.read())

    for chunk in content["chunks"]:
        print(chunk)
    break

# a = create_embedding("Cat sat on the mat")
# print(a)