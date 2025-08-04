# Hermes Core
![My Image](public/hermes-logo.jpeg)


# Summary - Currently WIP
This project is a chat application built using Action Cable and SMS messaging. The goal is to create a real-time, interactive chat experience where users can communicate via both web and text messages. By leveraging Action Cable for seamless WebSocket connections and integrating SMS functionality, the app enables users to send and receive messages on the go. This side project will showcase my ability to combine modern web technologies with traditional communication methods, and I'll be documenting my progress here. Stay tuned for updates as I continue to develop and refine this project!

- For a more technical overview of the project, please refer to the `DEV_NOTES.md` file.
- file path: `./hermes/DEV_NOTES.md`

# Local Prerequisites
- You'll need to run an instance of `Redis` and `Postgres` locally for this project to work.
- Please contact me for a sample `.env` file. It's needed to run the project.
- I would suggest running two seperate terminals in your local, one for `redis` and one for `rails console`.

# Local Setup

1. **Clone the Project Repository**
- Clone the repository to your local machine (replace with your repository URL):
- Navigate to the project directory

- **Copy:**
```bash
git clone https://github.com/Sambi85/Hermes-core.git
```

2. **Install Dependencies**
- From the project directory, run the following command to install all the gems listed in the Gemfile:
- **Copy:**
```bash
bundle install
```

- This will install dependencies for the project, including development, testing, and production gems.

3. **Set Up Environment Variables**
- This project requires a `.env` file to set environment variables (like API keys, database URL, Redis URL, etc.).
- Create a `.env` file in the root directory of the project.
- Copy and Paste the provided variables into your `.env`

4. **Set Up the Database**
- Make sure your `config/database.yml` is configured for PostgreSQL, especially the development and test environments.
- Please reach out, I can provide database.yml if needed.

Run the following commands to set up the database:

- **Copy:**
```bash
rails db:create
rails db:migrate
```

- **Copy, If you'd like to seed the database with some data, run the following command:**
```bash
rails db:seed 
```

5. **Run Project terminal**

- **In terminal 1:**
```bash
redis-server
```

- **In terminal 2:**
```bash
rails c
```
