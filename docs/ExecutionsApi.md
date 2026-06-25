# EmbedWorkflow::ExecutionsApi

All URIs are relative to *https://www.embedworkflow.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_workflow_executions**](ExecutionsApi.md#list_workflow_executions) | **GET** /api/v1/workflows/{workflow_id}/executions | List workflow executions |
| [**retrieve_execution**](ExecutionsApi.md#retrieve_execution) | **GET** /api/v1/executions/{id} | Retrieve execution |
| [**stop_executions**](ExecutionsApi.md#stop_executions) | **POST** /api/v1/executions/stop | Stop executions |


## list_workflow_executions

> <ListWorkflowExecutions200Response> list_workflow_executions(workflow_id, opts)

List workflow executions

### Examples

```ruby
require 'time'
require 'embed_workflow'
# setup authorization
EmbedWorkflow.configure do |config|
  # Configure Bearer authorization (JWT): bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = EmbedWorkflow::ExecutionsApi.new
workflow_id = 'workflow_id_example' # String | Filter results by workflow id
opts = {
  starting_after: 'starting_after_example', # String | Cursor for pagination - return results after this ID
  ending_before: 'ending_before_example', # String | Cursor for pagination - return results before this ID
  limit: 25 # Integer | Number of items to return (max 100)
}

begin
  # List workflow executions
  result = api_instance.list_workflow_executions(workflow_id, opts)
  p result
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling ExecutionsApi->list_workflow_executions: #{e}"
end
```

#### Using the list_workflow_executions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorkflowExecutions200Response>, Integer, Hash)> list_workflow_executions_with_http_info(workflow_id, opts)

```ruby
begin
  # List workflow executions
  data, status_code, headers = api_instance.list_workflow_executions_with_http_info(workflow_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorkflowExecutions200Response>
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling ExecutionsApi->list_workflow_executions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workflow_id** | **String** | Filter results by workflow id |  |
| **starting_after** | **String** | Cursor for pagination - return results after this ID | [optional] |
| **ending_before** | **String** | Cursor for pagination - return results before this ID | [optional] |
| **limit** | **Integer** | Number of items to return (max 100) | [optional] |

### Return type

[**ListWorkflowExecutions200Response**](ListWorkflowExecutions200Response.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_execution

> <RetrieveExecution200Response> retrieve_execution(id, opts)

Retrieve execution

### Examples

```ruby
require 'time'
require 'embed_workflow'
# setup authorization
EmbedWorkflow.configure do |config|
  # Configure Bearer authorization (JWT): bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = EmbedWorkflow::ExecutionsApi.new
id = 'id_example' # String | System-generated unique identifier
opts = {
  id_type: 'id_type_example' # String | Type of identifier used in the URL
}

begin
  # Retrieve execution
  result = api_instance.retrieve_execution(id, opts)
  p result
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling ExecutionsApi->retrieve_execution: #{e}"
end
```

#### Using the retrieve_execution_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RetrieveExecution200Response>, Integer, Hash)> retrieve_execution_with_http_info(id, opts)

```ruby
begin
  # Retrieve execution
  data, status_code, headers = api_instance.retrieve_execution_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RetrieveExecution200Response>
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling ExecutionsApi->retrieve_execution_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | System-generated unique identifier |  |
| **id_type** | **String** | Type of identifier used in the URL | [optional] |

### Return type

[**RetrieveExecution200Response**](RetrieveExecution200Response.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## stop_executions

> Object stop_executions(opts)

Stop executions

### Examples

```ruby
require 'time'
require 'embed_workflow'
# setup authorization
EmbedWorkflow.configure do |config|
  # Configure Bearer authorization (JWT): bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = EmbedWorkflow::ExecutionsApi.new
opts = {
  stop_executions_request: EmbedWorkflow::StopExecutionsRequest.new({user_key: 'user_key_example'}) # StopExecutionsRequest | 
}

begin
  # Stop executions
  result = api_instance.stop_executions(opts)
  p result
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling ExecutionsApi->stop_executions: #{e}"
end
```

#### Using the stop_executions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> stop_executions_with_http_info(opts)

```ruby
begin
  # Stop executions
  data, status_code, headers = api_instance.stop_executions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling ExecutionsApi->stop_executions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stop_executions_request** | [**StopExecutionsRequest**](StopExecutionsRequest.md) |  | [optional] |

### Return type

**Object**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

