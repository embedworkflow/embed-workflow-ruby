# EmbedWorkflow::ActionsApi

All URIs are relative to *https://www.embedworkflow.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_actions**](ActionsApi.md#list_actions) | **GET** /api/v1/actions | List actions |
| [**list_completed_actions**](ActionsApi.md#list_completed_actions) | **GET** /api/v1/actions/completed | List completed actions |
| [**list_failed_actions**](ActionsApi.md#list_failed_actions) | **GET** /api/v1/actions/failed | List failed actions |
| [**list_scheduled_actions**](ActionsApi.md#list_scheduled_actions) | **GET** /api/v1/actions/scheduled | List scheduled actions |
| [**list_workflow_actions**](ActionsApi.md#list_workflow_actions) | **GET** /api/v1/workflows/{workflow_id}/actions | List workflow actions |
| [**retry_action**](ActionsApi.md#retry_action) | **POST** /api/v1/actions/{hashid}/retry | Retry action |


## list_actions

> <ListActions200Response> list_actions(opts)

List actions

### Examples

```ruby
require 'time'
require 'embed_workflow'
# setup authorization
EmbedWorkflow.configure do |config|
  # Configure Bearer authorization (JWT): bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = EmbedWorkflow::ActionsApi.new
opts = {
  starting_after: 'starting_after_example', # String | Cursor for pagination - return results after this ID
  ending_before: 'ending_before_example', # String | Cursor for pagination - return results before this ID
  limit: 25, # Integer | Number of items to return (max 100)
  status: 'completed', # String | Filter results by status
  execution_id: 'execution_id_example', # String | Filter results by execution id
  workflow_id: 'workflow_id_example' # String | Filter results by workflow id
}

begin
  # List actions
  result = api_instance.list_actions(opts)
  p result
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling ActionsApi->list_actions: #{e}"
end
```

#### Using the list_actions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListActions200Response>, Integer, Hash)> list_actions_with_http_info(opts)

```ruby
begin
  # List actions
  data, status_code, headers = api_instance.list_actions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListActions200Response>
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling ActionsApi->list_actions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **starting_after** | **String** | Cursor for pagination - return results after this ID | [optional] |
| **ending_before** | **String** | Cursor for pagination - return results before this ID | [optional] |
| **limit** | **Integer** | Number of items to return (max 100) | [optional] |
| **status** | **String** | Filter results by status | [optional] |
| **execution_id** | **String** | Filter results by execution id | [optional] |
| **workflow_id** | **String** | Filter results by workflow id | [optional] |

### Return type

[**ListActions200Response**](ListActions200Response.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_completed_actions

> <ListActions200Response> list_completed_actions(status, opts)

List completed actions

### Examples

```ruby
require 'time'
require 'embed_workflow'
# setup authorization
EmbedWorkflow.configure do |config|
  # Configure Bearer authorization (JWT): bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = EmbedWorkflow::ActionsApi.new
status = 'completed' # String | Filter results by status
opts = {
  starting_after: 'starting_after_example', # String | Cursor for pagination - return results after this ID
  ending_before: 'ending_before_example', # String | Cursor for pagination - return results before this ID
  limit: 25, # Integer | Number of items to return (max 100)
  execution_id: 'execution_id_example', # String | Filter results by execution id
  workflow_id: 'workflow_id_example' # String | Filter results by workflow id
}

begin
  # List completed actions
  result = api_instance.list_completed_actions(status, opts)
  p result
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling ActionsApi->list_completed_actions: #{e}"
end
```

#### Using the list_completed_actions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListActions200Response>, Integer, Hash)> list_completed_actions_with_http_info(status, opts)

```ruby
begin
  # List completed actions
  data, status_code, headers = api_instance.list_completed_actions_with_http_info(status, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListActions200Response>
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling ActionsApi->list_completed_actions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Filter results by status |  |
| **starting_after** | **String** | Cursor for pagination - return results after this ID | [optional] |
| **ending_before** | **String** | Cursor for pagination - return results before this ID | [optional] |
| **limit** | **Integer** | Number of items to return (max 100) | [optional] |
| **execution_id** | **String** | Filter results by execution id | [optional] |
| **workflow_id** | **String** | Filter results by workflow id | [optional] |

### Return type

[**ListActions200Response**](ListActions200Response.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_failed_actions

> <ListActions200Response> list_failed_actions(status, opts)

List failed actions

### Examples

```ruby
require 'time'
require 'embed_workflow'
# setup authorization
EmbedWorkflow.configure do |config|
  # Configure Bearer authorization (JWT): bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = EmbedWorkflow::ActionsApi.new
status = 'completed' # String | Filter results by status
opts = {
  starting_after: 'starting_after_example', # String | Cursor for pagination - return results after this ID
  ending_before: 'ending_before_example', # String | Cursor for pagination - return results before this ID
  limit: 25, # Integer | Number of items to return (max 100)
  execution_id: 'execution_id_example', # String | Filter results by execution id
  workflow_id: 'workflow_id_example' # String | Filter results by workflow id
}

begin
  # List failed actions
  result = api_instance.list_failed_actions(status, opts)
  p result
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling ActionsApi->list_failed_actions: #{e}"
end
```

#### Using the list_failed_actions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListActions200Response>, Integer, Hash)> list_failed_actions_with_http_info(status, opts)

```ruby
begin
  # List failed actions
  data, status_code, headers = api_instance.list_failed_actions_with_http_info(status, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListActions200Response>
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling ActionsApi->list_failed_actions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Filter results by status |  |
| **starting_after** | **String** | Cursor for pagination - return results after this ID | [optional] |
| **ending_before** | **String** | Cursor for pagination - return results before this ID | [optional] |
| **limit** | **Integer** | Number of items to return (max 100) | [optional] |
| **execution_id** | **String** | Filter results by execution id | [optional] |
| **workflow_id** | **String** | Filter results by workflow id | [optional] |

### Return type

[**ListActions200Response**](ListActions200Response.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_scheduled_actions

> <ListActions200Response> list_scheduled_actions(status, opts)

List scheduled actions

### Examples

```ruby
require 'time'
require 'embed_workflow'
# setup authorization
EmbedWorkflow.configure do |config|
  # Configure Bearer authorization (JWT): bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = EmbedWorkflow::ActionsApi.new
status = 'completed' # String | Filter results by status
opts = {
  starting_after: 'starting_after_example', # String | Cursor for pagination - return results after this ID
  ending_before: 'ending_before_example', # String | Cursor for pagination - return results before this ID
  limit: 25, # Integer | Number of items to return (max 100)
  execution_id: 'execution_id_example', # String | Filter results by execution id
  workflow_id: 'workflow_id_example' # String | Filter results by workflow id
}

begin
  # List scheduled actions
  result = api_instance.list_scheduled_actions(status, opts)
  p result
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling ActionsApi->list_scheduled_actions: #{e}"
end
```

#### Using the list_scheduled_actions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListActions200Response>, Integer, Hash)> list_scheduled_actions_with_http_info(status, opts)

```ruby
begin
  # List scheduled actions
  data, status_code, headers = api_instance.list_scheduled_actions_with_http_info(status, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListActions200Response>
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling ActionsApi->list_scheduled_actions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Filter results by status |  |
| **starting_after** | **String** | Cursor for pagination - return results after this ID | [optional] |
| **ending_before** | **String** | Cursor for pagination - return results before this ID | [optional] |
| **limit** | **Integer** | Number of items to return (max 100) | [optional] |
| **execution_id** | **String** | Filter results by execution id | [optional] |
| **workflow_id** | **String** | Filter results by workflow id | [optional] |

### Return type

[**ListActions200Response**](ListActions200Response.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_workflow_actions

> <ListActions200Response> list_workflow_actions(workflow_id, opts)

List workflow actions

### Examples

```ruby
require 'time'
require 'embed_workflow'
# setup authorization
EmbedWorkflow.configure do |config|
  # Configure Bearer authorization (JWT): bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = EmbedWorkflow::ActionsApi.new
workflow_id = 'workflow_id_example' # String | Filter results by workflow id
opts = {
  starting_after: 'starting_after_example', # String | Cursor for pagination - return results after this ID
  ending_before: 'ending_before_example', # String | Cursor for pagination - return results before this ID
  limit: 25 # Integer | Number of items to return (max 100)
}

begin
  # List workflow actions
  result = api_instance.list_workflow_actions(workflow_id, opts)
  p result
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling ActionsApi->list_workflow_actions: #{e}"
end
```

#### Using the list_workflow_actions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListActions200Response>, Integer, Hash)> list_workflow_actions_with_http_info(workflow_id, opts)

```ruby
begin
  # List workflow actions
  data, status_code, headers = api_instance.list_workflow_actions_with_http_info(workflow_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListActions200Response>
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling ActionsApi->list_workflow_actions_with_http_info: #{e}"
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

[**ListActions200Response**](ListActions200Response.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retry_action

> Object retry_action(hashid, opts)

Retry action

### Examples

```ruby
require 'time'
require 'embed_workflow'
# setup authorization
EmbedWorkflow.configure do |config|
  # Configure Bearer authorization (JWT): bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = EmbedWorkflow::ActionsApi.new
hashid = 'hashid_example' # String | Action's hashid
opts = {
  retry_action_request: EmbedWorkflow::RetryActionRequest.new({user_key: 'user_key_example', hook_id: '0197053c-1672-7132-b9e9-4c2033a26ac7'}) # RetryActionRequest | 
}

begin
  # Retry action
  result = api_instance.retry_action(hashid, opts)
  p result
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling ActionsApi->retry_action: #{e}"
end
```

#### Using the retry_action_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> retry_action_with_http_info(hashid, opts)

```ruby
begin
  # Retry action
  data, status_code, headers = api_instance.retry_action_with_http_info(hashid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling ActionsApi->retry_action_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hashid** | **String** | Action&#39;s hashid |  |
| **retry_action_request** | [**RetryActionRequest**](RetryActionRequest.md) |  | [optional] |

### Return type

**Object**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

