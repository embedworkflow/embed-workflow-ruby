# EmbedWorkflow Ruby SDK

Ruby client library for the [EmbedWorkflow API](https://github.com/embedworkflow/embed-workflow-ruby).

## Installation

Add to your Gemfile:

```ruby
gem 'embed_workflow', '~> 1.2.0'
```

Then run:

```shell
bundle install
```

## Usage

```ruby
require 'embed_workflow'

# Set your API key once
EmbedWorkflow.skey = "sk-live-your-api-key"

# List users
users = EmbedWorkflow.users.list_users

# Retrieve a specific user
user = EmbedWorkflow.users.retrieve_user(key: "user-key")

# Upsert a user
EmbedWorkflow.users.upsert_user(key: "user-1", name: "Jane Doe", email: "jane@example.com")

# List workflows
workflows = EmbedWorkflow.workflows.list_workflows

# Execute a workflow
result = EmbedWorkflow.workflows.execute_workflow(id: "workflow-id", execution_data: { key: "value" })

# Trigger a workflow
EmbedWorkflow.workflows.trigger_workflow(event: "new-lead", user_key: "main", execution_data: { name: "John" })

# Catch a webhook
EmbedWorkflow.workflows.catch_hook(hook_id: "hook-uuid", user_key: "main")
```

### Using multiple clients

```ruby
client_a = EmbedWorkflow::Client.new("sk-live-key-a")
client_b = EmbedWorkflow::Client.new("sk-live-key-b")

client_a.users.list_users
client_b.users.list_users
```

## API Endpoints

All URIs are relative to *https://embedworkflow.com*

### AccountsApi

Method | HTTP request | Description
------------- | ------------- | -------------
**export_configuration** | **GET** /api/v1/configurations/export | Export configuration
**import_configuration** | **POST** /api/v1/configurations/import | Import configuration
**retrieve_account** | **GET** /api/v1/account | Retrieve account
**retrieve_account_usage** | **GET** /api/v1/account/usage | Retrieve account usage
**update_account** | **PUT** /api/v1/account | Update account

### ActionTypesApi

Method | HTTP request | Description
------------- | ------------- | -------------
**create_action_type** | **POST** /api/v1/action_types | Create action type
**delete_action_type** | **DELETE** /api/v1/action_types/{id} | Delete action type
**discard_action_type_draft** | **POST** /api/v1/action_types/{id}/discard_draft | Discard action type draft
**list_action_types** | **GET** /api/v1/action_types | List action types
**publish_action_type** | **POST** /api/v1/action_types/{id}/publish | Publish action type
**retrieve_action_type** | **GET** /api/v1/action_types/{id} | Retrieve action type
**update_action_type** | **PUT** /api/v1/action_types/{id} | Update action type

### ActionsApi

Method | HTTP request | Description
------------- | ------------- | -------------
**list_actions** | **GET** /api/v1/actions | List actions
**list_completed_actions** | **GET** /api/v1/actions/completed | List completed actions
**list_failed_actions** | **GET** /api/v1/actions/failed | List failed actions
**list_scheduled_actions** | **GET** /api/v1/actions/scheduled | List scheduled actions
**list_workflow_actions** | **GET** /api/v1/workflows/{workflow_id}/actions | List workflow actions
**retry_action** | **POST** /api/v1/actions/{hashid}/retry | Retry action

### AppConnectionsApi

Method | HTTP request | Description
------------- | ------------- | -------------
**create_app_connection** | **POST** /api/v1/app_connections | Create app connection
**delete_app_connection** | **DELETE** /api/v1/app_connections/{id} | Delete app connection
**list_app_connections** | **GET** /api/v1/app_connections | List app connections
**retrieve_app_connection** | **GET** /api/v1/app_connections/{id} | Retrieve app connection
**update_app_connection** | **PUT** /api/v1/app_connections/{id} | Update app connection

### AvailableAppsApi

Method | HTTP request | Description
------------- | ------------- | -------------
**list_available_apps** | **GET** /api/v1/available_apps | List available apps
**retrieve_available_app** | **GET** /api/v1/available_apps/{app_identifier} | Retrieve available app

### DataFieldsApi

Method | HTTP request | Description
------------- | ------------- | -------------
**evaluate_expression** | **POST** /api/v1/data_fields/evaluate | Evaluate expression
**list_data_fields** | **GET** /api/v1/data_fields | List data fields
**list_workflow_data_fields** | **GET** /api/v1/workflows/{id}/data_fields | List workflow data fields

### EventsApi

Method | HTTP request | Description
------------- | ------------- | -------------
**list_events** | **GET** /api/v1/events | List events

### ExecutionsApi

Method | HTTP request | Description
------------- | ------------- | -------------
**list_workflow_executions** | **GET** /api/v1/workflows/{workflow_id}/executions | List workflow executions
**retrieve_execution** | **GET** /api/v1/executions/{id} | Retrieve execution
**stop_executions** | **POST** /api/v1/executions/stop | Stop executions

### InstalledAppsApi

Method | HTTP request | Description
------------- | ------------- | -------------
**install_app** | **POST** /api/v1/installed_apps | Install app
**list_installed_apps** | **GET** /api/v1/installed_apps | List installed apps
**retrieve_installed_app** | **GET** /api/v1/installed_apps/{app_identifier} | Retrieve installed app
**update_installed_app** | **PUT** /api/v1/installed_apps/{app_identifier} | Update installed app

### PaymentsApi

Method | HTTP request | Description
------------- | ------------- | -------------
**list_payments** | **GET** /api/v1/payments | List payments

### TriggersApi

Method | HTTP request | Description
------------- | ------------- | -------------
**delete_trigger** | **DELETE** /api/v1/triggers/{id} | Delete trigger
**list_triggers** | **GET** /api/v1/triggers | List triggers
**retrieve_trigger** | **GET** /api/v1/triggers/{id} | Retrieve trigger
**update_trigger** | **PUT** /api/v1/triggers/{id} | Update trigger

### UsersApi

Method | HTTP request | Description
------------- | ------------- | -------------
**create_user_token** | **POST** /api/v1/user_token | Create user token
**delete_user** | **DELETE** /api/v1/users/{key} | Delete user
**list_users** | **GET** /api/v1/users | List users
**retrieve_user** | **GET** /api/v1/users/{key} | Retrieve user
**upsert_user** | **PUT** /api/v1/users/{key} | Upsert user

### WorkflowsApi

Method | HTTP request | Description
------------- | ------------- | -------------
**catch_hook** | **POST** /api/v1/hooks/{hook_id}/catch | Catch hook
**clone_workflow** | **POST** /api/v1/workflows/{id}/clone | Clone workflow
**create_workflow** | **POST** /api/v1/workflows | Create workflow
**delete_workflow** | **DELETE** /api/v1/workflows/{id} | Delete workflow
**discard_workflow_draft** | **POST** /api/v1/workflows/{id}/discard_draft | Discard workflow draft
**execute_workflow** | **POST** /api/v1/workflows/{id}/execute | Execute workflow
**list_workflow_versions** | **GET** /api/v1/workflows/{workflow_id}/versions | List workflow versions
**list_workflows** | **GET** /api/v1/workflows | List workflows
**publish_workflow** | **POST** /api/v1/workflows/{id}/publish | Publish workflow
**retrieve_workflow** | **GET** /api/v1/workflows/{id} | Retrieve workflow
**trigger_workflow** | **POST** /api/v1/trigger | Trigger workflow
**update_workflow** | **PUT** /api/v1/workflows/{id} | Update workflow


## Authentication

All API requests require a bearer token:

```ruby
EmbedWorkflow.skey = "sk-live-your-api-key"
```

### Advanced configuration

For settings like timeouts, custom middleware, or SSL options, use `EmbedWorkflow.configure` **before** setting `skey=` (or constructing a `Client`):

```ruby
EmbedWorkflow.configure do |config|
  config.timeout = 10
end

EmbedWorkflow.skey = "sk-live-your-api-key"
```

Configure once at boot before instantiating clients. Mutating `Configuration.default` after a client has been constructed has undefined effects on that client.

## Upgrading from 0.3.x

1.x is a major rewrite generated from the EmbedWorkflow OpenAPI spec. The public interface changed:

- Resources are now methods on the default client (or a `Client` you construct yourself) instead of standalone modules.
- Methods take keyword arguments and use full operation names (e.g. `list_users`, `retrieve_user`, `execute_workflow`).
- Every documented endpoint is covered, with typed request and response models.

```ruby
# Before (0.3.x)
EmbedWorkflow::Users.list
EmbedWorkflow::Users.fetch("user-key")
EmbedWorkflow::Workflows.execute("workflow-id", execution_data: { foo: "bar" })
EmbedWorkflow::CatchHook.create(hook_id: "...", user_key: "main", first_name: "Jane")

# After (1.x)
EmbedWorkflow.users.list_users
EmbedWorkflow.users.retrieve_user(key: "user-key")
EmbedWorkflow.workflows.execute_workflow(id: "workflow-id", execution_data: { foo: "bar" })
EmbedWorkflow.workflows.catch_hook(hook_id: "...", user_key: "main", first_name: "Jane")
```

`EmbedWorkflow.skey =` still works the same way.

## License

MIT
