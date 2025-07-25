# Doppler Provider for Secrets Manager
provider "doppler" {
  doppler_token = var.token_doppler_global
}

# Auth0 Provider Configuration
provider "auth0" {
  domain        = data.doppler_secrets.prod_main.map.AUTH0_ADMINISTRATIVE_CLIENT_ID
  client_id     = data.doppler_secrets.prod_main.map.AUTH0_ADMINISTRATIVE_DOMAIN
  client_secret = data.doppler_secrets.prod_main.map.AUTH0_ADMINISTRATIVE_CLIENT_SECRET
}
