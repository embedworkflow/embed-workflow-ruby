# EmbedWorkflow::CreateWorkflowRequestTemplateDraftNodesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the node |  |
| **type** | **String** | Type of the node |  |
| **action_type_id** | **String** | Identifier for the action type | [optional] |
| **name** | **String** | Display name of the node | [optional] |
| **required_condition_result** | **Boolean** | Whether condition result is required | [optional] |
| **app_connection_id** | **String** | App connection identifier | [optional] |
| **action_data** | **Hash&lt;String, Object&gt;** | Additional action data (for Custom nodes) | [optional] |
| **prefix** | **String** | Data response schema prefix (for Custom nodes) | [optional] |
| **delay_n** | **Integer** | Delay amount (for Delay/Trigger nodes) | [optional] |
| **delay_unit** | **String** | Delay unit (for Delay/Trigger nodes) | [optional] |
| **minute_of_day** | **Integer** | Minute of day (for Delay/WaitUntil nodes) | [optional] |
| **minute_of_day_end** | **Integer** | End minute of day (for WaitUntil nodes) | [optional] |
| **days_of_week** | **Array&lt;Integer&gt;** | Days of week (for WaitUntil nodes) | [optional] |
| **event_trigger** | **String** | Event trigger identifier (for Trigger nodes) | [optional] |
| **conditions** | **Array&lt;Hash&lt;String, Object&gt;&gt;** | Array of conditions (for Trigger/Condition nodes) | [optional] |
| **match_conditions** | **String** | How to match conditions (for Trigger/Condition nodes) | [optional] |

## Example

```ruby
require 'embed_workflow'

instance = EmbedWorkflow::CreateWorkflowRequestTemplateDraftNodesInner.new(
  id: null,
  type: null,
  action_type_id: null,
  name: null,
  required_condition_result: null,
  app_connection_id: null,
  action_data: null,
  prefix: null,
  delay_n: null,
  delay_unit: null,
  minute_of_day: null,
  minute_of_day_end: null,
  days_of_week: null,
  event_trigger: null,
  conditions: null,
  match_conditions: null
)
```

