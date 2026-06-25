# EmbedWorkflow::TriggerWorkflowRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_key** | **String** | User&#39;s key | [optional][default to &#39;main&#39;] |
| **execution_data** | **Hash&lt;String, Object&gt;** | Data required to execute the workflow. Key-value pairs that provide context and variables needed during workflow execution. | [optional] |
| **event** | **String** | The trigger&#39;s key | [optional] |
| **workflow_ids** | **Array&lt;String&gt;** | Array of workflow ids. | [optional] |
| **workflow_keys** | **Array&lt;String&gt;** | Array of workflow keys. | [optional] |

## Example

```ruby
require 'embed_workflow'

instance = EmbedWorkflow::TriggerWorkflowRequest.new(
  user_key: null,
  execution_data: {&quot;user_name&quot;:&quot;John Doe&quot;,&quot;company_id&quot;:&quot;abc123&quot;,&quot;custom_field&quot;:&quot;some value&quot;},
  event: new-lead,
  workflow_ids: [&quot;01970537-71e0-7361-882d-0c0c003e9169&quot;,&quot;01970537-7475-7efb-b990-3f66ce371370&quot;],
  workflow_keys: [&quot;workflow-a&quot;,&quot;workflow-b&quot;]
)
```

