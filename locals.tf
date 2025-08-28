locals {

  contants = {

    secrets = {
      cloudflare = "cloudflare_creds"
      auth0      = "auth0-creds"
    }

    applications = {

      cloudflare_zta = {

        callbacks = [
          "https://${data.doppler_secrets.cloudflare_creds.map.ZTA_DOMAIN_NAME}/cdn-cgi/access/callback"
        ]

        allowed_urls = [
          "https://*.mervinhemaraju.com"
        ]

      }
    }
  }
}
