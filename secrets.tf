# Create a secret for the cloudflare zta app config
resource "doppler_secret" "cloudflare_zta_config" {
  project    = local.secrets.auth0
  config     = "prd"
  name       = "AUTH0_APPS_CLOUDFLARE_ZTA_CONFIG"
  value_type = "json"
  value = jsonencode(
    {
      "application_id" : auth0_client.cloudflare_zta.client_id
      "application_secret" : auth0_client_credentials.cloudflare_zta.client_secret
    }
  )
}

# Create a secret for the argocd plagueworks app config
resource "doppler_secret" "argocd_plagueworks_config" {
  project    = local.secrets.auth0
  config     = "prd"
  name       = "AUTH0_APPS_ARGOCD_PLAGUEWORKS_CONFIG"
  value_type = "json"
  value = jsonencode(
    {
      "application_id" : auth0_client.argocd_plagueworks.client_id
      "application_secret" : auth0_client_credentials.argocd_plagueworks.client_secret
    }
  )
}
