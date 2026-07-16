FROM cgr.dev/chainguard/nginx:latest

COPY index.html /usr/share/nginx/html/index.html



EXPOSE 8080

HEALTHCHECK --interval=30s --timeout=3s \
 CMD wget --spider -q http://localhost:8080 || exit 1
