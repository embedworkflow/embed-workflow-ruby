# EmbedWorkflow::AppConnectionsApi

All URIs are relative to *https://www.embedworkflow.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_app_connection**](AppConnectionsApi.md#create_app_connection) | **POST** /api/v1/app_connections | Create app connection |
| [**delete_app_connection**](AppConnectionsApi.md#delete_app_connection) | **DELETE** /api/v1/app_connections/{id} | Delete app connection |
| [**list_app_connections**](AppConnectionsApi.md#list_app_connections) | **GET** /api/v1/app_connections | List app connections |
| [**retrieve_app_connection**](AppConnectionsApi.md#retrieve_app_connection) | **GET** /api/v1/app_connections/{id} | Retrieve app connection |
| [**update_app_connection**](AppConnectionsApi.md#update_app_connection) | **PUT** /api/v1/app_connections/{id} | Update app connection |


## create_app_connection

> <ListAppConnections200ResponseCollectionInner> create_app_connection(opts)

Create app connection

### Examples

```ruby
require 'time'
require 'embed_workflow'
# setup authorization
EmbedWorkflow.configure do |config|
  # Configure Bearer authorization (JWT): bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = EmbedWorkflow::AppConnectionsApi.new
opts = {
  create_app_connection_request: EmbedWorkflow::CreateAppConnectionRequest.new({name: 'name_example', app_type: 'gmail', user_key: 'user_key_example', config: {"api_key":"abc_123"}}) # CreateAppConnectionRequest | 
}

begin
  # Create app connection
  result = api_instance.create_app_connection(opts)
  p result
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling AppConnectionsApi->create_app_connection: #{e}"
end
```

#### Using the create_app_connection_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAppConnections200ResponseCollectionInner>, Integer, Hash)> create_app_connection_with_http_info(opts)

```ruby
begin
  # Create app connection
  data, status_code, headers = api_instance.create_app_connection_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAppConnections200ResponseCollectionInner>
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling AppConnectionsApi->create_app_connection_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_app_connection_request** | [**CreateAppConnectionRequest**](CreateAppConnectionRequest.md) |  | [optional] |

### Return type

[**ListAppConnections200ResponseCollectionInner**](ListAppConnections200ResponseCollectionInner.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_app_connection

> <DeleteActionType200Response> delete_app_connection(id, opts)

Delete app connection

### Examples

```ruby
require 'time'
require 'embed_workflow'
# setup authorization
EmbedWorkflow.configure do |config|
  # Configure Bearer authorization (JWT): bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = EmbedWorkflow::AppConnectionsApi.new
id = 'id_example' # String | System-generated unique identifier
opts = {
  user_key: 'user_key_example' # String | Unique user identifier
}

begin
  # Delete app connection
  result = api_instance.delete_app_connection(id, opts)
  p result
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling AppConnectionsApi->delete_app_connection: #{e}"
end
```

#### Using the delete_app_connection_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteActionType200Response>, Integer, Hash)> delete_app_connection_with_http_info(id, opts)

```ruby
begin
  # Delete app connection
  data, status_code, headers = api_instance.delete_app_connection_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteActionType200Response>
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling AppConnectionsApi->delete_app_connection_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | System-generated unique identifier |  |
| **user_key** | **String** | Unique user identifier | [optional] |

### Return type

[**DeleteActionType200Response**](DeleteActionType200Response.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_app_connections

> <ListAppConnections200Response> list_app_connections(opts)

List app connections

### Examples

```ruby
require 'time'
require 'embed_workflow'
# setup authorization
EmbedWorkflow.configure do |config|
  # Configure Bearer authorization (JWT): bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = EmbedWorkflow::AppConnectionsApi.new
opts = {
  starting_after: 'starting_after_example', # String | Cursor for pagination - return results after this ID
  ending_before: 'ending_before_example', # String | Cursor for pagination - return results before this ID
  limit: 25, # Integer | Number of items to return (max 100)
  user_key: 'user_key_example', # String | Unique user identifier
  app_type: 'app_type_example' # String | Filter results by app type
}

begin
  # List app connections
  result = api_instance.list_app_connections(opts)
  p result
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling AppConnectionsApi->list_app_connections: #{e}"
end
```

#### Using the list_app_connections_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAppConnections200Response>, Integer, Hash)> list_app_connections_with_http_info(opts)

```ruby
begin
  # List app connections
  data, status_code, headers = api_instance.list_app_connections_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAppConnections200Response>
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling AppConnectionsApi->list_app_connections_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **starting_after** | **String** | Cursor for pagination - return results after this ID | [optional] |
| **ending_before** | **String** | Cursor for pagination - return results before this ID | [optional] |
| **limit** | **Integer** | Number of items to return (max 100) | [optional] |
| **user_key** | **String** | Unique user identifier | [optional] |
| **app_type** | **String** | Filter results by app type | [optional] |

### Return type

[**ListAppConnections200Response**](ListAppConnections200Response.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_app_connection

> <ListAppConnections200ResponseCollectionInner> retrieve_app_connection(id, opts)

Retrieve app connection

### Examples

```ruby
require 'time'
require 'embed_workflow'
# setup authorization
EmbedWorkflow.configure do |config|
  # Configure Bearer authorization (JWT): bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = EmbedWorkflow::AppConnectionsApi.new
id = 'id_example' # String | System-generated unique identifier
opts = {
  user_key: 'user_key_example' # String | Unique user identifier
}

begin
  # Retrieve app connection
  result = api_instance.retrieve_app_connection(id, opts)
  p result
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling AppConnectionsApi->retrieve_app_connection: #{e}"
end
```

#### Using the retrieve_app_connection_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAppConnections200ResponseCollectionInner>, Integer, Hash)> retrieve_app_connection_with_http_info(id, opts)

```ruby
begin
  # Retrieve app connection
  data, status_code, headers = api_instance.retrieve_app_connection_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAppConnections200ResponseCollectionInner>
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling AppConnectionsApi->retrieve_app_connection_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | System-generated unique identifier |  |
| **user_key** | **String** | Unique user identifier | [optional] |

### Return type

[**ListAppConnections200ResponseCollectionInner**](ListAppConnections200ResponseCollectionInner.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_app_connection

> <ListAppConnections200ResponseCollectionInner> update_app_connection(id, opts)

Update app connection

### Examples

```ruby
require 'time'
require 'embed_workflow'
# setup authorization
EmbedWorkflow.configure do |config|
  # Configure Bearer authorization (JWT): bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = EmbedWorkflow::AppConnectionsApi.new
id = 'id_example' # String | System-generated unique identifier
opts = {
  create_app_connection_request: EmbedWorkflow::CreateAppConnectionRequest.new({name: 'name_example', app_type: 'gmail', user_key: 'user_key_example', config: {"api_key":"abc_123"}}) # CreateAppConnectionRequest | 
}

begin
  # Update app connection
  result = api_instance.update_app_connection(id, opts)
  p result
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling AppConnectionsApi->update_app_connection: #{e}"
end
```

#### Using the update_app_connection_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAppConnections200ResponseCollectionInner>, Integer, Hash)> update_app_connection_with_http_info(id, opts)

```ruby
begin
  # Update app connection
  data, status_code, headers = api_instance.update_app_connection_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAppConnections200ResponseCollectionInner>
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling AppConnectionsApi->update_app_connection_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | System-generated unique identifier |  |
| **create_app_connection_request** | [**CreateAppConnectionRequest**](CreateAppConnectionRequest.md) |  | [optional] |

### Return type

[**ListAppConnections200ResponseCollectionInner**](ListAppConnections200ResponseCollectionInner.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

