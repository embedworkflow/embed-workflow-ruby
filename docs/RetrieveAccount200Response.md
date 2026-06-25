# EmbedWorkflow::RetrieveAccount200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action_type_categories** | **Array&lt;Object&gt;** | Available action type categories for the account | [optional] |
| **action_type_categories_enabled** | **Boolean** | Whether action type categories are enabled for display | [optional] |
| **company_name** | **String** | Company name associated with the account | [optional] |
| **custom_domain** | **String** | Custom domain for the account | [optional] |
| **data** | **Hash&lt;String, Object&gt;** | Additional account data | [optional] |
| **groups** | **Array&lt;String&gt;** | Permission groups for the account | [optional] |
| **id** | **String** | System-generated unique identifier | [optional] |
| **level** | **Integer** | Account level or tier | [optional] |
| **object** | **String** | Object type identifier | [optional] |
| **theme** | **String** | Theme setting for the account | [optional] |
| **time_zone** | **String** | Time zone setting for the account in IANA timezone format (e.g. &#39;America/New_York&#39;, &#39;Europe/London&#39;, &#39;Asia/Tokyo&#39;, &#39;Etc/UTC&#39;) | [optional] |
| **user_name** | **String** | User name from context | [optional] |
| **user_time_zone** | **String** | Time zone setting for the user in IANA timezone format (e.g. &#39;America/New_York&#39;, &#39;Europe/London&#39;, &#39;Asia/Tokyo&#39;, &#39;Etc/UTC&#39;) | [optional] |
| **data_schema** | **Array&lt;Object&gt;** | Account data schema | [optional] |
| **user_data_schema** | **Array&lt;Object&gt;** | User data schema for the account | [optional] |

## Example

```ruby
require 'embed_workflow'

instance = EmbedWorkflow::RetrieveAccount200Response.new(
  action_type_categories: null,
  action_type_categories_enabled: null,
  company_name: null,
  custom_domain: null,
  data: null,
  groups: null,
  id: null,
  level: null,
  object: account,
  theme: null,
  time_zone: null,
  user_name: null,
  user_time_zone: null,
  data_schema: null,
  user_data_schema: null
)
```

