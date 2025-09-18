ARG PYTHON_VERSION=3.7
FROM python:$PYTHON_VERSION
WORKDIR /home/PianoTranscription
ARG PYTORCH_VERSION
RUN apt-get update \
    && apt-get install -y ffmpeg \
    && apt-get clean \
    && pip install $PYTORCH_VERSION \
    && pip install piano_transcription_inference \
    && pip cache purge \
    && mkdir -p "$HOME/piano_transcription_inference_data" \
    && curl -o  "$HOME/piano_transcription_inference_data/note_F1=0.9677_pedal_F1=0.9186.pth" \
                "https://zenodo.org/records/4034264/files/CRNN_note_F1%3D0.9677_pedal_F1%3D0.9186.pth" \
    && curl -o main.py https://raw.githubusercontent.com/qiuqiangkong/piano_transcription_inference/refs/heads/master/example.py
