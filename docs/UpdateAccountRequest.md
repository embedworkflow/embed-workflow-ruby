# EmbedWorkflow::UpdateAccountRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_name** | **String** | Company name associated with the account | [optional] |
| **user_name** | **String** | User name for the account | [optional] |
| **theme** | **String** | Theme setting for the account | [optional] |
| **time_zone** | **String** | Time zone setting for the account | [optional] |
| **custom_domain** | **String** | Custom domain for the account | [optional] |
| **groups** | **Array&lt;String&gt;** | User permission groups. Only available to users with admin role. | [optional] |
| **action_type_categories_enabled** | **Boolean** | Enable or disable action type categories display | [optional][default to false] |
| **action_type_categories** | [**Array&lt;UpdateAccountRequestActionTypeCategoriesInner&gt;**](UpdateAccountRequestActionTypeCategoriesInner.md) | Action type categories for the account. | [optional] |
| **data** | **Hash&lt;String, Object&gt;** | Additional account data | [optional] |
| **user_data_schema** | [**Array&lt;UpdateAccountRequestUserDataSchemaInner&gt;**](UpdateAccountRequestUserDataSchemaInner.md) | Data schema configuration | [optional] |
| **data_schema** | [**Array&lt;UpdateAccountRequestUserDataSchemaInner&gt;**](UpdateAccountRequestUserDataSchemaInner.md) | Data schema configuration | [optional] |

## Example

```ruby
require 'embed_workflow'

instance = EmbedWorkflow::UpdateAccountRequest.new(
  company_name: null,
  user_name: null,
  theme: null,
  time_zone: America/New_York,
  custom_domain: mycompany.com,
  groups: [&quot;admins&quot;,&quot;leads&quot;],
  action_type_categories_enabled: null,
  action_type_categories: [{&quot;key&quot;:&quot;flow_control&quot;,&quot;name&quot;:&quot;Flow Control&quot;,&quot;description&quot;:&quot;Logic, branching, and delays&quot;,&quot;icon&quot;:{&quot;type&quot;:&quot;arrows-right-left&quot;,&quot;background_color&quot;:&quot;emerald&quot;}},{&quot;key&quot;:&quot;communication&quot;,&quot;name&quot;:&quot;Communication&quot;,&quot;description&quot;:&quot;Messaging and email services&quot;,&quot;icon&quot;:{&quot;type&quot;:&quot;chat-bubble-left-right&quot;,&quot;background_color&quot;:&quot;sky&quot;}}],
  data: null,
  user_data_schema: null,
  data_schema: null
)
```

