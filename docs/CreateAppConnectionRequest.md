# EmbedWorkflow::CreateAppConnectionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of resource |  |
| **app_type** | **String** | App Type |  |
| **user_key** | **String** | User&#39;s key | [default to &#39;main&#39;] |
| **config** | **Object** | App connection configuration |  |

## Example

```ruby
require 'embed_workflow'

instance = EmbedWorkflow::CreateAppConnectionRequest.new(
  name: null,
  app_type: gmail,
  user_key: null,
  config: {&quot;api_key&quot;:&quot;abc_123&quot;}
)
```

