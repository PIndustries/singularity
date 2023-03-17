defmodule P.Industries.Singularity.Web.TicketLive.Show do
  use P.Industries.Singularity.Web, :live_view

  alias P.Industries.Singularity.Tickets

  @impl true
  def render(assigns) do
    @ticket = assigns[:ticket]
    @page_title = "Ticket ##{@ticket.id}"
    @live_action = assigns[:live_action] || :none

    # Rest of the code
  end

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  @impl true
  def handle_params(%{"id" => id}, _, socket) do
    {:noreply,
     socket
     |> assign(:page_title, page_title(socket.assigns.live_action))
     |> assign(:ticket, Tickets.get_ticket!(id))}
  end

  defp page_title(:show), do: "Show Ticket"
  defp page_title(:edit), do: "Edit Ticket"
end
