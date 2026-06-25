# EmbedWorkflow::EventsApi

All URIs are relative to *https://www.embedworkflow.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_events**](EventsApi.md#list_events) | **GET** /api/v1/events | List events |


## list_events

> <ListEvents200Response> list_events(opts)

List events

### Examples

```ruby
require 'time'
require 'embed_workflow'
# setup authorization
EmbedWorkflow.configure do |config|
  # Configure Bearer authorization (JWT): bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = EmbedWorkflow::EventsApi.new
opts = {
  starting_after: 'starting_after_example', # String | Cursor for pagination - return results after this ID
  ending_before: 'ending_before_example', # String | Cursor for pagination - return results before this ID
  limit: 25 # Integer | Number of items to return (max 100)
}

begin
  # List events
  result = api_instance.list_events(opts)
  p result
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling EventsApi->list_events: #{e}"
end
```

#### Using the list_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListEvents200Response>, Integer, Hash)> list_events_with_http_info(opts)

```ruby
begin
  # List events
  data, status_code, headers = api_instance.list_events_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListEvents200Response>
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling EventsApi->list_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **starting_after** | **String** | Cursor for pagination - return results after this ID | [optional] |
| **ending_before** | **String** | Cursor for pagination - return results before this ID | [optional] |
| **limit** | **Integer** | Number of items to return (max 100) | [optional] |

### Return type

[**ListEvents200Response**](ListEvents200Response.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

