P.Industries Singularity
=======================

Welcome to PIndustries Singularity, a simple ticket tracking system built with Phoenix LiveView and Elixir!

Getting Started
---------------

To get started with the application, follow these steps:

`Note: This assumes that you already have a PostgreSQL server running locally with a user and database that you can use. If you don't have one set up, you'll need to install PostgreSQL and create a new user and database before running this command.`

1.  Clone the repository to your local machine: `git clone https://github.com/PIndustries/singularity.git`
2.  Install dependencies with `mix deps.get`
3.  Set up the database with `mix ecto.setup`
4.  Start the Phoenix server with `mix phx.server`
5.  Visit `http://localhost:4000` to view the application in your browser.

Docker
------

You can also run this application using Docker. Follow the steps below to build and run the Docker container.

### Build

`docker build -t p_industries_singularity .`

### Run
`docker run -p 4000:4000 -e DATABASE_URL=<your_database_url> p_industries_singularity`

Installing Elixir
-----------------

To install Elixir, follow the instructions for your operating system:

### macOS

To install Elixir on macOS, you can use Homebrew. First, install Homebrew by running this command in your terminal:


`/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"`

Then, run the following command to install Elixir:

`brew install elixir`

### Linux

To install Elixir on Linux, you can use your distribution's package manager. For example, on Ubuntu or Debian, you can run the following commands:


`sudo apt-get update
sudo apt-get install elixir`

### Windows

To install Elixir on Windows, you can use the official Elixir installer. You can download the installer from the [Elixir website](https://elixir-lang.org/install.html#windows). Once downloaded, run the installer and follow the instructions.

Features
--------

PIndustries Singularity currently supports the following features:

-   Creating and editing tickets
-   Viewing a list of all tickets
-   Sorting tickets by title or status
-   Filtering tickets by title or status
-   Live updating of ticket list and form using Phoenix LiveView

Technologies Used
-----------------

-   Elixir 1.12.3
-   Phoenix 1.7.1
-   Phoenix LiveView 0.18.18
-   PostgreSQL 14.1

License
-------

This project is licensed under the MIT License. See the LICENSE.md file for details.

Acknowledgments
---------------