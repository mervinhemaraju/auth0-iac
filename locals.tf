locals {

  contants = {

    applications = {

      cloudflare_zta = {

        callbacks = [
          "https://${data.cloudflare_zero_trust_organization.plagueworks.auth_domain}/cdn-cgi/access/callback"
        ]

        allowed_urls = [
          "https://*.mervinhemaraju.com"
        ]

      }
    }
  }
}
