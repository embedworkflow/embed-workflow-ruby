# EmbedWorkflow::UpdateAccountRequestActionTypeCategoriesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | Immutable category identifier |  |
| **name** | **String** | Display name (user-editable) |  |
| **description** | **String** | Short description (user-editable) | [optional] |
| **icon** | [**UpdateAccountRequestActionTypeCategoriesInnerIcon**](UpdateAccountRequestActionTypeCategoriesInnerIcon.md) |  | [optional] |

## Example

```ruby
require 'embed_workflow'

instance = EmbedWorkflow::UpdateAccountRequestActionTypeCategoriesInner.new(
  key: null,
  name: null,
  description: null,
  icon: null
)
```

