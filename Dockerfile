ARG BASE_IMAGE=python:3.13
FROM $BASE_IMAGE
ARG COMMANDS
WORKDIR /home/PianoTranscription
RUN    apt-get update || true \
    && apt-get install -y ffmpeg wget \
    && pip install -U pip \
    && pip install piano_transcription_inference \
    &&  if [ -n "$COMMANDS" ]; then \
            eval "$COMMANDS"; \
        fi \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && pip cache purge \
    && mkdir -p "$HOME/piano_transcription_inference_data" \
    && wget --no-verbose -O \
        "$HOME/piano_transcription_inference_data/note_F1=0.9677_pedal_F1=0.9186.pth" \
        "https://zenodo.org/records/4034264/files/CRNN_note_F1%3D0.9677_pedal_F1%3D0.9186.pth" \
    && wget --no-verbose -O main.py \
        https://raw.githubusercontent.com/qiuqiangkong/piano_transcription_inference/refs/heads/master/example.py
