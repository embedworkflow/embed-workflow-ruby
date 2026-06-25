# EmbedWorkflow::AvailableAppsApi

All URIs are relative to *https://www.embedworkflow.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_available_apps**](AvailableAppsApi.md#list_available_apps) | **GET** /api/v1/available_apps | List available apps |
| [**retrieve_available_app**](AvailableAppsApi.md#retrieve_available_app) | **GET** /api/v1/available_apps/{app_identifier} | Retrieve available app |


## list_available_apps

> <ListAvailableApps200Response> list_available_apps(opts)

List available apps

### Examples

```ruby
require 'time'
require 'embed_workflow'
# setup authorization
EmbedWorkflow.configure do |config|
  # Configure Bearer authorization (JWT): bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = EmbedWorkflow::AvailableAppsApi.new
opts = {
  exclude_installed: 'exclude_installed_example' # String | Exclude already installed apps
}

begin
  # List available apps
  result = api_instance.list_available_apps(opts)
  p result
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling AvailableAppsApi->list_available_apps: #{e}"
end
```

#### Using the list_available_apps_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAvailableApps200Response>, Integer, Hash)> list_available_apps_with_http_info(opts)

```ruby
begin
  # List available apps
  data, status_code, headers = api_instance.list_available_apps_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAvailableApps200Response>
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling AvailableAppsApi->list_available_apps_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **exclude_installed** | **String** | Exclude already installed apps | [optional] |

### Return type

[**ListAvailableApps200Response**](ListAvailableApps200Response.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_available_app

> <RetrieveAvailableApp200Response> retrieve_available_app(app_identifier)

Retrieve available app

### Examples

```ruby
require 'time'
require 'embed_workflow'
# setup authorization
EmbedWorkflow.configure do |config|
  # Configure Bearer authorization (JWT): bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = EmbedWorkflow::AvailableAppsApi.new
app_identifier = 'app_identifier_example' # String | App indentifier

begin
  # Retrieve available app
  result = api_instance.retrieve_available_app(app_identifier)
  p result
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling AvailableAppsApi->retrieve_available_app: #{e}"
end
```

#### Using the retrieve_available_app_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RetrieveAvailableApp200Response>, Integer, Hash)> retrieve_available_app_with_http_info(app_identifier)

```ruby
begin
  # Retrieve available app
  data, status_code, headers = api_instance.retrieve_available_app_with_http_info(app_identifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RetrieveAvailableApp200Response>
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling AvailableAppsApi->retrieve_available_app_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_identifier** | **String** | App indentifier |  |

### Return type

[**RetrieveAvailableApp200Response**](RetrieveAvailableApp200Response.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

