# EmbedWorkflow::CreateWorkflowRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of resource |  |
| **user_key** | **String** | User&#39;s key | [optional][default to &#39;main&#39;] |
| **details** | **String** | Description of the resource | [optional] |
| **template_draft** | [**CreateWorkflowRequestTemplateDraft**](CreateWorkflowRequestTemplateDraft.md) |  | [optional] |
| **trigger_conditions_draft** | **Object** | The trigger&#39;s conditions | [optional] |
| **event_trigger_draft** | **String** | The trigger&#39;s key | [optional] |
| **match_conditions_draft** | **String** | Whether all or any of the trigger conditions must match | [optional] |
| **groups** | **Array&lt;String&gt;** | User permission groups. Only available to users with admin role. | [optional] |

## Example

```ruby
require 'embed_workflow'

instance = EmbedWorkflow::CreateWorkflowRequest.new(
  name: null,
  user_key: null,
  details: null,
  template_draft: null,
  trigger_conditions_draft: null,
  event_trigger_draft: new-lead,
  match_conditions_draft: null,
  groups: [&quot;admins&quot;,&quot;leads&quot;]
)
```

