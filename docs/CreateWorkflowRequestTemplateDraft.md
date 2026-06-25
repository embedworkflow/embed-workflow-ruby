# EmbedWorkflow::CreateWorkflowRequestTemplateDraft

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **nodes** | [**Array&lt;CreateWorkflowRequestTemplateDraftNodesInner&gt;**](CreateWorkflowRequestTemplateDraftNodesInner.md) | Array of workflow nodes |  |
| **edges** | **Array&lt;String&gt;** | Array of connections between nodes in format &#39;sourceId-targetId&#39; |  |

## Example

```ruby
require 'embed_workflow'

instance = EmbedWorkflow::CreateWorkflowRequestTemplateDraft.new(
  nodes: null,
  edges: null
)
```

