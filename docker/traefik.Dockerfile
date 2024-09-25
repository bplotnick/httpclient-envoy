FROM traefik:v3.1

# Copy static configuration
COPY traefik.yml /etc/traefik/traefik.yml
