# EmbedWorkflow::CreateActionType422Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Type of error |  |
| **code** | **String** | Specific error code |  |
| **message** | **String** | Human-readable message providing more details about the error |  |

## Example

```ruby
require 'embed_workflow'

instance = EmbedWorkflow::CreateActionType422Response.new(
  type: invalid_request_error,
  code: parameter_invalid,
  message: null
)
```

