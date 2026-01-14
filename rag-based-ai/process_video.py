# Converts the video to mp3
import os
import subprocess

os.makedirs("audio", exist_ok=True)

files = os.listdir("videos")

for file in files:
    input_path = os.path.join("videos", file)
    output_path = os.path.join("audio", file.replace(".mp4", ".mp3"))

    subprocess.run(
        ["./bin/ffmpeg", "-y", "-i", input_path, output_path],
        check=True
    )
