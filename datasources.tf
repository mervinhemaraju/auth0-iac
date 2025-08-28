# Fetch secrets from Doppler secrets manager
data "doppler_secrets" "auth0_creds" {
  project = "auth0-creds"
}

# Fetch Cloudflare token secrets
data "doppler_secrets" "cloudflare_creds" {
  project = "cloudflare-creds"
}

# Get the administrative client 
data "auth0_client" "administrative" {
  name = "administrative"
}
