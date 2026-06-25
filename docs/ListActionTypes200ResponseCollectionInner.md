# EmbedWorkflow::ListActionTypes200ResponseCollectionInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | System-generated unique identifier | [optional] |
| **app_name** | **String** | Human-readable name of the app connection | [optional] |
| **callback_timeout_n** | **Integer** | Callback timeout duration value | [optional] |
| **callback_timeout_unit** | **String** | Callback timeout duration unit | [optional] |
| **code** | **String** | Code content for the action type | [optional] |
| **code_draft** | **String** | Draft code content for the action type | [optional] |
| **created_at** | **String** | Created at in specified timezone | [optional] |
| **created_at_string** | **String** | Created at formatted as human-readable string | [optional] |
| **created_at_utc** | **String** | Created at in UTC | [optional] |
| **description** | **String** | Description of the action type | [optional] |
| **executed_count** | **Integer** | Number of times this action type has been executed | [optional] |
| **groups** | **Array&lt;String&gt;** | Permission groups for this action type | [optional] |
| **has_draft** | **Boolean** | Whether the action type has unsaved draft changes | [optional] |
| **headers** | **String** | Headers configuration for the action type | [optional] |
| **headers_draft** | **String** | Draft headers configuration for the action type | [optional] |
| **http_method** | **String** | HTTP method for the action type | [optional] |
| **http_method_draft** | **String** | Draft HTTP method for the action type | [optional] |
| **icon** | **Object** | Icon configuration for the action type | [optional] |
| **icon_draft** | **Object** | Draft icon configuration for the action type | [optional] |
| **last_executed_at** | **String** | Last executed at in specified timezone | [optional] |
| **last_executed_at_string** | **String** | Last executed at formatted as human-readable string | [optional] |
| **last_executed_at_utc** | **String** | Last executed at in UTC | [optional] |
| **last_published_at** | **String** | Last published at in specified timezone | [optional] |
| **last_published_at_string** | **String** | Last published at formatted as human-readable string | [optional] |
| **last_published_at_utc** | **String** | Last published at in UTC | [optional] |
| **name** | **String** | Name of the action type | [optional] |
| **object** | **String** | Object type identifier | [optional] |
| **on** | **Boolean** | Whether the action type is enabled | [optional] |
| **params** | **String** | Parameters configuration for the action type | [optional] |
| **params_draft** | **String** | Draft parameters configuration for the action type | [optional] |
| **primary_category** | **String** | Primary category classification | [optional] |
| **required_app_connection** | **String** | The required app connection for this action type | [optional] |
| **secondary_category** | **String** | Secondary category classification | [optional] |
| **source** | **String** | Source identifier for the action type | [optional] |
| **type** | **String** | Type classification of the action | [optional] |
| **updated_at** | **String** | Updated at in specified timezone | [optional] |
| **updated_at_string** | **String** | Updated at formatted as human-readable string | [optional] |
| **updated_at_utc** | **String** | Updated at in UTC | [optional] |
| **url** | **String** | URL for the action type | [optional] |
| **url_draft** | **String** | Draft URL for the action type | [optional] |
| **wait_for_callback** | **Boolean** | When true, actions fire the webhook but wait for an external callback before completing | [optional] |
| **form** | **Array&lt;Object&gt;** | Form fields for the action type | [optional] |
| **form_draft** | **Array&lt;Object&gt;** | Draft form fields for the action type | [optional] |
| **response_data_schema** | **Array&lt;Object&gt;** | Response data schema for the action type | [optional] |
| **response_data_schema_draft** | **Array&lt;Object&gt;** | Draft response data schema for the action type | [optional] |

## Example

```ruby
require 'embed_workflow'

instance = EmbedWorkflow::ListActionTypes200ResponseCollectionInner.new(
  id: null,
  app_name: null,
  callback_timeout_n: null,
  callback_timeout_unit: null,
  code: null,
  code_draft: null,
  created_at: null,
  created_at_string: May 24, 2025 03:06 pm EDT,
  created_at_utc: null,
  description: null,
  executed_count: null,
  groups: null,
  has_draft: null,
  headers: null,
  headers_draft: null,
  http_method: null,
  http_method_draft: null,
  icon: null,
  icon_draft: null,
  last_executed_at: null,
  last_executed_at_string: May 24, 2025 03:06 pm EDT,
  last_executed_at_utc: null,
  last_published_at: null,
  last_published_at_string: May 24, 2025 03:06 pm EDT,
  last_published_at_utc: null,
  name: null,
  object: action_type,
  on: null,
  params: null,
  params_draft: null,
  primary_category: null,
  required_app_connection: null,
  secondary_category: null,
  source: null,
  type: null,
  updated_at: null,
  updated_at_string: May 24, 2025 03:06 pm EDT,
  updated_at_utc: null,
  url: null,
  url_draft: null,
  wait_for_callback: null,
  form: null,
  form_draft: null,
  response_data_schema: null,
  response_data_schema_draft: null
)
```

