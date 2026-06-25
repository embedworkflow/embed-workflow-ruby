# EmbedWorkflow::CreateActionTypeRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of resource |  |
| **description** | **String** | Description of action type | [optional] |
| **type** | **String** | Type of action |  |
| **on** | **Boolean** | Enable or disable the resource. | [optional][default to true] |
| **params_draft** | **String** | HTTP parameters as key:value pairs, one per line | [optional] |
| **headers_draft** | **String** | HTTP headers as key:value pairs, one per line | [optional] |
| **url_draft** | **String** | HTTP url | [optional] |
| **http_method_draft** | **String** | HTTP method | [optional] |
| **code_draft** | **String** | JavaScript code snippt | [optional] |
| **publish** | **Boolean** | Whether or not you want to publish on create | [optional][default to false] |
| **form_draft** | [**Array&lt;CreateActionTypeRequestFormDraftInner&gt;**](CreateActionTypeRequestFormDraftInner.md) | Form field configuration | [optional] |
| **response_data_schema_draft** | [**Array&lt;UpdateAccountRequestUserDataSchemaInner&gt;**](UpdateAccountRequestUserDataSchemaInner.md) | Data schema configuration | [optional] |
| **groups** | **Array&lt;String&gt;** | User permission groups. Only available to users with admin role. | [optional] |
| **icon_draft** | [**CreateActionTypeRequestIconDraft**](CreateActionTypeRequestIconDraft.md) |  | [optional] |
| **primary_category** | **String** | Primary category for the action type | [optional] |
| **secondary_category** | **String** | Secondary category for the action type | [optional] |

## Example

```ruby
require 'embed_workflow'

instance = EmbedWorkflow::CreateActionTypeRequest.new(
  name: null,
  description: Sends an email,
  type: CustomApiRequest,
  on: false,
  params_draft: name:John
email:john@example.com,
  headers_draft: Authorization:Bearer {{ api_key }}
Content-Type:application/json,
  url_draft: https://{{base_url}}/cool_action,
  http_method_draft: post,
  code_draft: null,
  publish: null,
  form_draft: [{&quot;id&quot;:&quot;user_name&quot;,&quot;name&quot;:&quot;user_name&quot;,&quot;required&quot;:true,&quot;label&quot;:&quot;Full Name&quot;,&quot;description&quot;:&quot;Enter your full name&quot;,&quot;type&quot;:&quot;text&quot;,&quot;data&quot;:{&quot;max_length&quot;:100}},{&quot;id&quot;:&quot;user_email&quot;,&quot;name&quot;:&quot;email&quot;,&quot;required&quot;:true,&quot;label&quot;:&quot;Email Address&quot;,&quot;type&quot;:&quot;email&quot;,&quot;data&quot;:{}}],
  response_data_schema_draft: null,
  groups: [&quot;admins&quot;,&quot;leads&quot;],
  icon_draft: null,
  primary_category: flow_control,
  secondary_category: communication
)
```

