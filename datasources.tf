# Fetch secrets from Doppler secrets manager
data "doppler_secrets" "auth0_creds" {
  project = local.secrets.auth0
}

# Fetch Cloudflare token secrets
data "doppler_secrets" "cloudflare_creds" {
  project = local.secrets.cloudflare
}

# Get the administrative client 
data "auth0_client" "administrative" {
  name = "administrative"
}
