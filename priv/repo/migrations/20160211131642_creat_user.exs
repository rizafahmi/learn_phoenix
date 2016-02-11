defmodule Rumbl.Repo.Migrations.CreatUser do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string, null: false
      add :username, :string
      add :password_hash, :string

      timestamps
    end

    create unique_index(:users, [:username])
  end
end
