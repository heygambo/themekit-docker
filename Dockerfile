FROM python:2.7-alpine AS builder

WORKDIR /build
ADD https://raw.githubusercontent.com/Shopify/themekit/master/scripts/install install.py
RUN python install.py

FROM cirros AS themekit
COPY --from=builder /usr/local/bin/theme /usr/local/bin/
