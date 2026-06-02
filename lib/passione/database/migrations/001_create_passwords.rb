require "sequel"

Sequel.migration do
  change do
    create_table(:passwords) do
      primary_key :id

      String :value
    end
  end
end