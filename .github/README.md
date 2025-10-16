# Piano Transcription Inference in Docker
![Arch Badge](https://img.shields.io/badge/Architecture-linux%2Famd64-blue)

Docker Image for ByteDance's Piano Transcription Inference

Built by [qiuqiangkong/piano_transcription_inference](https://github.com/qiuqiangkong/piano_transcription_inference).

### How to Use

- Prerequisite
  
  If you want to use Cuda, you need to install  [NVIDIA Container Toolkit](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html) in you host machine first.

- Pull the image
  
    Use `nvidia-smi` to confirm your CUDA version and pull the corresponding image
    
    <table>
      <thead>
        <tr>
          <th colspan="2">Environment</th>
          <th rowspan="2">CUDA Version</th>
          <th rowspan="2">Install</th>
        </tr>
        <tr>
          <th>Python</th>
          <th>Pytorch</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>
            3.7.17
          </td>
          <td rowspan="2">
            1.4.0
          </td>
          <td>None (CPU)</td>
          <td class="command-cell">
            <pre lang="shell"><code>docker pull ghcr.io/pooneyy/piano_transcription_inference:latest-pytorch-1.4.0-cpu</code></pre>
          </td>
        </tr>
        <tr>
          <td>
            3.7.4
          </td>
          <td>10.1</td>
          <td class="command-cell">
            <pre lang="shell"><code>docker pull ghcr.io/pooneyy/piano_transcription_inference:latest-pytorch-1.4.0-cuda-10.1</code></pre>
          </td>
        </tr>
        <tr>
          <td>
            3.7.10
          </td>
          <td>
            1.9.0
          </td>
          <td>10.2</td>
          <td class="command-cell">
            <pre lang="shell"><code>docker pull ghcr.io/pooneyy/piano_transcription_inference:latest-pytorch-1.9.0-cuda-10.2</code></pre>
          </td>
        </tr>
        <tr>
          <td>
            3.8.5
          </td>
          <td>
            1.7.1
          </td>
          <td>11.0</td>
          <td class="command-cell">
            <pre lang="shell"><code>docker pull ghcr.io/pooneyy/piano_transcription_inference:latest-pytorch-1.7.1-cuda-11.0</code></pre>
          </td>
        </tr>
        <tr>
          <td>
            3.7.11
          </td>
          <td>
            1.9.1
          </td>
          <td>11.1</td>
          <td class="command-cell">
            <pre lang="shell"><code>docker pull ghcr.io/pooneyy/piano_transcription_inference:latest-pytorch-1.9.1-cuda-11.1</code></pre>
          </td>
        </tr>
        <tr>
          <td>
            3.7.13
          </td>
          <td>
            1.12.1
          </td>
          <td>11.3</td>
          <td class="command-cell">
            <pre lang="shell"><code>docker pull ghcr.io/pooneyy/piano_transcription_inference:latest-pytorch-1.12.1-cuda-11.3</code></pre>
          </td>
        </tr>
        <tr>
          <td>
            3.10.8
          </td>
          <td>
            1.13.1
          </td>
          <td>11.6</td>
          <td class="command-cell">
            <pre lang="shell"><code>docker pull ghcr.io/pooneyy/piano_transcription_inference:latest-pytorch-1.13.1-cuda-11.6</code></pre>
          </td>
        </tr>
        <tr>
          <td>
            3.10.11
          </td>
          <td>
            2.0.1
          </td>
          <td>11.7</td>
          <td class="command-cell">
            <pre lang="shell"><code>docker pull ghcr.io/pooneyy/piano_transcription_inference:latest-pytorch-2.0.1-cuda-11.7</code></pre>
          </td>
        </tr>
        <tr>
          <td rowspan="3">
            3.11.10
          </td>
          <td rowspan="3">
            2.5.1
          </td>
          <td>11.8</td>
          <td class="command-cell">
            <pre lang="shell"><code>docker pull ghcr.io/pooneyy/piano_transcription_inference:latest-pytorch-2.5.1-cuda-11.8</code></pre>
          </td>
        </tr>
        <tr>
          <td>12.1</td>
          <td class="command-cell">
            <pre lang="shell"><code>docker pull ghcr.io/pooneyy/piano_transcription_inference:latest-pytorch-2.5.1-cuda-12.1</code></pre>
          </td>
        </tr>
        <tr>
          <td>12.4</td>
          <td class="command-cell">
            <pre lang="shell"><code>docker pull ghcr.io/pooneyy/piano_transcription_inference:latest-pytorch-2.5.1-cuda-12.4</code></pre>
          </td>
        </tr>
        <tr>
          <td rowspan="3">
            3.11.13
          </td>
          <td rowspan="3">
            2.8.0
          </td>
          <td>12.6</td>
          <td class="command-cell">
            <pre lang="shell"><code>docker pull ghcr.io/pooneyy/piano_transcription_inference:latest-pytorch-2.8.0-cuda-12.6</code></pre>
          </td>
        </tr>
        <tr>
          <td>12.8</td>
          <td class="command-cell">
            <pre lang="shell"><code>docker pull ghcr.io/pooneyy/piano_transcription_inference:latest-pytorch-2.8.0-cuda-12.8</code></pre>
          </td>
        </tr>
        <tr>
          <td>12.9</td>
          <td>
            <pre lang="shell"><code>docker pull ghcr.io/pooneyy/piano_transcription_inference:latest-pytorch-2.8.0-cuda-12.9</code></pre>
          </td>
        </tr>
        <tr>
          <td>
            3.11.14
          </td>
          <td>
            2.9.0
          </td>
          <td>13.0</td>
          <td>
            <pre lang="shell"><code>docker pull ghcr.io/pooneyy/piano_transcription_inference:latest-pytorch-2.9.0-cuda-13.0</code></pre>
          </td>
        </tr>
      </tbody>
    </table>
    
- Run the container

  - Bash

    ```
    docker run -it -d \
        --name piano_transcription \
        -v ./resources:/home/PianoTranscription/resources \
        ghcr.io/pooneyy/piano_transcription_inference:TAG_OF_THE_IMAGE_YOU_PULLED
    
    docker exec -it piano_transcription /bin/bash
    ```

    - The *resources* folder can be named anything, such as *res* or others:

      `-v ./res:/home/PianoTranscription/res`
      
    - If you want to use Cuda, you should add `--gpus all` in the container startup command

  - Docker-Compose

    ```
    services:
      piano_transcription:
        image: ghcr.io/pooneyy/piano_transcription_inference:latest-pytorch-2.8.0-cuda-12.9
        container_name: piano_transcription
        tty: true
        stdin_open: true
        volumes:
            - ./piano_transcription:/home/PianoTranscription/resources
        deploy:
          resources:
            reservations:
              devices:
                - capabilities: [gpu]
    ```

    

- If you have a video, you need to convert it to audio first
  ```bash
  ffmpeg -i "./resources/example.mp4" -vn -acodec copy "./resources/example.aac"
  ```

- If you don't have GPU.
  ```bash
  python3 main.py --audio_path='./resources/example.aac' --output_midi_path='./resources/example.mid'
  ```
  If you want to use Cuda.
  ```bash
  python3 main.py --audio_path='./resources/example.aac' --output_midi_path='./resources/example.mid' --cuda
  ```

