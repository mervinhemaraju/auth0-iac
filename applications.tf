resource "auth0_client" "cloudflare_zta" {
  name        = "cloudflare-zta"
  description = "The Cloudflare Zero Trust Access OIDC client."
  app_type    = "regular_web"

  # Callback URLs for your ZTA application
  callbacks = []

  # Allowed logout URLs
  allowed_logout_urls = []

  # Web origins for CORS
  web_origins = []

  # Allowed origins for logout
  allowed_origins = []

  # Grant types for web applications
  grant_types = []


  # ZTA-specific security settings
  #   oidc_conformant = true

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

  # Client metadata for ZTA
  #   client_metadata = {
  #     "zta_enabled"           = "true"
  #     "security_level"        = "high"
  #     "risk_assessment"       = "enabled"
  #     "device_fingerprinting" = "enabled"
  #     "geo_location_check"    = "enabled"
  #   }

  # Advanced settings for ZTA
  #   custom_login_page_on = true
  #   is_first_party       = true

  # Cross-origin authentication
  cross_origin_auth = false

  # SSO settings
  #   sso          = true
  #   sso_disabled = false
  #   cross_origin_location = "https://your-zta-app.com"

  # Encryption settings
  #   require_proof_of_possession = false

  # Organization usage (for ZTA multi-tenancy)
  #   organization_usage            = "allow"
  #   organization_require_behavior = "no_prompt"
}

