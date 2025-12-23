resource "google_org_policy_policy" "policy" {
  for_each = { for idx, p in var.policies : idx => p }

  name   = each.value.policy_name
  parent = each.value.parent

  spec {
    rules {
      enforce = each.value.enforce
    }
  }
}