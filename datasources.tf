# Fetch secrets from Doppler secrets manager
data "doppler_secrets" "auth0" {
  project = "auth0-creds"
}

# Fetch Cloudflare token secrets
data "doppler_secrets" "apps" {
  project = "apps-credentials"
}

# Get the administrative client 
data "auth0_client" "administrative" {
  name = "administrative"
}

# Get the cloudflare account
data "cloudflare_accounts" "plagueworks" {
  name = "plagueworks"
}

# Get the zero trust organization
data "cloudflare_zero_trust_organization" "plagueworks" {
  account_id = data.cloudflare_accounts.plagueworks.results[0].id
}
