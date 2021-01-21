FROM rust:1.49-alpine
RUN apk add libressl-dev musl-dev libc-dev
COPY . src/
COPY iroha/config.json .
WORKDIR src
RUN cargo build
RUN cp target/release/iroha ..
WORKDIR ..
CMD ["./iroha"]
