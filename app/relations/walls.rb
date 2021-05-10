class Walls < ROM::Relation[:sql]
  schema(:walls, infer: true) do
    attribute :created_at, Types::String
    attribute :updated_at, Types::String
  end
end