# EmbedWorkflow::ListWorkflowVersions200ResponseCollectionInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | System-generated unique identifier | [optional] |
| **created_at** | **String** | Created at in specified timezone | [optional] |
| **created_at_string** | **String** | Created at formatted as human-readable string | [optional] |
| **created_at_utc** | **String** | Created at in UTC | [optional] |
| **event** | **String** | The event that created this version | [optional] |
| **object** | **String** | Object type identifier | [optional] |
| **resource_type** | **String** | Type of resource this version belongs to | [optional] |

## Example

```ruby
require 'embed_workflow'

instance = EmbedWorkflow::ListWorkflowVersions200ResponseCollectionInner.new(
  id: null,
  created_at: null,
  created_at_string: May 24, 2025 03:06 pm EDT,
  created_at_utc: null,
  event: null,
  object: version,
  resource_type: null
)
```

