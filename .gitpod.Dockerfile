FROM gitpod/workspace-full-vnc

USER gitpod

ENV OPAMYES=true

RUN sudo apt-get update -y
RUN sudo apt-get install -y libexpat1-dev libgtk-3-dev libgtksourceview-3.0-dev
RUN sudo apt-get install -y opam 
RUN opam init -y --disable-sandboxing
RUN opam update
RUN opam switch create 4.12.0 -y
RUN eval $(opam env)
RUN opam pin add coq 8.14.0
RUN opam pin coqide 8.14.0
RUN eval $(opam env)

