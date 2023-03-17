defmodule PIndustriesSingularity.Repo.Migrations.CreateTickets do
  use Ecto.Migration

  def change do
    create table(:tickets) do
      add :title, :string
      add :description, :text
      add :status, :string

      timestamps()
    end
  end
end
