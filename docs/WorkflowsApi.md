# EmbedWorkflow::WorkflowsApi

All URIs are relative to *https://www.embedworkflow.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**catch_hook**](WorkflowsApi.md#catch_hook) | **POST** /api/v1/hooks/{hook_id}/catch | Catch hook |
| [**clone_workflow**](WorkflowsApi.md#clone_workflow) | **POST** /api/v1/workflows/{id}/clone | Clone workflow |
| [**create_workflow**](WorkflowsApi.md#create_workflow) | **POST** /api/v1/workflows | Create workflow |
| [**delete_workflow**](WorkflowsApi.md#delete_workflow) | **DELETE** /api/v1/workflows/{id} | Delete workflow |
| [**discard_workflow_draft**](WorkflowsApi.md#discard_workflow_draft) | **POST** /api/v1/workflows/{id}/discard_draft | Discard workflow draft |
| [**execute_workflow**](WorkflowsApi.md#execute_workflow) | **POST** /api/v1/workflows/{id}/execute | Execute workflow |
| [**list_workflow_versions**](WorkflowsApi.md#list_workflow_versions) | **GET** /api/v1/workflows/{workflow_id}/versions | List workflow versions |
| [**list_workflows**](WorkflowsApi.md#list_workflows) | **GET** /api/v1/workflows | List workflows |
| [**publish_workflow**](WorkflowsApi.md#publish_workflow) | **POST** /api/v1/workflows/{id}/publish | Publish workflow |
| [**retrieve_workflow**](WorkflowsApi.md#retrieve_workflow) | **GET** /api/v1/workflows/{id} | Retrieve workflow |
| [**trigger_workflow**](WorkflowsApi.md#trigger_workflow) | **POST** /api/v1/trigger | Trigger workflow |
| [**update_workflow**](WorkflowsApi.md#update_workflow) | **PUT** /api/v1/workflows/{id} | Update workflow |


## catch_hook

> Object catch_hook(hook_id, opts)

Catch hook

### Examples

```ruby
require 'time'
require 'embed_workflow'
# setup authorization
EmbedWorkflow.configure do |config|
  # Configure Bearer authorization (JWT): bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = EmbedWorkflow::WorkflowsApi.new
hook_id = 'hook_id_example' # String | The trigger's hook id used for third party webhooks
opts = {
  catch_hook_request: EmbedWorkflow::CatchHookRequest.new({user_key: 'user_key_example'}) # CatchHookRequest | 
}

begin
  # Catch hook
  result = api_instance.catch_hook(hook_id, opts)
  p result
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling WorkflowsApi->catch_hook: #{e}"
end
```

#### Using the catch_hook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> catch_hook_with_http_info(hook_id, opts)

```ruby
begin
  # Catch hook
  data, status_code, headers = api_instance.catch_hook_with_http_info(hook_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling WorkflowsApi->catch_hook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hook_id** | **String** | The trigger&#39;s hook id used for third party webhooks |  |
| **catch_hook_request** | [**CatchHookRequest**](CatchHookRequest.md) |  | [optional] |

### Return type

**Object**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## clone_workflow

> <ListWorkflows200ResponseCollectionInner> clone_workflow(id, opts)

Clone workflow

### Examples

```ruby
require 'time'
require 'embed_workflow'
# setup authorization
EmbedWorkflow.configure do |config|
  # Configure Bearer authorization (JWT): bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = EmbedWorkflow::WorkflowsApi.new
id = 'id_example' # String | System-generated unique identifier
opts = {
  discard_workflow_draft_request: EmbedWorkflow::DiscardWorkflowDraftRequest.new # DiscardWorkflowDraftRequest | 
}

begin
  # Clone workflow
  result = api_instance.clone_workflow(id, opts)
  p result
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling WorkflowsApi->clone_workflow: #{e}"
end
```

#### Using the clone_workflow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorkflows200ResponseCollectionInner>, Integer, Hash)> clone_workflow_with_http_info(id, opts)

```ruby
begin
  # Clone workflow
  data, status_code, headers = api_instance.clone_workflow_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorkflows200ResponseCollectionInner>
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling WorkflowsApi->clone_workflow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | System-generated unique identifier |  |
| **discard_workflow_draft_request** | [**DiscardWorkflowDraftRequest**](DiscardWorkflowDraftRequest.md) |  | [optional] |

### Return type

[**ListWorkflows200ResponseCollectionInner**](ListWorkflows200ResponseCollectionInner.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_workflow

> <CreateWorkflow201Response> create_workflow(opts)

Create workflow

### Examples

```ruby
require 'time'
require 'embed_workflow'
# setup authorization
EmbedWorkflow.configure do |config|
  # Configure Bearer authorization (JWT): bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = EmbedWorkflow::WorkflowsApi.new
opts = {
  create_workflow_request: EmbedWorkflow::CreateWorkflowRequest.new({name: 'name_example'}) # CreateWorkflowRequest | 
}

begin
  # Create workflow
  result = api_instance.create_workflow(opts)
  p result
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling WorkflowsApi->create_workflow: #{e}"
end
```

#### Using the create_workflow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorkflow201Response>, Integer, Hash)> create_workflow_with_http_info(opts)

```ruby
begin
  # Create workflow
  data, status_code, headers = api_instance.create_workflow_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorkflow201Response>
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling WorkflowsApi->create_workflow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_workflow_request** | [**CreateWorkflowRequest**](CreateWorkflowRequest.md) |  | [optional] |

### Return type

[**CreateWorkflow201Response**](CreateWorkflow201Response.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_workflow

> <DeleteWorkflow200Response> delete_workflow(id, opts)

Delete workflow

### Examples

```ruby
require 'time'
require 'embed_workflow'
# setup authorization
EmbedWorkflow.configure do |config|
  # Configure Bearer authorization (JWT): bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = EmbedWorkflow::WorkflowsApi.new
id = 'id_example' # String | System-generated unique identifier
opts = {
  id_type: 'id_type_example', # String | Type of identifier used in the URL
  user_key: 'user_key_example' # String | Unique user identifier
}

begin
  # Delete workflow
  result = api_instance.delete_workflow(id, opts)
  p result
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling WorkflowsApi->delete_workflow: #{e}"
end
```

#### Using the delete_workflow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteWorkflow200Response>, Integer, Hash)> delete_workflow_with_http_info(id, opts)

```ruby
begin
  # Delete workflow
  data, status_code, headers = api_instance.delete_workflow_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteWorkflow200Response>
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling WorkflowsApi->delete_workflow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | System-generated unique identifier |  |
| **id_type** | **String** | Type of identifier used in the URL | [optional] |
| **user_key** | **String** | Unique user identifier | [optional] |

### Return type

[**DeleteWorkflow200Response**](DeleteWorkflow200Response.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## discard_workflow_draft

> <CreateWorkflow201Response> discard_workflow_draft(id, opts)

Discard workflow draft

### Examples

```ruby
require 'time'
require 'embed_workflow'
# setup authorization
EmbedWorkflow.configure do |config|
  # Configure Bearer authorization (JWT): bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = EmbedWorkflow::WorkflowsApi.new
id = 'id_example' # String | System-generated unique identifier
opts = {
  discard_workflow_draft_request: EmbedWorkflow::DiscardWorkflowDraftRequest.new # DiscardWorkflowDraftRequest | 
}

begin
  # Discard workflow draft
  result = api_instance.discard_workflow_draft(id, opts)
  p result
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling WorkflowsApi->discard_workflow_draft: #{e}"
end
```

#### Using the discard_workflow_draft_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorkflow201Response>, Integer, Hash)> discard_workflow_draft_with_http_info(id, opts)

```ruby
begin
  # Discard workflow draft
  data, status_code, headers = api_instance.discard_workflow_draft_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorkflow201Response>
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling WorkflowsApi->discard_workflow_draft_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | System-generated unique identifier |  |
| **discard_workflow_draft_request** | [**DiscardWorkflowDraftRequest**](DiscardWorkflowDraftRequest.md) |  | [optional] |

### Return type

[**CreateWorkflow201Response**](CreateWorkflow201Response.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## execute_workflow

> <ExecuteWorkflow201Response> execute_workflow(id, opts)

Execute workflow

### Examples

```ruby
require 'time'
require 'embed_workflow'
# setup authorization
EmbedWorkflow.configure do |config|
  # Configure Bearer authorization (JWT): bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = EmbedWorkflow::WorkflowsApi.new
id = 'id_example' # String | System-generated unique identifier
opts = {
  execute_workflow_request: EmbedWorkflow::ExecuteWorkflowRequest.new # ExecuteWorkflowRequest | 
}

begin
  # Execute workflow
  result = api_instance.execute_workflow(id, opts)
  p result
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling WorkflowsApi->execute_workflow: #{e}"
end
```

#### Using the execute_workflow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExecuteWorkflow201Response>, Integer, Hash)> execute_workflow_with_http_info(id, opts)

```ruby
begin
  # Execute workflow
  data, status_code, headers = api_instance.execute_workflow_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExecuteWorkflow201Response>
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling WorkflowsApi->execute_workflow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | System-generated unique identifier |  |
| **execute_workflow_request** | [**ExecuteWorkflowRequest**](ExecuteWorkflowRequest.md) |  | [optional] |

### Return type

[**ExecuteWorkflow201Response**](ExecuteWorkflow201Response.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_workflow_versions

> <ListWorkflowVersions200Response> list_workflow_versions(workflow_id, opts)

List workflow versions

### Examples

```ruby
require 'time'
require 'embed_workflow'
# setup authorization
EmbedWorkflow.configure do |config|
  # Configure Bearer authorization (JWT): bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = EmbedWorkflow::WorkflowsApi.new
workflow_id = 'workflow_id_example' # String | Filter results by workflow id
opts = {
  starting_after: 'starting_after_example', # String | Cursor for pagination - return results after this ID
  ending_before: 'ending_before_example', # String | Cursor for pagination - return results before this ID
  limit: 25, # Integer | Number of items to return (max 100)
  user_key: 'user_key_example' # String | Unique user identifier
}

begin
  # List workflow versions
  result = api_instance.list_workflow_versions(workflow_id, opts)
  p result
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling WorkflowsApi->list_workflow_versions: #{e}"
end
```

#### Using the list_workflow_versions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorkflowVersions200Response>, Integer, Hash)> list_workflow_versions_with_http_info(workflow_id, opts)

```ruby
begin
  # List workflow versions
  data, status_code, headers = api_instance.list_workflow_versions_with_http_info(workflow_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorkflowVersions200Response>
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling WorkflowsApi->list_workflow_versions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workflow_id** | **String** | Filter results by workflow id |  |
| **starting_after** | **String** | Cursor for pagination - return results after this ID | [optional] |
| **ending_before** | **String** | Cursor for pagination - return results before this ID | [optional] |
| **limit** | **Integer** | Number of items to return (max 100) | [optional] |
| **user_key** | **String** | Unique user identifier | [optional] |

### Return type

[**ListWorkflowVersions200Response**](ListWorkflowVersions200Response.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_workflows

> <ListWorkflows200Response> list_workflows(opts)

List workflows

### Examples

```ruby
require 'time'
require 'embed_workflow'
# setup authorization
EmbedWorkflow.configure do |config|
  # Configure Bearer authorization (JWT): bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = EmbedWorkflow::WorkflowsApi.new
opts = {
  starting_after: 'starting_after_example', # String | Cursor for pagination - return results after this ID
  ending_before: 'ending_before_example', # String | Cursor for pagination - return results before this ID
  limit: 25, # Integer | Number of items to return (max 100)
  expand: ['inner_example'], # Array<String> | Expand related objects
  user_key: 'user_key_example', # String | Unique user identifier
  is_template: true, # Boolean | Filter workflows by is_template value
  on: true, # Boolean | Filter workflows by on value
  order_by: 'order_by_example', # String | Field to order results by
  order_direction: 'asc' # String | 
}

begin
  # List workflows
  result = api_instance.list_workflows(opts)
  p result
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling WorkflowsApi->list_workflows: #{e}"
end
```

#### Using the list_workflows_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorkflows200Response>, Integer, Hash)> list_workflows_with_http_info(opts)

```ruby
begin
  # List workflows
  data, status_code, headers = api_instance.list_workflows_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorkflows200Response>
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling WorkflowsApi->list_workflows_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **starting_after** | **String** | Cursor for pagination - return results after this ID | [optional] |
| **ending_before** | **String** | Cursor for pagination - return results before this ID | [optional] |
| **limit** | **Integer** | Number of items to return (max 100) | [optional] |
| **expand** | [**Array&lt;String&gt;**](String.md) | Expand related objects | [optional] |
| **user_key** | **String** | Unique user identifier | [optional] |
| **is_template** | **Boolean** | Filter workflows by is_template value | [optional] |
| **on** | **Boolean** | Filter workflows by on value | [optional] |
| **order_by** | **String** | Field to order results by | [optional] |
| **order_direction** | **String** |  | [optional] |

### Return type

[**ListWorkflows200Response**](ListWorkflows200Response.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## publish_workflow

> <CreateWorkflow201Response> publish_workflow(id, opts)

Publish workflow

### Examples

```ruby
require 'time'
require 'embed_workflow'
# setup authorization
EmbedWorkflow.configure do |config|
  # Configure Bearer authorization (JWT): bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = EmbedWorkflow::WorkflowsApi.new
id = 'id_example' # String | System-generated unique identifier
opts = {
  publish_workflow_request: EmbedWorkflow::PublishWorkflowRequest.new # PublishWorkflowRequest | 
}

begin
  # Publish workflow
  result = api_instance.publish_workflow(id, opts)
  p result
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling WorkflowsApi->publish_workflow: #{e}"
end
```

#### Using the publish_workflow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorkflow201Response>, Integer, Hash)> publish_workflow_with_http_info(id, opts)

```ruby
begin
  # Publish workflow
  data, status_code, headers = api_instance.publish_workflow_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorkflow201Response>
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling WorkflowsApi->publish_workflow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | System-generated unique identifier |  |
| **publish_workflow_request** | [**PublishWorkflowRequest**](PublishWorkflowRequest.md) |  | [optional] |

### Return type

[**CreateWorkflow201Response**](CreateWorkflow201Response.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## retrieve_workflow

> <CreateWorkflow201Response> retrieve_workflow(id, opts)

Retrieve workflow

### Examples

```ruby
require 'time'
require 'embed_workflow'
# setup authorization
EmbedWorkflow.configure do |config|
  # Configure Bearer authorization (JWT): bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = EmbedWorkflow::WorkflowsApi.new
id = 'id_example' # String | System-generated unique identifier
opts = {
  id_type: 'id_type_example', # String | Type of identifier used in the URL
  user_key: 'user_key_example', # String | Unique user identifier
  expand: ['inner_example'] # Array<String> | Expand related objects
}

begin
  # Retrieve workflow
  result = api_instance.retrieve_workflow(id, opts)
  p result
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling WorkflowsApi->retrieve_workflow: #{e}"
end
```

#### Using the retrieve_workflow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorkflow201Response>, Integer, Hash)> retrieve_workflow_with_http_info(id, opts)

```ruby
begin
  # Retrieve workflow
  data, status_code, headers = api_instance.retrieve_workflow_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorkflow201Response>
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling WorkflowsApi->retrieve_workflow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | System-generated unique identifier |  |
| **id_type** | **String** | Type of identifier used in the URL | [optional] |
| **user_key** | **String** | Unique user identifier | [optional] |
| **expand** | [**Array&lt;String&gt;**](String.md) | Expand related objects | [optional] |

### Return type

[**CreateWorkflow201Response**](CreateWorkflow201Response.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## trigger_workflow

> Object trigger_workflow(opts)

Trigger workflow

### Examples

```ruby
require 'time'
require 'embed_workflow'
# setup authorization
EmbedWorkflow.configure do |config|
  # Configure Bearer authorization (JWT): bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = EmbedWorkflow::WorkflowsApi.new
opts = {
  trigger_workflow_request: EmbedWorkflow::TriggerWorkflowRequest.new # TriggerWorkflowRequest | 
}

begin
  # Trigger workflow
  result = api_instance.trigger_workflow(opts)
  p result
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling WorkflowsApi->trigger_workflow: #{e}"
end
```

#### Using the trigger_workflow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> trigger_workflow_with_http_info(opts)

```ruby
begin
  # Trigger workflow
  data, status_code, headers = api_instance.trigger_workflow_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling WorkflowsApi->trigger_workflow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **trigger_workflow_request** | [**TriggerWorkflowRequest**](TriggerWorkflowRequest.md) |  | [optional] |

### Return type

**Object**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_workflow

> update_workflow(id, opts)

Update workflow

### Examples

```ruby
require 'time'
require 'embed_workflow'
# setup authorization
EmbedWorkflow.configure do |config|
  # Configure Bearer authorization (JWT): bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = EmbedWorkflow::WorkflowsApi.new
id = 'id_example' # String | System-generated unique identifier
opts = {
  update_workflow_request: EmbedWorkflow::UpdateWorkflowRequest.new({name: 'name_example'}) # UpdateWorkflowRequest | 
}

begin
  # Update workflow
  api_instance.update_workflow(id, opts)
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling WorkflowsApi->update_workflow: #{e}"
end
```

#### Using the update_workflow_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_workflow_with_http_info(id, opts)

```ruby
begin
  # Update workflow
  data, status_code, headers = api_instance.update_workflow_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EmbedWorkflow::ApiError => e
  puts "Error when calling WorkflowsApi->update_workflow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | System-generated unique identifier |  |
| **update_workflow_request** | [**UpdateWorkflowRequest**](UpdateWorkflowRequest.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

