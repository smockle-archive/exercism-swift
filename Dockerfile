FROM alpine

# Install pre-requisites
RUN apk add --no-cache curl

# Install exercism
RUN curl -sL https://github.com/exercism/cli/releases/download/v2.4.1/exercism-linux-64bit.tgz | tar xz
RUN mv exercism /usr/local/bin

# Configure exercism
ARG EXERCISM_API_KEY
RUN exercism configure --key=${EXERCISM_API_KEY}
WORKDIR /root/exercism

# Run exercism
ENTRYPOINT ["exercism"]
CMD ["--version"]