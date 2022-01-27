FROM gitpod/workspace-full-vnc

USER gitpod

RUN sudo apt-get update -y && \
    sudo apt-get install -y opam && \
    opam init --yes && \
    opam update && \
    opam switch create 4.12.0 && \
    eval $(opam env) && \
    opam pin add coq 8.14.0 && \
    opam pin coqide 8.14.0 && \
    eval $(opam env)

