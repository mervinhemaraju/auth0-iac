resource "auth0_client" "cloudflare_zta" {
  name        = "cloudflare-zta"
  description = "The Cloudflare Zero Trust Access OIDC client."
  app_type    = "regular_web"

  # Callback URLs for your ZTA application
  callbacks = local.contants.applications.cloudflare_zta.callbacks

  # Allowed logout URLs
  allowed_logout_urls = local.contants.applications.cloudflare_zta.allowed_urls

  # Web origins for CORS
  web_origins = local.contants.applications.cloudflare_zta.allowed_urls

  # The grant types
  grant_types = [
    "implicit",
    "authorization_code",
    "refresh_token",
    "client_credentials"
  ]

  # OIDC conformant - Required for proper OIDC flow
  sso             = true
  oidc_conformant = true

  # JWT configuration for enhanced security
  jwt_configuration {
    alg = "RS256"
  }

  # Refresh token configuration
  #   refresh_token {
  #     expiration_type              = "expiring"
  #     token_lifetime               = 2592000 # 30 days
  #     infinite_token_lifetime      = false
  #     infinite_idle_token_lifetime = false
  #     idle_token_lifetime          = 1296000 # 15 days
  #     rotation_type                = "rotating"
  #   }

  # Cross-origin authentication
  cross_origin_auth = false

  # First party
  is_first_party = true
}

