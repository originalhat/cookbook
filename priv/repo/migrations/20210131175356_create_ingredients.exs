defmodule Cookbook.Repo.Migrations.RecipeHasManyIngredients do
  use Ecto.Migration

  def change do
    create table(:ingredients) do
      add :recipe_id, references(:recipes)
      add :ingredient, :string
      add :quantity, :string
    end
  end
end
