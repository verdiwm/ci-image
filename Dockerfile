FROM archlinux:base-devel

RUN pacman --noconfirm -Syu && pacman --needed --noconfirm -S rustup libinput
RUN pacman -Scc --noconfirm

RUN rustup toolchain install stable
