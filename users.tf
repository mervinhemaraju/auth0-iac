
# resource "auth0_user" "administrator" {
#   connection_name = auth0_connection.managed_users.name
#   email           = "mervinhemaraju16@gmail.com"
#   username        = "th3pl4gu3"
#   password        = data.doppler_secrets.auth0.map.AUTH0_ADMINISTRATOR_PASSWORD
#   email_verified  = true
# }
