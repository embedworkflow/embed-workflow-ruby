# EmbedWorkflow::ListAppConnections200ResponseCollectionInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | System-generated unique identifier | [optional] |
| **app_type** | **String** | Type of application being connected | [optional] |
| **last_used_at** | **String** | Last used at in specified timezone | [optional] |
| **last_used_at_string** | **String** | Last used at formatted as human-readable string | [optional] |
| **last_used_at_utc** | **String** | Last used at in UTC | [optional] |
| **name** | **String** | Name of the app connection | [optional] |
| **object** | **String** | Object type identifier | [optional] |
| **status** | **String** | Current status of the app connection | [optional] |

## Example

```ruby
require 'embed_workflow'

instance = EmbedWorkflow::ListAppConnections200ResponseCollectionInner.new(
  id: null,
  app_type: null,
  last_used_at: null,
  last_used_at_string: May 24, 2025 03:06 pm EDT,
  last_used_at_utc: null,
  name: null,
  object: app_connection,
  status: null
)
```

