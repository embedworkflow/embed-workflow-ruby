# EmbedWorkflow::UpdateTriggerRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event** | **String** | The trigger&#39;s key | [optional] |
| **title** | **String** | Title | [optional] |

## Example

```ruby
require 'embed_workflow'

instance = EmbedWorkflow::UpdateTriggerRequest.new(
  event: new-lead,
  title: Contact Registered
)
```

