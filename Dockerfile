FROM python:3.8-alpine3.12 as base
RUN apk --no-cache add openssl ca-certificates

FROM base as builder
ARG VERSION

RUN apk --no-cache add --virtual build-dependencies libffi-dev openssl-dev build-base && \
    pip install --upgrade pip cffi && \
    pip wheel --wheel-dir=/root/wheels ansible-base==$VERSION

FROM base

COPY --from=builder /root/wheels /root/wheels
RUN pip install --no-index --find-links=/root/wheels ansible-base && \
    rm -rf /root/wheels && \
    if [[ ! -e /usr/bin/python ]]; then ln -sf $(which python) /usr/bin/python; fi && \
    mkdir -p /etc/ansible && \
    echo 'localhost' > /etc/ansible/hosts

ENTRYPOINT ["/usr/local/bin/ansible-playbook"]
