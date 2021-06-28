class ListingsController < ApplicationController
    def new
        # since the listing form required the breed id as a foreign key , pass this info to the form here
        @breeds = Breed.all 
        @sexes = Listing.sexes.keys
        @listing = Listing.new 
    end 

    def create
        puts "-------"
        puts params[:listing]
              # mention what fields coming from the form are allowed on the server side
              listing_params = params.require(:listing).permit(:title,:description,:price,:deposit,:city,:state,:date_of_birth,:diet,:breed_id, :sex)
              @listing = Listing.create(listing_params)
    end 
end 