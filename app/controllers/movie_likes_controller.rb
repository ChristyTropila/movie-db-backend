class MovieLikesController < ApplicationController

    def index
     @movies=MovieLike.all
     render json: @movies
    end

    def show
      @movie=MovieLike.find_or_create_by(movie_id: params[:id])

      if @movie.likes===nil 
         @movie.likes=0
      end
      if @movie.dislikes===nil
        @movie.dislikes=0
      end
        render json: @movie
    end

    def create
     @movie=MovieLike.find_or_create_by(movie_id: params[:movie_id]);
      
       if @movie.likes===nil 
           @movie.likes=0
       end
       if @movie.dislikes===nil
         @movie.dislikes=0
       end

         @addLike= @movie.likes + params[:likes]
         @movie.update(likes: @addLike)

        render json: @movie
    end

    def dislike
      @movie=MovieLike.find_or_create_by(movie_id: params[:movie_id]);

       if @movie.likes===nil 
          @movie.likes=0
       end
       if @movie.dislikes===nil
         @movie.dislikes=0
       end

        @addDislike=@movie.dislikes + params[:dislikes]

        @movie.update(dislikes: @addDislike)
        
       render json: @movie
    end

end

