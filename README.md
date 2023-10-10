# persona-ruby
Persona is a service which is used to collect, verify, understand and orchestrate customer identities.
This API is designed to allow Ruby developers to interact with the Persona API programmatically.

For reference, the Persona API documentation can be found here:

https://docs.withpersona.com/docs

## Install

Add to your `Gemfile`:

```ruby
gem 'persona-ruby'
```

Then `bundle install`.


## Usage

### API Client

The Persona API client uses an access token to authenticate API requests.

To obtain an access code you must visit the Persona Dashboard (https://app.withpersona.com/dashboard/api-keys).

Then you can create a Persona API client.

```ruby
client = Persona::Client.new(
    access_token: 'access_token', # Access token from authorization flow
)
```

### API Endpoints

For use of each endpoint please consult the [Persona API reference](https://docs.withpersona.com/reference/introduction).

### List Inquiries

[API docs](https://docs.withpersona.com/reference/list-all-inquiries)

Example: `client.inquiry_list()`

### Get Inquiry

[API docs](https://docs.withpersona.com/reference/retrieve-an-inquiry)

Example: `client.inquiry_get('abcd1234')`

### Create Inquiry

[API docs](https://docs.withpersona.com/reference/create-an-inquiry)

Example: `client.inquiry_create(data = {"attribute1": "abc", "attribute2": "vcdf"})`

### Update Inquiry Update

[API docs](https://docs.withpersona.com/reference/update-an-inquiry)

Example: `client.inquiry_update('abcd1234', data = {"attribute1": "abc", "attribute2": "vcdf"})`

### Delete Inquiry

[API docs](https://docs.withpersona.com/reference/redact-an-inquiry)

Example: `client.inquiry_update('abcd1234')`

### Errors

Any error code returned by the Persona API will result in one of the following expections

|Code|Exception|
|----|---------|
|400| Persona::BadRequest|
|401| Persona::Unauthorized|
|403| Persona::Forbidden|
|404| Persona::NotFound|
|429| Persona::TooManyRequests|
|400...499| Persona::ClientError|
|500| Persona::InternalServerError|
|502| Persona::BadGateway|
|503| Persona::ServiceUnavailable|
|500...599| Persona::ServerError|
