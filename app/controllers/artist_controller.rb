class ArtistController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
        # authenticate_user!
        print params
        @artists = Artist.all()

    end

    def show 
        @paramas_id = params[:id]
        @artist = Artist.find(params[:id])

        @artist_comment = ArtistComment.all
    end

    def create_comment
        @paramas_id = params[:id]
        @artist = Artist.find(params[:id])
        puts "ARTIST COMMENT PARAMS"
        puts params
       
        artist_comment = ArtistComment.new()
        artist_comment.content = params[:content]
        artist_comment.artist_id = params[:artist_id]
        artist_comment.user_id = params[:user_id]
        artist_comment.save!

        
        
        redirect_to "/artist/#{@artist.id}"
    end

    def new
    end

    def create
        puts "ARTIST PARAMS"
        puts params
        artist = Artist.new()
        artist.name = params[:name]
        artist.year_of_birth = params[:year_of_birth]
        artist.active = params[:artist][:active]
        artist.save

        redirect_to '/'
    end

end
