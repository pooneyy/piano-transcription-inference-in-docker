# Piano Transcription Inference in Docker
![Arch Badge](https://img.shields.io/badge/Architecture-linux%2Famd64-blue)

Docker Image for ByteDance's Piano Transcription Inference

Built by [qiuqiangkong/piano_transcription_inference](https://github.com/qiuqiangkong/piano_transcription_inference).

### How to Use

- Pull the image
    <table><thead><tr><th>Environment</th><th>CUDA Version</th><th>Install</th></tr></thead><tbody><tr><td rowspan="3"><img alt="Python Badge" src="https://img.shields.io/badge/Python-3.7-blue"><br /><br /><img alt="PyTorch Badge" src="https://img.shields.io/badge/PyTorch-1.4.0-blue"></td><td>None (CPU)</td><td class="command-cell"><pre lang="shell"><code>docker pull ghcr.io/pooneyy/piano_transcription_inference:latest-pytorch-1.4.0cpu</code></pre></td></tr><tr><td>9.2</td><td class="command-cell"><pre lang="shell"><code>docker pull ghcr.io/pooneyy/piano_transcription_inference:latest-pytorch-1.4.0cuda9.2</code></pre></td></tr><tr><td>10.1</td><td class="command-cell"><pre lang="shell"><code>docker pull ghcr.io/pooneyy/piano_transcription_inference:latest-pytorch-1.4.0cuda10.1</code></pre></td></tr></tbody></table>

- Run the container
  ```bash
  docker run -it -d \
      --name piano_transcription \
      -v ./resources:/home/PianoTranscription/resources \
      ghcr.io/pooneyy/piano_transcription_inference:TAG_OF_THE_IMAGE_YOU_PULLED
  
  docker exec -it piano_transcription /bin/bash
  ```

- If you have a video, you need to convert it to audio first
  ```bash
  ffmpeg -i "./resources/example.mp4" -vn -acodec copy "./resources/example.aac"
  ```

- If you only have CPU.
  ```bash
  python3 main.py --audio_path='./resources/example.aac' --output_midi_path='./resources/example.mid'
  ```
  If you want to use Cuda.
  ```bash
  python3 main.py --audio_path='./resources/example.aac' --output_midi_path='./resources/example.mid' --cuda
  ```
