FROM gitpod/workspace-full-vnc

USER gitpod

ENV OPAMYES=true

RUN sudo apt-get update -y \
    && sudo apt-get install -y libexpat1-dev libgtk-3-dev libgtksourceview-3.0-dev opam yaru-theme-icon xubuntu-icon-theme \
    && opam init -y --disable-sandboxing \
    && opam update \
    && opam switch create 4.12.0 -y \
    && eval $(opam env) \
    && opam pin add coq 8.14.0 \
    && opam pin coqide 8.14.0 \
    && eval $(opam env)

