class MovieLikeSerializer < ActiveModel::Serializer
    attributes :id, :movie_id, :likes, :dislikes
end