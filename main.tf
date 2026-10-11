data "oci_generative_ai_agent_data_sources" "generative_ai_agent_data_sources_lookup" {
  for_each = var.generative_ai_agent_data_sources_lookup

  compartment_id    = each.value.compartment_id
  display_name      = each.value.display_name
  knowledge_base_id = each.value.knowledge_base_id
  state             = each.value.state

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

