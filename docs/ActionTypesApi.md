# EmbedWorkflow::ActionTypesApi

All URIs are relative to *https://www.embedworkflow.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_action_type**](ActionTypesApi.md#create_action_type) | **POST** /api/v1/action_types | Create action type |
| [**delete_action_type**](ActionTypesApi.md#delete_action_type) | **DELETE** /api/v1/action_types/{id} | Delete action type |
| [**discard_action_type_draft**](ActionTypesApi.md#discard_action_type_draft) | **POST** /api/v1/action_types/{id}/discard_draft | Discard action type draft |
| [**list_action_types**](ActionTypesApi.md#list_action_types) | **GET** /api/v1/action_types | List action types |
| [**publish_action_type**](ActionTypesApi.md#publish_action_type) | **POST** /api/v1/action_types/{id}/publish | Publish action type |
| [**retrieve_action_type**](ActionTypesApi.md#retrieve_action_type) | **GET** /api/v1/action_types/{id} | Retrieve action type |
| [**update_action_type**](ActionTypesApi.md#update_action_type) | **PUT** /api/v1/action_types/{id} | Update action type |


## create_action_type

> <ListActionTypes200ResponseCollectionInner> create_action_type(opts)

Create action type

### Examples

```ruby
require 'time'
require 'embed_workflow'
# setup authorization
EmbedWorkflow.configure do |config|
  # Configure Bearer authorization (JWT): bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = EmbedWorkflow::ActionTypesApi.new
opts = {
  create_action_type_request: EmbedWorkflow::CreateActionTypeRequest.new({name: 'name_example', type: 'CustomApiRequest'}) # CreateActionTypeRequest | 
}

begin
  # Create action type
  result = api_instance.create_action_type(opts)
  p result
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling ActionTypesApi->create_action_type: #{e}"
end
```

#### Using the create_action_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListActionTypes200ResponseCollectionInner>, Integer, Hash)> create_action_type_with_http_info(opts)

```ruby
begin
  # Create action type
  data, status_code, headers = api_instance.create_action_type_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListActionTypes200ResponseCollectionInner>
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling ActionTypesApi->create_action_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_action_type_request** | [**CreateActionTypeRequest**](CreateActionTypeRequest.md) |  | [optional] |

### Return type

[**ListActionTypes200ResponseCollectionInner**](ListActionTypes200ResponseCollectionInner.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_action_type

> <DeleteActionType200Response> delete_action_type(id)

Delete action type

### Examples

```ruby
require 'time'
require 'embed_workflow'
# setup authorization
EmbedWorkflow.configure do |config|
  # Configure Bearer authorization (JWT): bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = EmbedWorkflow::ActionTypesApi.new
id = 'id_example' # String | System-generated unique identifier

begin
  # Delete action type
  result = api_instance.delete_action_type(id)
  p result
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling ActionTypesApi->delete_action_type: #{e}"
end
```

#### Using the delete_action_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteActionType200Response>, Integer, Hash)> delete_action_type_with_http_info(id)

```ruby
begin
  # Delete action type
  data, status_code, headers = api_instance.delete_action_type_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteActionType200Response>
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling ActionTypesApi->delete_action_type_with_http_info: #{e}"
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


## discard_action_type_draft

> <ListActionTypes200ResponseCollectionInner> discard_action_type_draft(id)

Discard action type draft

### Examples

```ruby
require 'time'
require 'embed_workflow'
# setup authorization
EmbedWorkflow.configure do |config|
  # Configure Bearer authorization (JWT): bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = EmbedWorkflow::ActionTypesApi.new
id = 'id_example' # String | System-generated unique identifier

begin
  # Discard action type draft
  result = api_instance.discard_action_type_draft(id)
  p result
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling ActionTypesApi->discard_action_type_draft: #{e}"
end
```

#### Using the discard_action_type_draft_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListActionTypes200ResponseCollectionInner>, Integer, Hash)> discard_action_type_draft_with_http_info(id)

```ruby
begin
  # Discard action type draft
  data, status_code, headers = api_instance.discard_action_type_draft_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListActionTypes200ResponseCollectionInner>
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling ActionTypesApi->discard_action_type_draft_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | System-generated unique identifier |  |

### Return type

[**ListActionTypes200ResponseCollectionInner**](ListActionTypes200ResponseCollectionInner.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_action_types

> <ListActionTypes200Response> list_action_types(opts)

List action types

### Examples

```ruby
require 'time'
require 'embed_workflow'
# setup authorization
EmbedWorkflow.configure do |config|
  # Configure Bearer authorization (JWT): bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = EmbedWorkflow::ActionTypesApi.new
opts = {
  starting_after: 'starting_after_example', # String | Cursor for pagination - return results after this ID
  ending_before: 'ending_before_example', # String | Cursor for pagination - return results before this ID
  limit: 25, # Integer | Number of items to return (max 100)
  category: 'category_example' # String | Filter by category (matches primary or secondary)
}

begin
  # List action types
  result = api_instance.list_action_types(opts)
  p result
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling ActionTypesApi->list_action_types: #{e}"
end
```

#### Using the list_action_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListActionTypes200Response>, Integer, Hash)> list_action_types_with_http_info(opts)

```ruby
begin
  # List action types
  data, status_code, headers = api_instance.list_action_types_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListActionTypes200Response>
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling ActionTypesApi->list_action_types_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **starting_after** | **String** | Cursor for pagination - return results after this ID | [optional] |
| **ending_before** | **String** | Cursor for pagination - return results before this ID | [optional] |
| **limit** | **Integer** | Number of items to return (max 100) | [optional] |
| **category** | **String** | Filter by category (matches primary or secondary) | [optional] |

### Return type

[**ListActionTypes200Response**](ListActionTypes200Response.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## publish_action_type

> <ListActionTypes200ResponseCollectionInner> publish_action_type(id)

Publish action type

### Examples

```ruby
require 'time'
require 'embed_workflow'
# setup authorization
EmbedWorkflow.configure do |config|
  # Configure Bearer authorization (JWT): bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = EmbedWorkflow::ActionTypesApi.new
id = 'id_example' # String | System-generated unique identifier

begin
  # Publish action type
  result = api_instance.publish_action_type(id)
  p result
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling ActionTypesApi->publish_action_type: #{e}"
end
```

#### Using the publish_action_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListActionTypes200ResponseCollectionInner>, Integer, Hash)> publish_action_type_with_http_info(id)

```ruby
begin
  # Publish action type
  data, status_code, headers = api_instance.publish_action_type_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListActionTypes200ResponseCollectionInner>
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling ActionTypesApi->publish_action_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | System-generated unique identifier |  |

### Return type

[**ListActionTypes200ResponseCollectionInner**](ListActionTypes200ResponseCollectionInner.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_action_type

> <ListActionTypes200ResponseCollectionInner> retrieve_action_type(id)

Retrieve action type

### Examples

```ruby
require 'time'
require 'embed_workflow'
# setup authorization
EmbedWorkflow.configure do |config|
  # Configure Bearer authorization (JWT): bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = EmbedWorkflow::ActionTypesApi.new
id = 'id_example' # String | System-generated unique identifier

begin
  # Retrieve action type
  result = api_instance.retrieve_action_type(id)
  p result
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling ActionTypesApi->retrieve_action_type: #{e}"
end
```

#### Using the retrieve_action_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListActionTypes200ResponseCollectionInner>, Integer, Hash)> retrieve_action_type_with_http_info(id)

```ruby
begin
  # Retrieve action type
  data, status_code, headers = api_instance.retrieve_action_type_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListActionTypes200ResponseCollectionInner>
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling ActionTypesApi->retrieve_action_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | System-generated unique identifier |  |

### Return type

[**ListActionTypes200ResponseCollectionInner**](ListActionTypes200ResponseCollectionInner.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_action_type

> <ListActionTypes200ResponseCollectionInner> update_action_type(id, opts)

Update action type

### Examples

```ruby
require 'time'
require 'embed_workflow'
# setup authorization
EmbedWorkflow.configure do |config|
  # Configure Bearer authorization (JWT): bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = EmbedWorkflow::ActionTypesApi.new
id = 'id_example' # String | System-generated unique identifier
opts = {
  update_action_type_request: EmbedWorkflow::UpdateActionTypeRequest.new # UpdateActionTypeRequest | 
}

begin
  # Update action type
  result = api_instance.update_action_type(id, opts)
  p result
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling ActionTypesApi->update_action_type: #{e}"
end
```

#### Using the update_action_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListActionTypes200ResponseCollectionInner>, Integer, Hash)> update_action_type_with_http_info(id, opts)

```ruby
begin
  # Update action type
  data, status_code, headers = api_instance.update_action_type_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListActionTypes200ResponseCollectionInner>
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling ActionTypesApi->update_action_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | System-generated unique identifier |  |
| **update_action_type_request** | [**UpdateActionTypeRequest**](UpdateActionTypeRequest.md) |  | [optional] |

### Return type

[**ListActionTypes200ResponseCollectionInner**](ListActionTypes200ResponseCollectionInner.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

