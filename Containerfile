# Alpine
FROM alpine:latest
ENV LC_CTYPE C.UTF-8
RUN apk update && apk add --no-cache python3 clang w3m wget curl vim zsh sudo gdb \ 
				     git neovim zsh-syntax-highlighting

RUN adduser -D -u 1000 dots -s /bin/zsh && echo "dots:dots" | chpasswd && adduser dots wheel
RUN sed -i 's/^# %wheel ALL=(ALL:ALL) ALL/%wheel ALL=(ALL:ALL) ALL/' /etc/sudoers
RUN mkdir -p /home/dots/.local/bin /home/dots/Code /home/dots/Software && \
    curl -o '/home/dots/.local/bin/nvim' -LO 'https://github.com/neovim/neovim/releases/latest/download/nvim.appimage' && \
    chmod u+x '/home/dots/.local/bin/nvim'

WORKDIR /home/dots
COPY ./config/ ./.config/
COPY ./bin/ ./.local/bin/

RUN echo ' 					\
if [[ -z "$XDG_CONFIG_HOME" ]]; then 			\
        export XDG_CONFIG_HOME="$HOME/.config/"; \
fi; 						\
if [[ -d "$XDG_CONFIG_HOME/zsh" ]]; then 		\
        export ZDOTDIR="$XDG_CONFIG_HOME/zsh/"; 	\
fi; 						\
' >> /etc/zsh/zshenv

RUN chown -R dots:dots /home/dots
USER dots
# Add the following line to keep the container running
CMD ["/bin/zsh"]

