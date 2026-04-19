resource "azurerm_policy_definition" "allowed_locations" {
  name         = "allowed-locations"
  policy_type  = "Custom"
  mode         = "All"
  display_name = "Allowed locations"

  policy_rule = jsonencode({
    if = {
      field = "location"
      notIn = ["East US", "West Europe"]
    }
    then = {
      effect = "deny"
    }
  })
}