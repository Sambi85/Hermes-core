# Dev Notes on Backend

# Frameworks
  - `Ruby on Rails` => for the backend
  - `action cable` => for real-time communication

# Services
**TwilioService**
  - Handles Twilio API connection => handles sending SMS messages

# Databases
  - `Postgres` => handles data persistence (storing users, messages, conversations, etc.).
  - `Redis` => is required for real-time communication through ActionCable to broadcast messages across multiple clients in a scalable way.

# Logging
  - Rails provides different log which you can use depending on the importance of the message.
      `debug`: Detailed information, typically useful for debugging.
      `info`: General information about the application's operation.
      `warn`: Warnings about potential issues.
      `error`: Errors that occur in the application.
      `fatal`: Severe errors that cause the application to stop.
      `unknown`: Unknown messages that don't fit into other categories.

# Noteworthy Gems
  - `twilio-ruby` => for Twilio API connection
  - `shoulda-matchers` => for testing active record models + relationships
  - `database_cleaner-active_record` => for cleaning up the database between tests

# Data Models
**User**
  - `has_and_belongs_to_many` to Conversations
  - `has many messages`
  *** `has_and_belongs_to_many` => association tells Rails to look for the join table

**Conversation**
  - `has_and_belongs_to_many` to Users
  - `has many` Messages
  *** `has_and_belongs_to_many` => association tells Rails to look for the join table

**User_Conversation**
  - Join Table
  - Foreign Key => User_id
  - Foreign Key => Conversation_id

**Message**
  - `belongs_to` User
  - `belongs_to` Conversation

**Messages_Users**
  - Join Table
  - `has_and_belongs_to_many` messages
  - `has_and_belongs_to_many` :recipients, class_name: 'User'
  *** `has_and_belongs_to_many` => association tells Rails to look for the join table

# Next Steps...
- Touch ups in test suite => Let's do some linting
- Touch ups in app => Let's do some linting
- Add pry to app configs (development, test)
- Test Twilio API connection (waiting on Twilio)
- Write Rspec tests for Routes
- Write Rspec tests for Devise 
- Write Functional Tests for API V1

# Notes on Dependencies
- Gem conflict with ActionCable and Redis 5.3.0

# Troublshooting + Testing
- Run all tests at once:
```bash
  RAILS_ENV=development bundle exec rspec
```
- Run a single test like so:
```bash
  RAILS_ENV=development bundle exec rspec spec/models/<YOUR TARGET TEST FILE>.rb
```

# Testing Endpoints w/ Curl Commands
**User Requests:**
```bash
curl -X GET http://localhost:3000/api/v1/users/1
curl -X DELETE http://localhost:3000/api/v1/users/1
curl -X POST http://localhost:3000/api/v1/users \
-H "Content-Type: application/json" \
-d '{
  "user": {
    "name": "John Doe",
    "email": "john.doe@example.com",
    "phone_number": "114234567890",
    "password": "password1",
    "password_confirmation": "password1"
  }
}'
```

**Conversations Requests:**

```bash
curl -X GET http://localhost:3000/api/v1/conversations/1
curl -X DELETE http://localhost:3000/api/v1/conversations/1
curl -X POST http://localhost:3000/api/v1/conversations \
  -H "Content-Type: application/json" \
  -d '{
    "conversation": {
      "name": "New Conversation",
      "user_ids": [1, 2]
    }
  }'
```

**Messages Requests:**
```bash
curl -X GET http://localhost:3000/api/v1/messages/1
curl -X GET http://localhost:3000/api/v1/conversations/1/messages
curl -X DELETE http://localhost:3000/api/v1/messages/1
curl -X POST http://localhost:3000/api/v1/conversations/6/messages \
  -H "Content-Type: application/json" \
  -d '{
        "message": {
          "body": "Hello, this is a new message!",
          "user_id": 1, 
          "recipient_ids": [2, 3]
        }
      }'
```

# Using Phone Number in Twilio
  - E.164 is the international telephone numbering plan that ensures each device on the PSTN has globally unique number.
  - Vist here: https://www.twilio.com/docs/glossary/what-e164u should configure your model like this:
