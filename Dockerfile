FROM gitpod/workspace-full-vnc
RUN sudo add-apt-repository ppa:maarten-fonville/android-studio
RUN sudo apt-get update
RUN sudo apt-get install android-sdk \
        lib32stdc++6 \
        android-studio \
        android-sdk-build-tools \
        android-sdk \
        android-sdk-platform-23 --no-install-recommends --yes
RUN sudo apt-get clean
RUN sudo rm -rf /var/lib/apt/lists/*