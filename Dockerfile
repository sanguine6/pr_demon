FROM lawliet89/debian-rust:1.10.0
MAINTAINER Yong Wen Chua <me@yongwen.xyz>

COPY Cargo.toml Cargo.lock ./
RUN cargo fetch

COPY . ./
RUN cargo build --release

ENTRYPOINT ["cargo"]
CMD ["run", "--release"]
