defmodule Cookbook.Recipes.Ingredient do
  use Ecto.Schema

  import Ecto.Changeset

  alias Cookbook.Recipes.Recipe


  schema "ingredients" do
    field :ingredient, :string
    field :quantity, :string

    belongs_to :recipe, Recipe

    timestamps()
  end

  @doc false
  def changeset(ingredient, attrs) do
    ingredient
    |> cast(attrs, [:ingredient, :quantity])
    |> validate_required([:ingredient, :quantity])
  end
end
