defmodule BeerCatalog.Repo.Migrations.CreateBeers do
  use Ecto.Migration

  def change do
    create table(:beers) do
      add :brand, :string
      add :style, :string
      add :origin, :string
      add :quantity, :integer
      add :"—-no-context", :string
      add :"—-no-schema", :string

      timestamps()
    end

  end
end
