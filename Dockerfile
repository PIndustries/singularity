# Use an official Elixir runtime as a parent image
FROM elixir:1.14-alpine

# Set the working directory
WORKDIR /app

# Install necessary system dependencies
RUN apk update && \
    apk add build-base npm git python3

# Install hex and rebar
RUN mix local.hex --force && \
    mix local.rebar --force

# Copy the application code
COPY . .

# Install dependencies
RUN mix deps.get && \
    mix deps.compile

# Compile the application
RUN mix compile

# Install Node.js dependencies
RUN cd assets && \
    npm install && \
    npm run deploy && \
    cd ..

# Set the environment variables
ENV MIX_ENV=dev

# Expose the application port
EXPOSE 4000

# Start the application
CMD ["mix", "phx.server"]