#!/bin/sh

ollama serve & 
echo 'Waiting for Ollama to be ready...';
until ollama pull deepseek-r1:8b; do 
  echo 'Waiting... retrying in 5s';
  sleep 5;
done;
echo 'Model loaded!';
wait

wait