# EmbedWorkflow::CreateActionTypeRequestIconDraft

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Icon type identifier |  |
| **background_color** | **String** | Background color for the icon | [optional][default to &#39;gray:500&#39;] |
| **url** | **String** | Custom icon URL (optional) | [optional] |

## Example

```ruby
require 'embed_workflow'

instance = EmbedWorkflow::CreateActionTypeRequestIconDraft.new(
  type: clock,
  background_color: blue:900,
  url: https://example.com/icon.png
)
```

