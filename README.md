# Certbot Setup

Automated Certbot installation and SSL certificate generation using Cloudflare DNS validation.

## Features

- Installs Certbot in an isolated Python virtual environment
- Supports Debian/Ubuntu and RHEL/Fedora systems
- Uses Cloudflare DNS plugin for domain validation
- Generates Let's Encrypt SSL certificates

## Prerequisites

- Root/sudo access
- A domain managed by Cloudflare
- Cloudflare API token with DNS edit permissions

## Installation

```bash
make install
```

This will:
1. Install Python and required dependencies
2. Set up Certbot in `/opt/certbot/`
3. Install the Cloudflare DNS plugin
4. Prompt for your Cloudflare API token

## Usage

### Generate a Certificate

```bash
make generate
```

You'll be prompted to enter the FQDN (e.g., `example.com` or `*.example.com`).

## File Structure

| File | Description |
|------|-------------|
| `install.sh` | Installs Certbot and configures Cloudflare credentials |
| `generate_cert.sh` | Generates SSL certificates using DNS validation |
| `Makefile` | Convenience commands for install and generate |

## Cloudflare API Token

Your Cloudflare API token is stored at `/root/.secrets/certbot/cloudflare.ini` with restricted permissions (600).

## License

[MIT](LICENSE)
