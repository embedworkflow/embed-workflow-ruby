# EmbedWorkflow::ListDataFields200ResponseCollectionInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **variable** | **String** | Variable name used in templates | [optional] |
| **data_path** | **String** | Path to the data within the structure | [optional] |
| **display_label** | **String** | Display label for the data type | [optional] |
| **format** | **String** | Format specification for the data type | [optional] |
| **groups** | **Array&lt;String&gt;** | Permission groups for this data type | [optional] |
| **item_type** | **String** | Type of each item in a List (e.g., &#39;Object&#39;, &#39;String&#39;, &#39;Integer&#39;) | [optional] |
| **iterator** | **String** | Variable name for the current item when iterating over a List | [optional] |
| **list_values_variable** | **String** | Variable name for list values | [optional] |
| **object** | **String** | Object type identifier | [optional] |
| **required** | **Boolean** | Whether this data type is required | [optional] |
| **secret** | **Boolean** | Whether this field value should be redacted in logs and API responses | [optional] |
| **source** | **String** | Source identifier for the data type | [optional] |
| **type** | **String** | Data type identifier | [optional] |
| **value** | **String** | Default or current value | [optional] |
| **children** | **Array&lt;Object&gt;** | Nested schema definitions. For arrays: single element defining item type. For objects: multiple elements defining properties | [optional] |

## Example

```ruby
require 'embed_workflow'

instance = EmbedWorkflow::ListDataFields200ResponseCollectionInner.new(
  variable: null,
  data_path: null,
  display_label: null,
  format: null,
  groups: null,
  item_type: null,
  iterator: null,
  list_values_variable: null,
  object: data_type,
  required: null,
  secret: null,
  source: null,
  type: null,
  value: null,
  children: null
)
```

