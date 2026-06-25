# EmbedWorkflow::TriggersApi

All URIs are relative to *https://www.embedworkflow.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_trigger**](TriggersApi.md#delete_trigger) | **DELETE** /api/v1/triggers/{id} | Delete trigger |
| [**list_triggers**](TriggersApi.md#list_triggers) | **GET** /api/v1/triggers | List triggers |
| [**retrieve_trigger**](TriggersApi.md#retrieve_trigger) | **GET** /api/v1/triggers/{id} | Retrieve trigger |
| [**update_trigger**](TriggersApi.md#update_trigger) | **PUT** /api/v1/triggers/{id} | Update trigger |


## delete_trigger

> <DeleteActionType200Response> delete_trigger(id)

Delete trigger

### Examples

```ruby
require 'time'
require 'embed_workflow'
# setup authorization
EmbedWorkflow.configure do |config|
  # Configure Bearer authorization (JWT): bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = EmbedWorkflow::TriggersApi.new
id = 'id_example' # String | System-generated unique identifier

begin
  # Delete trigger
  result = api_instance.delete_trigger(id)
  p result
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling TriggersApi->delete_trigger: #{e}"
end
```

#### Using the delete_trigger_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteActionType200Response>, Integer, Hash)> delete_trigger_with_http_info(id)

```ruby
begin
  # Delete trigger
  data, status_code, headers = api_instance.delete_trigger_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteActionType200Response>
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling TriggersApi->delete_trigger_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | System-generated unique identifier |  |

### Return type

[**DeleteActionType200Response**](DeleteActionType200Response.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_triggers

> <ListTriggers200Response> list_triggers(opts)

List triggers

### Examples

```ruby
require 'time'
require 'embed_workflow'
# setup authorization
EmbedWorkflow.configure do |config|
  # Configure Bearer authorization (JWT): bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = EmbedWorkflow::TriggersApi.new
opts = {
  starting_after: 'starting_after_example', # String | Cursor for pagination - return results after this ID
  ending_before: 'ending_before_example', # String | Cursor for pagination - return results before this ID
  limit: 25 # Integer | Number of items to return (max 100)
}

begin
  # List triggers
  result = api_instance.list_triggers(opts)
  p result
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling TriggersApi->list_triggers: #{e}"
end
```

#### Using the list_triggers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListTriggers200Response>, Integer, Hash)> list_triggers_with_http_info(opts)

```ruby
begin
  # List triggers
  data, status_code, headers = api_instance.list_triggers_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListTriggers200Response>
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling TriggersApi->list_triggers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **starting_after** | **String** | Cursor for pagination - return results after this ID | [optional] |
| **ending_before** | **String** | Cursor for pagination - return results before this ID | [optional] |
| **limit** | **Integer** | Number of items to return (max 100) | [optional] |

### Return type

[**ListTriggers200Response**](ListTriggers200Response.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_trigger

> <ListTriggers200ResponseCollectionInner> retrieve_trigger(id)

Retrieve trigger

### Examples

```ruby
require 'time'
require 'embed_workflow'
# setup authorization
EmbedWorkflow.configure do |config|
  # Configure Bearer authorization (JWT): bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = EmbedWorkflow::TriggersApi.new
id = 'id_example' # String | System-generated unique identifier

begin
  # Retrieve trigger
  result = api_instance.retrieve_trigger(id)
  p result
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling TriggersApi->retrieve_trigger: #{e}"
end
```

#### Using the retrieve_trigger_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListTriggers200ResponseCollectionInner>, Integer, Hash)> retrieve_trigger_with_http_info(id)

```ruby
begin
  # Retrieve trigger
  data, status_code, headers = api_instance.retrieve_trigger_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListTriggers200ResponseCollectionInner>
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling TriggersApi->retrieve_trigger_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | System-generated unique identifier |  |

### Return type

[**ListTriggers200ResponseCollectionInner**](ListTriggers200ResponseCollectionInner.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_trigger

> <ListTriggers200ResponseCollectionInner> update_trigger(id, opts)

Update trigger

### Examples

```ruby
require 'time'
require 'embed_workflow'
# setup authorization
EmbedWorkflow.configure do |config|
  # Configure Bearer authorization (JWT): bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = EmbedWorkflow::TriggersApi.new
id = 'id_example' # String | System-generated unique identifier
opts = {
  update_trigger_request: EmbedWorkflow::UpdateTriggerRequest.new # UpdateTriggerRequest | 
}

begin
  # Update trigger
  result = api_instance.update_trigger(id, opts)
  p result
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling TriggersApi->update_trigger: #{e}"
end
```

#### Using the update_trigger_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListTriggers200ResponseCollectionInner>, Integer, Hash)> update_trigger_with_http_info(id, opts)

```ruby
begin
  # Update trigger
  data, status_code, headers = api_instance.update_trigger_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListTriggers200ResponseCollectionInner>
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling TriggersApi->update_trigger_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | System-generated unique identifier |  |
| **update_trigger_request** | [**UpdateTriggerRequest**](UpdateTriggerRequest.md) |  | [optional] |

### Return type

[**ListTriggers200ResponseCollectionInner**](ListTriggers200ResponseCollectionInner.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

