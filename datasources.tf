# Fetch secrets from Doppler secrets manager
data "doppler_secrets" "auth0" {
  project = "auth0-creds"
}
