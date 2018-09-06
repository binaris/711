RUN cd $(mktemp -d) && \
    curl -sL -o ./gradle.zip https://services.gradle.org/distributions/gradle-4.10-bin.zip && \
    mkdir -p /opt/gradle && \
    unzip gradle.zip -d /opt/gradle && \
    rm gradle.zip && \
    ln -s /opt/gradle/gradle-4.10/bin/gradle /usr/bin/gradle
