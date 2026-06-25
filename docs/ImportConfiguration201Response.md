# EmbedWorkflow::ImportConfiguration201Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** | Object type identifier | [optional] |
| **account_data_schema** | **Array&lt;Object&gt;** | Account data schema | [optional] |
| **action_types** | **Array&lt;Object&gt;** | ActionTypes | [optional] |
| **triggers** | **Array&lt;Object&gt;** | Triggers | [optional] |
| **user_data_schema** | **Array&lt;Object&gt;** | User data schema for the account | [optional] |
| **workflows** | **Array&lt;Object&gt;** | Workflows | [optional] |

## Example

```ruby
require 'embed_workflow'

instance = EmbedWorkflow::ImportConfiguration201Response.new(
  object: configuration,
  account_data_schema: null,
  action_types: null,
  triggers: null,
  user_data_schema: null,
  workflows: null
)
```

