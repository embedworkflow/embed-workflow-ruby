# EmbedWorkflow::RetryActionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_key** | **String** | User&#39;s key | [default to &#39;main&#39;] |
| **hook_id** | **String** | The trigger&#39;s hook id used for third party webhooks. |  |

## Example

```ruby
require 'embed_workflow'

instance = EmbedWorkflow::RetryActionRequest.new(
  user_key: null,
  hook_id: 0197053c-1672-7132-b9e9-4c2033a26ac7
)
```

