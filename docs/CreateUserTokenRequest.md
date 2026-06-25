# EmbedWorkflow::CreateUserTokenRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | User&#39;s key | [optional][default to &#39;main&#39;] |
| **id** | **String** | System-generated unique identifier | [optional] |

## Example

```ruby
require 'embed_workflow'

instance = EmbedWorkflow::CreateUserTokenRequest.new(
  key: null,
  id: 019ef1d7-6611-72e1-ba1a-9ddc830f8d08
)
```

