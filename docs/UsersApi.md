# EmbedWorkflow::UsersApi

All URIs are relative to *https://www.embedworkflow.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_user_token**](UsersApi.md#create_user_token) | **POST** /api/v1/user_token | Create user token |
| [**delete_user**](UsersApi.md#delete_user) | **DELETE** /api/v1/users/{key} | Delete user |
| [**list_users**](UsersApi.md#list_users) | **GET** /api/v1/users | List users |
| [**retrieve_user**](UsersApi.md#retrieve_user) | **GET** /api/v1/users/{key} | Retrieve user |
| [**upsert_user**](UsersApi.md#upsert_user) | **PUT** /api/v1/users/{key} | Upsert user |


## create_user_token

> <CreateUserToken200Response> create_user_token(opts)

Create user token

### Examples

```ruby
require 'time'
require 'embed_workflow'
# setup authorization
EmbedWorkflow.configure do |config|
  # Configure Bearer authorization (JWT): bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = EmbedWorkflow::UsersApi.new
opts = {
  create_user_token_request: EmbedWorkflow::CreateUserTokenRequest.new # CreateUserTokenRequest | 
}

begin
  # Create user token
  result = api_instance.create_user_token(opts)
  p result
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling UsersApi->create_user_token: #{e}"
end
```

#### Using the create_user_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateUserToken200Response>, Integer, Hash)> create_user_token_with_http_info(opts)

```ruby
begin
  # Create user token
  data, status_code, headers = api_instance.create_user_token_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateUserToken200Response>
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling UsersApi->create_user_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_user_token_request** | [**CreateUserTokenRequest**](CreateUserTokenRequest.md) |  | [optional] |

### Return type

[**CreateUserToken200Response**](CreateUserToken200Response.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_user

> <ListUsers200ResponseCollectionInner> delete_user(key)

Delete user

### Examples

```ruby
require 'time'
require 'embed_workflow'
# setup authorization
EmbedWorkflow.configure do |config|
  # Configure Bearer authorization (JWT): bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = EmbedWorkflow::UsersApi.new
key = 'key_example' # String | Client-provided unique identifier

begin
  # Delete user
  result = api_instance.delete_user(key)
  p result
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling UsersApi->delete_user: #{e}"
end
```

#### Using the delete_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListUsers200ResponseCollectionInner>, Integer, Hash)> delete_user_with_http_info(key)

```ruby
begin
  # Delete user
  data, status_code, headers = api_instance.delete_user_with_http_info(key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListUsers200ResponseCollectionInner>
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling UsersApi->delete_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | Client-provided unique identifier |  |

### Return type

[**ListUsers200ResponseCollectionInner**](ListUsers200ResponseCollectionInner.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_users

> <ListUsers200Response> list_users(opts)

List users

### Examples

```ruby
require 'time'
require 'embed_workflow'
# setup authorization
EmbedWorkflow.configure do |config|
  # Configure Bearer authorization (JWT): bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = EmbedWorkflow::UsersApi.new
opts = {
  starting_after: 'starting_after_example', # String | Cursor for pagination - return results after this ID
  ending_before: 'ending_before_example', # String | Cursor for pagination - return results before this ID
  limit: 25, # Integer | Number of items to return (max 100)
  search: 'search_example' # String | Search users by key
}

begin
  # List users
  result = api_instance.list_users(opts)
  p result
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling UsersApi->list_users: #{e}"
end
```

#### Using the list_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListUsers200Response>, Integer, Hash)> list_users_with_http_info(opts)

```ruby
begin
  # List users
  data, status_code, headers = api_instance.list_users_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListUsers200Response>
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling UsersApi->list_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **starting_after** | **String** | Cursor for pagination - return results after this ID | [optional] |
| **ending_before** | **String** | Cursor for pagination - return results before this ID | [optional] |
| **limit** | **Integer** | Number of items to return (max 100) | [optional] |
| **search** | **String** | Search users by key | [optional] |

### Return type

[**ListUsers200Response**](ListUsers200Response.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_user

> <ListUsers200ResponseCollectionInner> retrieve_user(key)

Retrieve user

### Examples

```ruby
require 'time'
require 'embed_workflow'
# setup authorization
EmbedWorkflow.configure do |config|
  # Configure Bearer authorization (JWT): bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = EmbedWorkflow::UsersApi.new
key = 'key_example' # String | Client-provided unique identifier

begin
  # Retrieve user
  result = api_instance.retrieve_user(key)
  p result
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling UsersApi->retrieve_user: #{e}"
end
```

#### Using the retrieve_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListUsers200ResponseCollectionInner>, Integer, Hash)> retrieve_user_with_http_info(key)

```ruby
begin
  # Retrieve user
  data, status_code, headers = api_instance.retrieve_user_with_http_info(key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListUsers200ResponseCollectionInner>
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling UsersApi->retrieve_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | Client-provided unique identifier |  |

### Return type

[**ListUsers200ResponseCollectionInner**](ListUsers200ResponseCollectionInner.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## upsert_user

> <ListUsers200ResponseCollectionInner> upsert_user(key, opts)

Upsert user

### Examples

```ruby
require 'time'
require 'embed_workflow'
# setup authorization
EmbedWorkflow.configure do |config|
  # Configure Bearer authorization (JWT): bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = EmbedWorkflow::UsersApi.new
key = 'key_example' # String | Client-provided unique identifier
opts = {
  upsert_user_request: EmbedWorkflow::UpsertUserRequest.new # UpsertUserRequest | 
}

begin
  # Upsert user
  result = api_instance.upsert_user(key, opts)
  p result
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling UsersApi->upsert_user: #{e}"
end
```

#### Using the upsert_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListUsers200ResponseCollectionInner>, Integer, Hash)> upsert_user_with_http_info(key, opts)

```ruby
begin
  # Upsert user
  data, status_code, headers = api_instance.upsert_user_with_http_info(key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListUsers200ResponseCollectionInner>
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling UsersApi->upsert_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | Client-provided unique identifier |  |
| **upsert_user_request** | [**UpsertUserRequest**](UpsertUserRequest.md) |  | [optional] |

### Return type

[**ListUsers200ResponseCollectionInner**](ListUsers200ResponseCollectionInner.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

