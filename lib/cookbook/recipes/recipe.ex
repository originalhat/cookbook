defmodule Cookbook.Recipes.Recipe do
  use Ecto.Schema

  import Ecto.Changeset

  alias Cookbook.Recipes.Ingredient

  schema "recipes" do
    field :description, :string
    field :title, :string

    has_many :ingredients, Ingredient

    timestamps()
  end

  @doc false
  def changeset(recipe, attrs) do
    recipe
    |> cast(attrs, [:title, :description])
    |> validate_required([:title, :description])
  end
end
