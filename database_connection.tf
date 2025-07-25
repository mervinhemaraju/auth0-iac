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

    # Attributes to be stored and returned
    # attributes {
    #   email      = "required"
    #   username   = "required"
    #   given_name = "optional"
    #   family_name = "optional"
    # }

  }
}
