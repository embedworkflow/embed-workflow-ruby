# EmbedWorkflow::DataFieldsApi

All URIs are relative to *https://www.embedworkflow.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**evaluate_expression**](DataFieldsApi.md#evaluate_expression) | **POST** /api/v1/data_fields/evaluate | Evaluate expression |
| [**list_data_fields**](DataFieldsApi.md#list_data_fields) | **GET** /api/v1/data_fields | List data fields |
| [**list_workflow_data_fields**](DataFieldsApi.md#list_workflow_data_fields) | **GET** /api/v1/workflows/{id}/data_fields | List workflow data fields |


## evaluate_expression

> <EvaluateExpression200Response> evaluate_expression(opts)

Evaluate expression

### Examples

```ruby
require 'time'
require 'embed_workflow'
# setup authorization
EmbedWorkflow.configure do |config|
  # Configure Bearer authorization (JWT): bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = EmbedWorkflow::DataFieldsApi.new
opts = {
  evaluate_expression_request: EmbedWorkflow::EvaluateExpressionRequest.new({expression: 'expression_example', data: { key: 3.56}}) # EvaluateExpressionRequest | 
}

begin
  # Evaluate expression
  result = api_instance.evaluate_expression(opts)
  p result
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling DataFieldsApi->evaluate_expression: #{e}"
end
```

#### Using the evaluate_expression_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EvaluateExpression200Response>, Integer, Hash)> evaluate_expression_with_http_info(opts)

```ruby
begin
  # Evaluate expression
  data, status_code, headers = api_instance.evaluate_expression_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EvaluateExpression200Response>
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling DataFieldsApi->evaluate_expression_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **evaluate_expression_request** | [**EvaluateExpressionRequest**](EvaluateExpressionRequest.md) |  | [optional] |

### Return type

[**EvaluateExpression200Response**](EvaluateExpression200Response.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_data_fields

> <ListDataFields200Response> list_data_fields(opts)

List data fields

### Examples

```ruby
require 'time'
require 'embed_workflow'
# setup authorization
EmbedWorkflow.configure do |config|
  # Configure Bearer authorization (JWT): bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = EmbedWorkflow::DataFieldsApi.new
opts = {
  user_key: 'user_123', # String | Filter results by user key
  event_trigger: 'event_trigger_example', # String | Filter results by event trigger
  type: nil # ListDataFieldsTypeParameter | Data type filter - can be a single type or multiple types
}

begin
  # List data fields
  result = api_instance.list_data_fields(opts)
  p result
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling DataFieldsApi->list_data_fields: #{e}"
end
```

#### Using the list_data_fields_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListDataFields200Response>, Integer, Hash)> list_data_fields_with_http_info(opts)

```ruby
begin
  # List data fields
  data, status_code, headers = api_instance.list_data_fields_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListDataFields200Response>
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling DataFieldsApi->list_data_fields_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_key** | **String** | Filter results by user key | [optional] |
| **event_trigger** | **String** | Filter results by event trigger | [optional] |
| **type** | [**ListDataFieldsTypeParameter**](.md) | Data type filter - can be a single type or multiple types | [optional] |

### Return type

[**ListDataFields200Response**](ListDataFields200Response.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_workflow_data_fields

> <ListDataFields200Response> list_workflow_data_fields(id, opts)

List workflow data fields

### Examples

```ruby
require 'time'
require 'embed_workflow'
# setup authorization
EmbedWorkflow.configure do |config|
  # Configure Bearer authorization (JWT): bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = EmbedWorkflow::DataFieldsApi.new
id = 'id_example' # String | System-generated unique identifier
opts = {
  node_id: 'node_456', # String | Node ID to determine current workflow position
  parent_node_id: 'node_123', # String | Parent node ID to determine workflow position
  user_key: 'user_123', # String | User context for determining available data fields
  event_trigger: 'event_trigger_example', # String | Event trigger context for determining available data fields
  action_event_trigger: 'action_event_trigger_example', # String | Action's event trigger context for determining available data fields
  type: nil # ListDataFieldsTypeParameter | Data type filter - can be a single type or multiple types
}

begin
  # List workflow data fields
  result = api_instance.list_workflow_data_fields(id, opts)
  p result
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling DataFieldsApi->list_workflow_data_fields: #{e}"
end
```

#### Using the list_workflow_data_fields_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListDataFields200Response>, Integer, Hash)> list_workflow_data_fields_with_http_info(id, opts)

```ruby
begin
  # List workflow data fields
  data, status_code, headers = api_instance.list_workflow_data_fields_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListDataFields200Response>
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling DataFieldsApi->list_workflow_data_fields_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | System-generated unique identifier |  |
| **node_id** | **String** | Node ID to determine current workflow position | [optional] |
| **parent_node_id** | **String** | Parent node ID to determine workflow position | [optional] |
| **user_key** | **String** | User context for determining available data fields | [optional] |
| **event_trigger** | **String** | Event trigger context for determining available data fields | [optional] |
| **action_event_trigger** | **String** | Action&#39;s event trigger context for determining available data fields | [optional] |
| **type** | [**ListDataFieldsTypeParameter**](.md) | Data type filter - can be a single type or multiple types | [optional] |

### Return type

[**ListDataFields200Response**](ListDataFields200Response.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

