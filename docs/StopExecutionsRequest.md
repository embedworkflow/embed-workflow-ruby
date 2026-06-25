# EmbedWorkflow::StopExecutionsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_key** | **String** | User&#39;s key | [default to &#39;main&#39;] |
| **filters** | **String** | Data to filter | [optional] |

## Example

```ruby
require 'embed_workflow'

instance = EmbedWorkflow::StopExecutionsRequest.new(
  user_key: null,
  filters: {&quot;anything&quot;:&quot;you_are_looking_for&quot;}
)
```

