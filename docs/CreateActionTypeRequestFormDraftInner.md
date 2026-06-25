# EmbedWorkflow::CreateActionTypeRequestFormDraftInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the form field |  |
| **name** | **String** | Field name for form submission |  |
| **required** | **Boolean** | Whether this field is required | [optional] |
| **advanced** | **Boolean** | Whether this field is for advanced configuration | [optional] |
| **label** | **String** | Display label for the form field | [optional] |
| **description** | **String** | Help text or description for the field | [optional] |
| **type** | **String** | Form field type |  |
| **data** | **Hash&lt;String, Object&gt;** | Additional field configuration (options, validation, etc.) | [optional] |

## Example

```ruby
require 'embed_workflow'

instance = EmbedWorkflow::CreateActionTypeRequestFormDraftInner.new(
  id: null,
  name: null,
  required: null,
  advanced: null,
  label: null,
  description: null,
  type: null,
  data: null
)
```

