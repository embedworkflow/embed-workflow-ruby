# EmbedWorkflow::ListAvailableApps200ResponseCollectionInner

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
| **secondary_category** | **String** | Secondary category classification for the app | [optional] |

## Example

```ruby
require 'embed_workflow'

instance = EmbedWorkflow::ListAvailableApps200ResponseCollectionInner.new(
  name: null,
  app_identifier: null,
  description: null,
  icon: null,
  latest_version: null,
  object: available_app,
  primary_category: null,
  secondary_category: null
)
```

