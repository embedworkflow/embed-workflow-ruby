# EmbedWorkflow::AccountsApi

All URIs are relative to *https://www.embedworkflow.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**export_configuration**](AccountsApi.md#export_configuration) | **GET** /api/v1/configurations/export | Export configuration |
| [**import_configuration**](AccountsApi.md#import_configuration) | **POST** /api/v1/configurations/import | Import configuration |
| [**retrieve_account**](AccountsApi.md#retrieve_account) | **GET** /api/v1/account | Retrieve account |
| [**retrieve_account_usage**](AccountsApi.md#retrieve_account_usage) | **GET** /api/v1/account/usage | Retrieve account usage |
| [**update_account**](AccountsApi.md#update_account) | **PUT** /api/v1/account | Update account |


## export_configuration

> <ExportConfiguration200Response> export_configuration(opts)

Export configuration

### Examples

```ruby
require 'time'
require 'embed_workflow'
# setup authorization
EmbedWorkflow.configure do |config|
  # Configure Bearer authorization (JWT): bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = EmbedWorkflow::AccountsApi.new
opts = {
  schema_format: 'yaml', # String | 
  sections: ['action_types'] # Array<String> | 
}

begin
  # Export configuration
  result = api_instance.export_configuration(opts)
  p result
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling AccountsApi->export_configuration: #{e}"
end
```

#### Using the export_configuration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExportConfiguration200Response>, Integer, Hash)> export_configuration_with_http_info(opts)

```ruby
begin
  # Export configuration
  data, status_code, headers = api_instance.export_configuration_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExportConfiguration200Response>
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling AccountsApi->export_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schema_format** | **String** |  | [optional][default to &#39;yaml&#39;] |
| **sections** | [**Array&lt;String&gt;**](String.md) |  | [optional] |

### Return type

[**ExportConfiguration200Response**](ExportConfiguration200Response.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## import_configuration

> <ImportConfiguration201Response> import_configuration(opts)

Import configuration

### Examples

```ruby
require 'time'
require 'embed_workflow'
# setup authorization
EmbedWorkflow.configure do |config|
  # Configure Bearer authorization (JWT): bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = EmbedWorkflow::AccountsApi.new
opts = {
  import_configuration_request: EmbedWorkflow::ImportConfigurationRequest.new # ImportConfigurationRequest | 
}

begin
  # Import configuration
  result = api_instance.import_configuration(opts)
  p result
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling AccountsApi->import_configuration: #{e}"
end
```

#### Using the import_configuration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ImportConfiguration201Response>, Integer, Hash)> import_configuration_with_http_info(opts)

```ruby
begin
  # Import configuration
  data, status_code, headers = api_instance.import_configuration_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ImportConfiguration201Response>
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling AccountsApi->import_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **import_configuration_request** | [**ImportConfigurationRequest**](ImportConfigurationRequest.md) |  | [optional] |

### Return type

[**ImportConfiguration201Response**](ImportConfiguration201Response.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## retrieve_account

> <RetrieveAccount200Response> retrieve_account

Retrieve account

### Examples

```ruby
require 'time'
require 'embed_workflow'
# setup authorization
EmbedWorkflow.configure do |config|
  # Configure Bearer authorization (JWT): bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = EmbedWorkflow::AccountsApi.new

begin
  # Retrieve account
  result = api_instance.retrieve_account
  p result
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling AccountsApi->retrieve_account: #{e}"
end
```

#### Using the retrieve_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RetrieveAccount200Response>, Integer, Hash)> retrieve_account_with_http_info

```ruby
begin
  # Retrieve account
  data, status_code, headers = api_instance.retrieve_account_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RetrieveAccount200Response>
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling AccountsApi->retrieve_account_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**RetrieveAccount200Response**](RetrieveAccount200Response.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_account_usage

> <RetrieveAccountUsage200Response> retrieve_account_usage(opts)

Retrieve account usage

### Examples

```ruby
require 'time'
require 'embed_workflow'
# setup authorization
EmbedWorkflow.configure do |config|
  # Configure Bearer authorization (JWT): bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = EmbedWorkflow::AccountsApi.new
opts = {
  start_time: Time.parse('2024-01-01T00:00Z'), # Time | 
  end_time: Time.parse('2024-01-31T23:59:59Z'), # Time | 
  user_key: 'user_key_example' # String | User key to filter usage for a specific user
}

begin
  # Retrieve account usage
  result = api_instance.retrieve_account_usage(opts)
  p result
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling AccountsApi->retrieve_account_usage: #{e}"
end
```

#### Using the retrieve_account_usage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RetrieveAccountUsage200Response>, Integer, Hash)> retrieve_account_usage_with_http_info(opts)

```ruby
begin
  # Retrieve account usage
  data, status_code, headers = api_instance.retrieve_account_usage_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RetrieveAccountUsage200Response>
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling AccountsApi->retrieve_account_usage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_time** | **Time** |  | [optional] |
| **end_time** | **Time** |  | [optional] |
| **user_key** | **String** | User key to filter usage for a specific user | [optional] |

### Return type

[**RetrieveAccountUsage200Response**](RetrieveAccountUsage200Response.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_account

> <RetrieveAccount200Response> update_account(opts)

Update account

### Examples

```ruby
require 'time'
require 'embed_workflow'
# setup authorization
EmbedWorkflow.configure do |config|
  # Configure Bearer authorization (JWT): bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = EmbedWorkflow::AccountsApi.new
opts = {
  update_account_request: EmbedWorkflow::UpdateAccountRequest.new # UpdateAccountRequest | 
}

begin
  # Update account
  result = api_instance.update_account(opts)
  p result
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling AccountsApi->update_account: #{e}"
end
```

#### Using the update_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RetrieveAccount200Response>, Integer, Hash)> update_account_with_http_info(opts)

```ruby
begin
  # Update account
  data, status_code, headers = api_instance.update_account_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RetrieveAccount200Response>
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling AccountsApi->update_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_account_request** | [**UpdateAccountRequest**](UpdateAccountRequest.md) |  | [optional] |

### Return type

[**RetrieveAccount200Response**](RetrieveAccount200Response.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

