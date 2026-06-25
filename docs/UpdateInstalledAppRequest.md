# EmbedWorkflow::UpdateInstalledAppRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **groups** | **Array&lt;String&gt;** | User permission groups. Only available to users with admin role. | [optional] |

## Example

```ruby
require 'embed_workflow'

instance = EmbedWorkflow::UpdateInstalledAppRequest.new(
  groups: [&quot;admins&quot;,&quot;leads&quot;]
)
```

