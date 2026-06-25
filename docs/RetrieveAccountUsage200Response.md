# EmbedWorkflow::RetrieveAccountUsage200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active_workflows_count** | **Integer** | Number of active workflows (on: true) | [optional] |
| **end_time** | **String** | End of the usage period (ISO 8601 format) | [optional] |
| **executions_count** | **Integer** | Number of executions in the specified time period | [optional] |
| **object** | **String** | Object type identifier | [optional] |
| **start_time** | **String** | Start of the usage period (ISO 8601 format) | [optional] |
| **usage** | **Integer** | Total number of actions in the specified time period | [optional] |
| **users_count** | **Integer** | Total number of users in the account | [optional] |

## Example

```ruby
require 'embed_workflow'

instance = EmbedWorkflow::RetrieveAccountUsage200Response.new(
  active_workflows_count: 42,
  end_time: 2024-01-31T23:59:59Z,
  executions_count: 847,
  object: usage,
  start_time: 2024-01-01T00:00:00Z,
  usage: 1523,
  users_count: 150
)
```

