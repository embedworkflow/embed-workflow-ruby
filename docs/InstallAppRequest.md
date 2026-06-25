# EmbedWorkflow::InstallAppRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_identifier** | **String** | App indentifier |  |
| **groups** | **Array&lt;String&gt;** | User permission groups. Only available to users with admin role. | [optional] |

## Example

```ruby
require 'embed_workflow'

instance = EmbedWorkflow::InstallAppRequest.new(
  app_identifier: slack,
  groups: [&quot;admins&quot;,&quot;leads&quot;]
)
```

