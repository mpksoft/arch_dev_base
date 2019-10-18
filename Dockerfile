FROM archlinux/base
MAINTAINER MPKSoft

# install packages
#############
RUN pacman -Suy --noconfirm
RUN pacman -Sy extra/cmake extra/qt5-base extra/qt5-charts extra/qt5-declarative extra/qt5-quickcontrols2 extra/qt5-serialport extra/qt5-svg extra/qt5-tools extra/qt5-translations extra/qt5-webview extra/boost extra/boost-libs core/gcc extra/clang extra/llvm extra/llvm-libs community/cppcheck extra/clazy core/gettext extra/git core/openssh core/make core/which --noconfirm

# map /data to host defined data path (used to store data from app)
VOLUME /data

# run 
CMD ["/bin/bash"]
