# EmbedWorkflow::ListTriggers200ResponseCollectionInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | System-generated unique identifier | [optional] |
| **created_at** | **String** | Created at in specified timezone | [optional] |
| **created_at_string** | **String** | Created at formatted as human-readable string | [optional] |
| **created_at_utc** | **String** | Created at in UTC | [optional] |
| **description** | **String** | Short description for the trigger | [optional] |
| **event** | **String** | Event type that activates this trigger | [optional] |
| **groups** | **Array&lt;String&gt;** | Permission groups for this trigger | [optional] |
| **hook_id** | **String** | Hook identifier for the trigger | [optional] |
| **icon** | **Object** | Icon configuration for the trigger | [optional] |
| **last_triggered_at** | **String** | Last triggered at in specified timezone | [optional] |
| **last_triggered_at_string** | **String** | Last triggered at formatted as human-readable string | [optional] |
| **last_triggered_at_utc** | **String** | Last triggered at in UTC | [optional] |
| **object** | **String** | Object type identifier | [optional] |
| **on** | **Boolean** | Whether the trigger is enabled | [optional] |
| **processed_count** | **Integer** | Number of times this trigger has been processed | [optional] |
| **title** | **String** | Display title for the trigger | [optional] |
| **data_input_schema** | **Array&lt;Object&gt;** | Data input schema for the trigger | [optional] |

## Example

```ruby
require 'embed_workflow'

instance = EmbedWorkflow::ListTriggers200ResponseCollectionInner.new(
  id: null,
  created_at: null,
  created_at_string: May 24, 2025 03:06 pm EDT,
  created_at_utc: null,
  description: null,
  event: null,
  groups: null,
  hook_id: null,
  icon: null,
  last_triggered_at: null,
  last_triggered_at_string: May 24, 2025 03:06 pm EDT,
  last_triggered_at_utc: null,
  object: trigger,
  on: null,
  processed_count: null,
  title: null,
  data_input_schema: null
)
```

