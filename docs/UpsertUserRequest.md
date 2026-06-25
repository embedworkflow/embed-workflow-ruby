# EmbedWorkflow::UpsertUserRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of resource | [optional] |
| **email** | **String** | Email address | [optional] |
| **data** | **Hash&lt;String, Object&gt;** | Additional user data | [optional] |
| **groups** | **Array&lt;String&gt;** | User permission groups. Only available to users with admin role. | [optional] |
| **time_zone** | **String** | Time zone | [optional] |

## Example

```ruby
require 'embed_workflow'

instance = EmbedWorkflow::UpsertUserRequest.new(
  name: null,
  email: user@email.com,
  data: null,
  groups: [&quot;admins&quot;,&quot;leads&quot;],
  time_zone: ....
)
```

