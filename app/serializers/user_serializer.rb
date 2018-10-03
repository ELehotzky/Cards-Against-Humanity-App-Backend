class UserSerializer < ActiveModel::Serializer
  attributes :id, :played_cards, :name, :points

  def played_cards
    self.object.played_cards.map do |card|
      {
        votes: card.votes,
        played: card.played,
        round: card.round.id,
        whiteCard: card.white_card.content
      }
    end
  end
end
