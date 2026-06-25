# EmbedWorkflow::ListUsers200ResponseCollectionInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | Unique identifier for the user | [optional] |
| **created_at** | **String** | Created at in specified timezone | [optional] |
| **created_at_string** | **String** | Created at formatted as human-readable string | [optional] |
| **created_at_utc** | **String** | Created at in UTC | [optional] |
| **email** | **String** | User&#39;s email address | [optional] |
| **groups** | **Array&lt;String&gt;** | Permission groups the user belongs to | [optional] |
| **id** | **String** | System-generated unique identifier | [optional] |
| **name** | **String** | User&#39;s display name | [optional] |
| **object** | **String** | Object type identifier | [optional] |
| **time_zone** | **String** | Time zone setting for the user in IANA timezone format (e.g. &#39;America/New_York&#39;, &#39;Europe/London&#39;, &#39;Asia/Tokyo&#39;, &#39;Etc/UTC&#39;) | [optional] |
| **user_data_schema** | **Array&lt;Object&gt;** | User&#39;s data schema configuration | [optional] |

## Example

```ruby
require 'embed_workflow'

instance = EmbedWorkflow::ListUsers200ResponseCollectionInner.new(
  key: null,
  created_at: null,
  created_at_string: May 24, 2025 03:06 pm EDT,
  created_at_utc: null,
  email: null,
  groups: null,
  id: null,
  name: null,
  object: user,
  time_zone: null,
  user_data_schema: null
)
```

