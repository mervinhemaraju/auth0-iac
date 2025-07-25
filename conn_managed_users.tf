# Create a managed database connection for users
resource "auth0_connection" "managed_users" {
  name     = "managed-users"
  strategy = "auth0"

  options {
    # Enable email and username for authentication
    requires_username = true

    # Password policy settings
    # password_policy = "good"

    # Password complexity options
    password_complexity_options {
      min_length = 6
    }

    # Disable signup to control user creation
    disable_signup = true

    # Brute force protection
    brute_force_protection = true

    # Validation settings
    validation {
      username {
        min = 3
        max = 50
      }
    }
  }
}

# Client connection association
resource "auth0_connection_clients" "managed_users_clients" {
  connection_id = auth0_connection.managed_users.id
  enabled_clients = [
    auth0_client.cloudflare_zta.id,
  ]
}
