FROM python:2.7-alpine AS builder

WORKDIR /build
ADD https://shopify.github.io/themekit/scripts/install.py install.py
RUN python install.py

FROM cirros AS themekit
COPY --from=builder /usr/local/bin/theme /usr/local/bin/
ENTRYPOINT [ "/usr/local/bin/theme" ]
