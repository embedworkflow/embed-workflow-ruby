# EmbedWorkflow::DiscardWorkflowDraftRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_key** | **String** | User&#39;s key | [optional][default to &#39;main&#39;] |
| **expand** | **Array&lt;String&gt;** | Expand related objects | [optional] |

## Example

```ruby
require 'embed_workflow'

instance = EmbedWorkflow::DiscardWorkflowDraftRequest.new(
  user_key: null,
  expand: [&quot;event_trigger&quot;,&quot;event_trigger_draft&quot;]
)
```

