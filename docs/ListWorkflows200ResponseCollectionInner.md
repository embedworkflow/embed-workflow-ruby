# EmbedWorkflow::ListWorkflows200ResponseCollectionInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier | [optional] |
| **action_type_ids** | **Array&lt;String&gt;** | Action type IDs used in this workflow&#39;s template | [optional] |
| **actions_count** | **Integer** | Number of actions in the workflow | [optional] |
| **created_at** | **String** | Created at in specified timezone | [optional] |
| **created_at_string** | **String** | Created at formatted as human-readable string | [optional] |
| **created_at_utc** | **String** | Created at in UTC | [optional] |
| **description** | **String** | Description of the workflow | [optional] |
| **event_trigger** | **Object** | Event trigger configuration | [optional] |
| **event_trigger_draft** | **Object** | Draft event trigger configuration | [optional] |
| **executions_count** | **Integer** | Number of times workflow has been executed | [optional] |
| **has_draft** | **Boolean** | Whether the workflow has unsaved draft changes | [optional] |
| **is_managed** | **Boolean** | Whether this workflow is managed by the account and read-only | [optional] |
| **key** | **String** | Unique key for the workflow | [optional] |
| **last_executed_at** | **String** | Last executed at in specified timezone | [optional] |
| **last_executed_at_string** | **String** | Last executed at formatted as human-readable string | [optional] |
| **last_executed_at_utc** | **String** | Last executed at in UTC | [optional] |
| **last_published_at** | **String** | Last published at in specified timezone | [optional] |
| **last_published_at_string** | **String** | Last published at formatted as human-readable string | [optional] |
| **last_published_at_utc** | **String** | Last published at in UTC | [optional] |
| **match_conditions** | **Object** | Conditions for matching workflow execution | [optional] |
| **match_conditions_draft** | **Object** | Draft conditions for matching workflow execution | [optional] |
| **name** | **String** | Name of the workflow | [optional] |
| **object** | **String** | Object type identifier | [optional] |
| **on** | **Boolean** | Whether the workflow is enabled | [optional] |
| **status** | **String** | Current status of the workflow | [optional] |
| **trigger_conditions** | **Hash&lt;String, Object&gt;** | Conditions for triggering the workflow | [optional] |
| **trigger_conditions_draft** | **Hash&lt;String, Object&gt;** | Draft conditions for triggering the workflow | [optional] |
| **updated_at** | **String** | Updated at in specified timezone | [optional] |
| **updated_at_string** | **String** | Updated at formatted as human-readable string | [optional] |
| **updated_at_utc** | **String** | Updated at in UTC | [optional] |

## Example

```ruby
require 'embed_workflow'

instance = EmbedWorkflow::ListWorkflows200ResponseCollectionInner.new(
  id: 01970396-e105-7bbc-ae46-591765fbaa72,
  action_type_ids: [&quot;abc123&quot;,&quot;def456&quot;],
  actions_count: 0,
  created_at: null,
  created_at_string: May 24, 2025 03:06 pm EDT,
  created_at_utc: null,
  description: Welcome workflow for new users,
  event_trigger: null,
  event_trigger_draft: null,
  executions_count: 0,
  has_draft: null,
  is_managed: null,
  key: workflow_3,
  last_executed_at: null,
  last_executed_at_string: May 24, 2025 03:06 pm EDT,
  last_executed_at_utc: null,
  last_published_at: null,
  last_published_at_string: May 24, 2025 03:06 pm EDT,
  last_published_at_utc: null,
  match_conditions: null,
  match_conditions_draft: null,
  name: Workflow 3,
  object: workflow,
  on: null,
  status: off,
  trigger_conditions: {},
  trigger_conditions_draft: {},
  updated_at: null,
  updated_at_string: May 24, 2025 03:06 pm EDT,
  updated_at_utc: null
)
```

