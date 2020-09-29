FROM archlinux
RUN pacman -Sy
RUN pacman -Su --noconfirm
RUN pacman -S neovim --noconfirm
RUN pacman -S git --noconfirm
RUN pacman -S npm --noconfirm
RUN pacman -S python-pip --noconfirm
RUN python3 -m pip install --user --upgrade pynvim
RUN npm install -g neovim
RUN mkdir -p /root/.config/nvim
COPY init.vim /root/.config/nvim/
COPY coc.sh /root/
RUN curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
RUN /root/coc.sh
