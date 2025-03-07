# Embed Workflow Ruby Library

The Embed Workflow Ruby library provides convenient access to the Embed Workflow API from applications written in the Ruby language.

## Documentation

See the [Ruby API docs](https://api-docs.embedworkflow.com/?ruby).

## Installation

To install this gem:

```ruby
gem install embed-workflow
```

or if you are adding it via bundler then add it to your gemfile:

```ruby
gem "embed-workflow"
```

## Configuration

Configure `EmbedWorkflow` by setting the publishable and secret keys. Be sure to follow best practices and keep your secret key secure.

```ruby
require "embed_workflow"

EmbedWorkflow.skey = "sk_live_REPLACE_ME"
```

## Usage

### Create Workflow

```ruby
template = {
  "edges": ["a-b", "a-c"],
  "nodes": [
    {"id": "a", "name": "Wait 2 hours", "type": "Delay", "delay_n": 2, "delay_unit": "hour"},
    {"id": "b", "name": "Email", "type": "Email", "recipient": "john@doe.com", "subject": "New Submission", "body": "New submission from {{Name}} - {{Email}} - {{Phone}}."},
    {"id": "c", "url": "https://domain.com/webhook_example", "name": "Webhook", "type": "Webhook", "params": "one: 1\ntwo: 2", "headers": "X-Custom-Header: my_value"}
  ]
}
EmbedWorkflow::Workflows.create(
  name: "My first workflow",
  template: template
)
```

### Fetch Workflow

```ruby
EmbedWorkflow::Workflows.fetch(hashid: "nybra")
```

### List Workflows

```ruby
EmbedWorkflow::Workflows.list
```

### Update Workflow

```ruby
EmbedWorkflow::Workflows.update(hashid: "nybra", name: "Updated Name")
```

### List Workflow Activities

```ruby
EmbedWorkflow::Workflows.activities(hashid: "nybra")
```

### Execute Workflow

```ruby
EmbedWorkflow::Workflows.execute(
  hashid: "79zeo",
  execution: {"Account Email": "mail@embedworkflow.com" },
  form: {
    Name: "David",
    Email: "david@embedworkflow.com",
    Phone: "954-321-1234"
  }
)
```

### Clone Workflow

```ruby
EmbedWorkflow::Workflows.clone(hashid: "xbydj")
```

### Run Workflow

```ruby
workflow = EmbedWorkflow::Workflows.create(name: "Manual Start Workflow", auto_start: false)

EmbedWorkflow::Workflows.run(hashid: workflow["hashid"])
```

### List Action Activities

```ruby
EmbedWorkflow::Actions.activities(hashid: "7l0al")
```

### Upsert a user

```ruby
config = {
  user_data: {
    foo: "bar"
  },
}

# Adding a new user
user = EmbedWorkflow::Users.upsert(key: "api-user-1", name: "Jane Doe", email: "jane@embedworkflow.com", config: config)

# Updating a user
EmbedWorkflow::Users.upsert(name: "Jane Smith", id: user["id"], config: config)
```

### Fetch a user

```ruby
EmbedWorkflow::Users.fetch(key: "api-user-1")
```

### List users

```ruby
# List all users
EmbedWorkflow::Users.list

# List with pagination
EmbedWorkflow::Users.list(starting_after: "550e8400-e29b-41d4-a716-446655440000", limit: 10)
```

### Delete a user

```ruby
EmbedWorkflow::Users.delete(key: "api-user-1")
```

### Catch a webhook

```ruby
EmbedWorkflow.catch_hook(user_key: "main", hook_id: "70e59f4d-1dc4-4720-b0bb-46929dc48d47", anything: "else", you: "need")
```
