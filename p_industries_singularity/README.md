# PIndustries Singularity

Welcome to PIndustries Singularity, a simple ticket tracking system built with Phoenix LiveView and Elixir!

## Getting Started

To get started with the application, follow these steps:

1. Clone the repository to your local machine: `git clone https://github.com/your-username/p_industries_singularity.git`
2. Install dependencies with `mix deps.get`
3. Set up the database with `mix ecto.setup`
4. Start the Phoenix server with `mix phx.server`
5. Visit `http://localhost:4000` to view the application in your browser.

## Docker

You can also run this application using Docker. Follow the steps below to build and run the Docker container.

### Build

```sh
docker build -t p_industries_singularity .
docker run -p 4000:4000 -e DATABASE_URL=<your_database_url> p_industries_singularity
```


## Features

PIndustries Singularity currently supports the following features:

- Creating and editing tickets
- Viewing a list of all tickets
- Sorting tickets by title or status
- Filtering tickets by title or status
- Live updating of ticket list and form using Phoenix LiveView

## Technologies Used

- Elixir 1.12.3
- Phoenix 1.7.1
- Phoenix LiveView 0.18.18
- PostgreSQL 14.1

## License

This project is licensed under the MIT License. See the LICENSE.md file for details.

## Acknowledgments

