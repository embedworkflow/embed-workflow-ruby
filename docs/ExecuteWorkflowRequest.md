# EmbedWorkflow::ExecuteWorkflowRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id_type** | **String** | Type of identifier used in the URL | [optional][default to &#39;id&#39;] |
| **user_key** | **String** | User&#39;s key | [optional][default to &#39;main&#39;] |
| **execution_data** | **Hash&lt;String, Object&gt;** | Data required to execute the workflow. Key-value pairs that provide context and variables needed during workflow execution. | [optional] |

## Example

```ruby
require 'embed_workflow'

instance = EmbedWorkflow::ExecuteWorkflowRequest.new(
  id_type: null,
  user_key: null,
  execution_data: {&quot;user_name&quot;:&quot;John Doe&quot;,&quot;company_id&quot;:&quot;abc123&quot;,&quot;custom_field&quot;:&quot;some value&quot;}
)
```

