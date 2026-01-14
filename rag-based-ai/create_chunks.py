import whisper
import os
import json

# Load model
model = whisper.load_model("large-v2")

# List all mp3 files in audios folder
audios = [f for f in os.listdir("audios") if f.endswith(".mp3")]

# Loop through each audio file
for audio in audios:
    audio_path = os.path.join("audios", audio)  # Full path to the file

    # Transcribe and translate
    result = model.transcribe(
        audio=audio_path,
        language="hi",
        task="translate",
        word_timestamps=False
    )

    chunks = []
    for segment in result["segments"]:
        chunks.append({"number": number, title:"title"start": segment["start"], "end": segment["end"], "text": segment["text"]})

    print(chunks)

    with open(f"jsons/{audio}.json", "w") as f:
        json.dump(chunks, f)
