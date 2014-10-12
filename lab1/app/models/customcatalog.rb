class Customcatalog
  include Mongoid::Document
  field :name, type: String
  field :features, type: String
  field :quantity, type: Integer
end
