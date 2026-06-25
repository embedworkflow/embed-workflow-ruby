# EmbedWorkflow::ImportConfigurationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schema** | [**ImportConfigurationRequestSchema**](ImportConfigurationRequestSchema.md) |  | [optional] |
| **schema_format** | **String** | Format for the configuration schema | [optional] |

## Example

```ruby
require 'embed_workflow'

instance = EmbedWorkflow::ImportConfigurationRequest.new(
  schema: null,
  schema_format: json
)
```

