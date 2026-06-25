# EmbedWorkflow::RetrieveExecution200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hashid** | **String** | System-generated unique identifier | [optional] |
| **actions_count** | **Integer** | Total number of actions in the execution | [optional] |
| **completed_actions_count** | **Integer** | Number of completed actions | [optional] |
| **created_at** | **String** | Created at in specified timezone | [optional] |
| **created_at_string** | **String** | Created at formatted as human-readable string | [optional] |
| **created_at_utc** | **String** | Created at in UTC | [optional] |
| **execution_data** | **Hash&lt;String, Object&gt;** | Data context for the execution | [optional] |
| **failed_actions_count** | **Integer** | Number of failed actions | [optional] |
| **id** | **String** | System-generated unique identifier | [optional] |
| **idle_actions_count** | **Integer** | Number of idle actions | [optional] |
| **key** | **String** | Unique key for the execution | [optional] |
| **log** | **Object** | Execution log details | [optional] |
| **name** | **String** | Name of the execution | [optional] |
| **object** | **String** | Object type identifier | [optional] |
| **running_actions_count** | **Integer** | Number of currently running actions | [optional] |
| **stats** | **Hash&lt;String, Object&gt;** | Execution statistics | [optional] |
| **status** | **String** | Current status of the execution | [optional] |
| **stopped_actions_count** | **Integer** | Number of stopped actions | [optional] |
| **template** | **Object** | Template layout for the execution | [optional] |

## Example

```ruby
require 'embed_workflow'

instance = EmbedWorkflow::RetrieveExecution200Response.new(
  hashid: null,
  actions_count: null,
  completed_actions_count: null,
  created_at: null,
  created_at_string: May 24, 2025 03:06 pm EDT,
  created_at_utc: null,
  execution_data: null,
  failed_actions_count: null,
  id: null,
  idle_actions_count: null,
  key: null,
  log: null,
  name: null,
  object: execution,
  running_actions_count: null,
  stats: null,
  status: null,
  stopped_actions_count: null,
  template: null
)
```

