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
    "authorization_code",
    "refresh_token"
  ]

  # OIDC conformant - Required for proper OIDC flow
  oidc_conformant = true

  # JWT configuration for enhanced security
  #   jwt_configuration {
  #     lifetime_in_seconds = 3600 # 1 hour
  #     secret_encoded      = false
  #     alg                 = "RS256"
  #     scopes = {
  #       "openid"         = "OpenID Connect"
  #       "profile"        = "User profile information"
  #       "email"          = "User email address"
  #       "offline_access" = "Refresh tokens"
  #     }
  #   }

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

  # Required for ZTA integration
  is_first_party = false
}

