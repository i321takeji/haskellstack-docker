FROM bamboog130/haskellstack:base

ARG snapshot

RUN stack --verbose --resolver ${snapshot} setup
RUN stack ghc -- --version
