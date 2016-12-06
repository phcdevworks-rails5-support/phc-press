Rails.application.routes.draw do

    # Add PHC Engine Routes
    mount Phcpress::Engine, :at => '/'

end
