# EmbedWorkflow::ListActions200ResponseCollectionInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hashid** | **String** | System-generated unique identifier | [optional] |
| **completed_at** | **String** | Completed at in specified timezone | [optional] |
| **completed_at_string** | **String** | Completed at formatted as human-readable string | [optional] |
| **completed_at_utc** | **String** | Completed at in UTC | [optional] |
| **execution_id** | **String** | ID of the execution this action belongs to | [optional] |
| **failed_at** | **String** | Failed at in specified timezone | [optional] |
| **failed_at_string** | **String** | Failed at formatted as human-readable string | [optional] |
| **failed_at_utc** | **String** | Failed at in UTC | [optional] |
| **failure_note** | **String** | Error message when action fails | [optional] |
| **log** | **Object** | Execution log details for the action | [optional] |
| **name** | **String** | Name of the action | [optional] |
| **node_id** | **String** | Node identifier associated with this action | [optional] |
| **object** | **String** | Object type identifier | [optional] |
| **run_at** | **String** | Run at in specified timezone | [optional] |
| **run_at_string** | **String** | Run at formatted as human-readable string | [optional] |
| **run_at_utc** | **String** | Run at in UTC | [optional] |
| **status** | **String** | Current status of the action | [optional] |
| **stopped_at** | **String** | Stopped at in specified timezone | [optional] |
| **stopped_at_string** | **String** | Stopped at formatted as human-readable string | [optional] |
| **stopped_at_utc** | **String** | Stopped at in UTC | [optional] |
| **uuid** | **String** | UUID identifier for the action | [optional] |

## Example

```ruby
require 'embed_workflow'

instance = EmbedWorkflow::ListActions200ResponseCollectionInner.new(
  hashid: null,
  completed_at: null,
  completed_at_string: May 24, 2025 03:06 pm EDT,
  completed_at_utc: null,
  execution_id: null,
  failed_at: null,
  failed_at_string: May 24, 2025 03:06 pm EDT,
  failed_at_utc: null,
  failure_note: Server Error,
  log: null,
  name: null,
  node_id: null,
  object: action,
  run_at: null,
  run_at_string: May 24, 2025 03:06 pm EDT,
  run_at_utc: null,
  status: null,
  stopped_at: null,
  stopped_at_string: May 24, 2025 03:06 pm EDT,
  stopped_at_utc: null,
  uuid: null
)
```

