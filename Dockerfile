FROM archlinux:latest

RUN pacman --noconfirm -Syu && pacman --needed --noconfirm -S \
    rustup base-devel libinput

RUN pacman -Scc --noconfirm

RUN rustup toolchain install stable
