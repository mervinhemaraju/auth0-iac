# Doppler Provider for Secrets Manager
provider "doppler" {
  doppler_token = var.token_doppler_global
}

# Cloudflare Provider Configuration
provider "cloudflare" {
  api_token = data.doppler_secrets.apps.map.CLOUDFLARE_TERRAFORM_TOKEN
}

# Auth0 Provider Configuration
provider "auth0" {
  domain        = data.doppler_secrets.auth0.map.AUTH0_ADMINISTRATIVE_DOMAIN
  client_id     = data.doppler_secrets.auth0.map.AUTH0_ADMINISTRATIVE_CLIENT_ID
  client_secret = data.doppler_secrets.auth0.map.AUTH0_ADMINISTRATIVE_CLIENT_SECRET
}
