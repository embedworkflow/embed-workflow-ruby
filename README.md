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
require "embed-workflow"

EmbedWorkflow.pkey = "pk_live_REPLACE_ME"
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
EmbedWorkflow::Workflows.create(name: "My first workflow", template: template)
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

### List Fields

```ruby
fields = [
  {"id": "10001", "data": {}, "name": "Name", "type": "TextField", "required": true},
  {"id": "10002", "data": {}, "name": "Email", "type": "Email", "required": true},
  {"id": "10003", "data": {}, "name": "Phone", "type": "Phone", "required": false}
]
EmbedWorkflow::Fields.list(hashid: "n83kp")
```

### Set Fields

```ruby
fields = [
  {"id": "10001", "data": {}, "name": "Name", "type": "TextField", "required": true},
  {"id": "10002", "data": {}, "name": "Email", "type": "Email", "required": true},
  {"id": "10003", "data": {}, "name": "Phone", "type": "Phone", "required": false}
]
EmbedWorkflow::Fields.create(hashid: "n83kp", fields: fields)
```

### Upsert Field

```ruby
# Adding a new field
field = EmbedWorkflow::Fields.update(hashid: "n83kp", name: "Zip", type: "TextField", required: false)

# Updating a field
EmbedWorkflow::Fields.update(hashid: "n83kp", id: field["id"], name: "Postal Code", type: "TextField", required: true)
```

### Remove Field

```ruby
EmbedWorkflow::Fields.delete(hashid: "n83kp", field_key: "Zip")
```

### List Action Activities

```ruby
EmbedWorkflow::Actions.activities(hashid: "7l0al")
```

### Fetch Form

```ruby
EmbedWorkflow::Forms.fetch(id: "c6faa926-8345-438a-b177-3265f1df3799")
```

### Update Form

```ruby
EmbedWorkflow::Forms.update(id: "c6faa926-8345-438a-b177-3265f1df3799", name: "Update Form!")
```

### Delete Form

```ruby
EmbedWorkflow::Forms.delete(id: "436f1012-8d3f-4695-ac52-ffa343747301")
```

### Submit Form

```ruby
EmbedWorkflow::Forms.submit(id: "c6faa926-8345-438a-b177-3265f1df3799", submission: { Name: "David", Email: "david@embedworkflow.com" })
```
