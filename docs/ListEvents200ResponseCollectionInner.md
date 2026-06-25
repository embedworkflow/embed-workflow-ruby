# EmbedWorkflow::ListEvents200ResponseCollectionInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | System-generated unique identifier | [optional] |
| **ended_at** | **String** | Ended at in specified timezone | [optional] |
| **ended_at_string** | **String** | Ended at formatted as human-readable string | [optional] |
| **ended_at_utc** | **String** | Ended at in UTC | [optional] |
| **event_type** | **String** | Type of event that occurred | [optional] |
| **object** | **String** | Object type identifier | [optional] |
| **response_body** | **String** | Response body from the event | [optional] |
| **started_at** | **String** | Started at in specified timezone | [optional] |
| **started_at_string** | **String** | Started at formatted as human-readable string | [optional] |
| **started_at_utc** | **String** | Started at in UTC | [optional] |

## Example

```ruby
require 'embed_workflow'

instance = EmbedWorkflow::ListEvents200ResponseCollectionInner.new(
  id: null,
  ended_at: null,
  ended_at_string: May 24, 2025 03:06 pm EDT,
  ended_at_utc: null,
  event_type: null,
  object: event,
  response_body: null,
  started_at: null,
  started_at_string: May 24, 2025 03:06 pm EDT,
  started_at_utc: null
)
```

