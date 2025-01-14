FROM archlinux:base-devel

RUN pacman --noconfirm -Syu && pacman --needed --noconfirm -S libinput && pacman -Scc --noconfirm
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain stable --no-modify-path

ENV PATH="/root/.cargo/bin:${PATH}"
