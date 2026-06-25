# EmbedWorkflow::ListInstalledApps200ResponseCollectionInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | System-generated unique identifier | [optional] |
| **app_identifier** | **String** | Unique identifier for the app | [optional] |
| **app_version** | **String** | Currently installed version of the app | [optional] |
| **available_version** | **String** | Latest available version of the app | [optional] |
| **groups** | **Array&lt;String&gt;** | Permission groups that can access this app | [optional] |
| **icon** | **Object** | Icon configuration for the installed app | [optional] |
| **last_used_at** | **String** | Last used at in specified timezone | [optional] |
| **last_used_at_string** | **String** | Last used at formatted as human-readable string | [optional] |
| **last_used_at_utc** | **String** | Last used at in UTC | [optional] |
| **name** | **String** | Display name of the installed app | [optional] |
| **object** | **String** | Object type identifier | [optional] |
| **previous_version** | **String** | Previously installed version of the app | [optional] |
| **upgrade_available** | **Boolean** | Whether an upgrade is available for this app | [optional] |
| **upgraded_at** | **String** | Upgraded at in specified timezone | [optional] |
| **upgraded_at_string** | **String** | Upgraded at formatted as human-readable string | [optional] |
| **upgraded_at_utc** | **String** | Upgraded at in UTC | [optional] |

## Example

```ruby
require 'embed_workflow'

instance = EmbedWorkflow::ListInstalledApps200ResponseCollectionInner.new(
  id: null,
  app_identifier: null,
  app_version: null,
  available_version: null,
  groups: null,
  icon: null,
  last_used_at: null,
  last_used_at_string: May 24, 2025 03:06 pm EDT,
  last_used_at_utc: null,
  name: null,
  object: installed_app,
  previous_version: null,
  upgrade_available: null,
  upgraded_at: null,
  upgraded_at_string: May 24, 2025 03:06 pm EDT,
  upgraded_at_utc: null
)
```

