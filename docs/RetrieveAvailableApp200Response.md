# EmbedWorkflow::RetrieveAvailableApp200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the app | [optional] |
| **app_identifier** | **String** | Unique identifier for the app | [optional] |
| **description** | **String** | Description of the available app | [optional] |
| **icon** | **Object** | Icon configuration for the available app | [optional] |
| **latest_version** | **String** | Latest available version of the app | [optional] |
| **object** | **String** | Object type identifier | [optional] |
| **primary_category** | **String** | Primary category classification for the app | [optional] |
| **schema** | **Hash&lt;String, Object&gt;** | App schema configuration | [optional] |
| **secondary_category** | **String** | Secondary category classification for the app | [optional] |

## Example

```ruby
require 'embed_workflow'

instance = EmbedWorkflow::RetrieveAvailableApp200Response.new(
  name: null,
  app_identifier: null,
  description: null,
  icon: null,
  latest_version: null,
  object: available_app,
  primary_category: null,
  schema: null,
  secondary_category: null
)
```

