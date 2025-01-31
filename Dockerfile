FROM archlinux:base-devel

RUN pacman --noconfirm -Syu && pacman --needed --noconfirm -S libinput llvm lld clang && pacman -Scc --noconfirm
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --no-modify-path

ENV PATH="/root/.cargo/bin:${PATH}"
ENV RUSTUP_HOME="/root/.rustup"
ENV CARGO_HOME="/root/.cargo"

RUN source "$CARGO_HOME/env" && rustup default stable
RUN curl -LsSf https://get.nexte.st/latest/linux | tar zxf - -C ${CARGO_HOME:-~/.cargo}/bin
