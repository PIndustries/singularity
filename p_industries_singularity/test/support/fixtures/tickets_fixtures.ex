defmodule PIndustriesSingularity.TicketsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `PIndustriesSingularity.Tickets` context.
  """

  @doc """
  Generate a ticket.
  """
  def ticket_fixture(attrs \\ %{}) do
    {:ok, ticket} =
      attrs
      |> Enum.into(%{
        description: "some description",
        status: "some status",
        title: "some title"
      })
      |> PIndustriesSingularity.Tickets.create_ticket()

    ticket
  end
end
