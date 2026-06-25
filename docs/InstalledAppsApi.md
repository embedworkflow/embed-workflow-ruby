# EmbedWorkflow::InstalledAppsApi

All URIs are relative to *https://www.embedworkflow.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**install_app**](InstalledAppsApi.md#install_app) | **POST** /api/v1/installed_apps | Install app |
| [**list_installed_apps**](InstalledAppsApi.md#list_installed_apps) | **GET** /api/v1/installed_apps | List installed apps |
| [**retrieve_installed_app**](InstalledAppsApi.md#retrieve_installed_app) | **GET** /api/v1/installed_apps/{app_identifier} | Retrieve installed app |
| [**update_installed_app**](InstalledAppsApi.md#update_installed_app) | **PUT** /api/v1/installed_apps/{app_identifier} | Update installed app |


## install_app

> <InstallApp201Response> install_app(opts)

Install app

### Examples

```ruby
require 'time'
require 'embed_workflow'
# setup authorization
EmbedWorkflow.configure do |config|
  # Configure Bearer authorization (JWT): bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = EmbedWorkflow::InstalledAppsApi.new
opts = {
  install_app_request: EmbedWorkflow::InstallAppRequest.new({app_identifier: 'slack'}) # InstallAppRequest | 
}

begin
  # Install app
  result = api_instance.install_app(opts)
  p result
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling InstalledAppsApi->install_app: #{e}"
end
```

#### Using the install_app_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InstallApp201Response>, Integer, Hash)> install_app_with_http_info(opts)

```ruby
begin
  # Install app
  data, status_code, headers = api_instance.install_app_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InstallApp201Response>
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling InstalledAppsApi->install_app_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **install_app_request** | [**InstallAppRequest**](InstallAppRequest.md) |  | [optional] |

### Return type

[**InstallApp201Response**](InstallApp201Response.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_installed_apps

> <ListInstalledApps200Response> list_installed_apps

List installed apps

### Examples

```ruby
require 'time'
require 'embed_workflow'
# setup authorization
EmbedWorkflow.configure do |config|
  # Configure Bearer authorization (JWT): bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = EmbedWorkflow::InstalledAppsApi.new

begin
  # List installed apps
  result = api_instance.list_installed_apps
  p result
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling InstalledAppsApi->list_installed_apps: #{e}"
end
```

#### Using the list_installed_apps_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListInstalledApps200Response>, Integer, Hash)> list_installed_apps_with_http_info

```ruby
begin
  # List installed apps
  data, status_code, headers = api_instance.list_installed_apps_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListInstalledApps200Response>
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling InstalledAppsApi->list_installed_apps_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListInstalledApps200Response**](ListInstalledApps200Response.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_installed_app

> <InstallApp201Response> retrieve_installed_app(app_identifier)

Retrieve installed app

### Examples

```ruby
require 'time'
require 'embed_workflow'
# setup authorization
EmbedWorkflow.configure do |config|
  # Configure Bearer authorization (JWT): bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = EmbedWorkflow::InstalledAppsApi.new
app_identifier = 'app_identifier_example' # String | App indentifier

begin
  # Retrieve installed app
  result = api_instance.retrieve_installed_app(app_identifier)
  p result
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling InstalledAppsApi->retrieve_installed_app: #{e}"
end
```

#### Using the retrieve_installed_app_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InstallApp201Response>, Integer, Hash)> retrieve_installed_app_with_http_info(app_identifier)

```ruby
begin
  # Retrieve installed app
  data, status_code, headers = api_instance.retrieve_installed_app_with_http_info(app_identifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InstallApp201Response>
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling InstalledAppsApi->retrieve_installed_app_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_identifier** | **String** | App indentifier |  |

### Return type

[**InstallApp201Response**](InstallApp201Response.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_installed_app

> <InstallApp201Response> update_installed_app(app_identifier, opts)

Update installed app

### Examples

```ruby
require 'time'
require 'embed_workflow'
# setup authorization
EmbedWorkflow.configure do |config|
  # Configure Bearer authorization (JWT): bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = EmbedWorkflow::InstalledAppsApi.new
app_identifier = 'app_identifier_example' # String | App indentifier
opts = {
  update_installed_app_request: EmbedWorkflow::UpdateInstalledAppRequest.new # UpdateInstalledAppRequest | 
}

begin
  # Update installed app
  result = api_instance.update_installed_app(app_identifier, opts)
  p result
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling InstalledAppsApi->update_installed_app: #{e}"
end
```

#### Using the update_installed_app_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InstallApp201Response>, Integer, Hash)> update_installed_app_with_http_info(app_identifier, opts)

```ruby
begin
  # Update installed app
  data, status_code, headers = api_instance.update_installed_app_with_http_info(app_identifier, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InstallApp201Response>
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling InstalledAppsApi->update_installed_app_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_identifier** | **String** | App indentifier |  |
| **update_installed_app_request** | [**UpdateInstalledAppRequest**](UpdateInstalledAppRequest.md) |  | [optional] |

### Return type

[**InstallApp201Response**](InstallApp201Response.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

