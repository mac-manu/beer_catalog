defmodule BeerCatalog.Catalog.Beer do
  use Ecto.Schema
  import Ecto.Changeset

  schema "beers" do
    field :brand, :string
    field :origin, :string
    field :quantity, :integer
    field :style, :string
    field :"—-no-context", :string
    field :"—-no-schema", :string

    timestamps()
  end

  @doc false
  def changeset(beer, attrs) do
    beer
    |> cast(attrs, [:brand, :style, :origin, :quantity, :"—-no-context", :"—-no-schema"])
    |> validate_required([:brand, :style, :origin, :quantity, :"—-no-context", :"—-no-schema"])
  end
end
