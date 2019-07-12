FROM bamboog130/haskellstack:base

ARG snapshot

RUN stack --verbose --resolver ${snapshot} setup \
&& stack --verbose update

WORKDIR /workdir
CMD ["bash"]
