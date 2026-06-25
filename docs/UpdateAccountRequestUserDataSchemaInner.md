# EmbedWorkflow::UpdateAccountRequestUserDataSchemaInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **variable** | **String** | Variable name for the data field |  |
| **data_path** | **String** | Path to the data within the structure | [optional] |
| **type** | **String** | Data type identifier |  |
| **required** | **Boolean** | Whether this field is required | [optional] |
| **groups** | **Array&lt;String&gt;** | Permission groups for this data field | [optional] |

## Example

```ruby
require 'embed_workflow'

instance = EmbedWorkflow::UpdateAccountRequestUserDataSchemaInner.new(
  variable: null,
  data_path: null,
  type: null,
  required: null,
  groups: null
)
```

