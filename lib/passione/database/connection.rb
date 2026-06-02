require "sequel"

module Passione
  DB = Sequel.sqlite("passione.db")
end