# EmbedWorkflow::UpdateWorkflowRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of resource |  |
| **key** | **String** | Client-provided unique identifier | [optional] |
| **auto_clone_for_new_users** | **Boolean** | Mark workflow as default template. When true, new users will automatically receive a clone of this workflow (Admin only) | [optional][default to false] |
| **is_template** | **Boolean** | Mark workflow as a template. When true, new users will see this in a library of templates (Admin only) | [optional][default to false] |
| **on** | **Boolean** | Enable or disable the resource. | [optional][default to true] |
| **details** | **String** | Description of the resource | [optional] |
| **template_draft** | [**CreateWorkflowRequestTemplateDraft**](CreateWorkflowRequestTemplateDraft.md) |  | [optional] |
| **trigger_conditions_draft** | **Object** | The trigger&#39;s conditions | [optional] |
| **event_trigger_draft** | **String** | The trigger&#39;s key | [optional] |
| **match_conditions_draft** | **String** | Whether all or any of the trigger conditions must match | [optional] |
| **groups** | **Array&lt;String&gt;** | User permission groups. Only available to users with admin role. | [optional] |

## Example

```ruby
require 'embed_workflow'

instance = EmbedWorkflow::UpdateWorkflowRequest.new(
  name: null,
  key: my-workflow,
  auto_clone_for_new_users: true,
  is_template: true,
  on: false,
  details: null,
  template_draft: null,
  trigger_conditions_draft: null,
  event_trigger_draft: new-lead,
  match_conditions_draft: null,
  groups: [&quot;admins&quot;,&quot;leads&quot;]
)
```

