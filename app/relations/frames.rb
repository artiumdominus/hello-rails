class Frames < ROM::Relation[:sql]
  schema(:frames, infer: true) do
    attribute :created_at, Types::String
    attribute :updated_at, Types::String
  end
end