#!/bin/bash

# Build fat docker image
docker build -t app:fat .

# Run fat docker image
docker run app:fat

# Build slim docker image
# Wait for long enough for you app to finish running
slim build --http-probe-off --target app:fat --tag app:slim -continue-after 5 --cmd "python app.py"

# Run slim docker image
docker run app:slim
