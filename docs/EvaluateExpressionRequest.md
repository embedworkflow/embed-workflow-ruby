# EmbedWorkflow::EvaluateExpressionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **expression** | **String** | Liquid template expression to evaluate against the provided data |  |
| **data** | **Hash&lt;String, Object&gt;** | Data context for evaluating the expression |  |

## Example

```ruby
require 'embed_workflow'

instance = EmbedWorkflow::EvaluateExpressionRequest.new(
  expression: null,
  data: null
)
```

