variable "generative_ai_agent_data_sources_lookup" {
  description = <<EOT
Map of generative_ai_agent_data_sources_lookup, attributes below
Optional:
    - compartment_id
    - display_name
    - knowledge_base_id
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id    = optional(string)
    display_name      = optional(string)
    knowledge_base_id = optional(string)
    state             = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

