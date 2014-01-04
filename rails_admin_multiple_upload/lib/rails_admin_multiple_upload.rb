require "rails_admin_multiple_upload/engine"

module RailsAdminMultipleUpload
end

require 'rails_admin/config/actions'

module RailsAdmin
  module Config
    module Actions
      class MultipleUpload < Base
        RailsAdmin::Config::Actions.register(self)
        register_instance_option :collection? do
          true
        end

        register_instance_option :link_icon do
          'icon-upload'
        end

        register_instance_option :http_methods do
          [:get, :post]
        end

        register_instance_option :controller do
          #Proc.show do
          #  @album = Album.find(params[:id])
          #  @album ||= Album.find(params[:album_id])
          #end

          Proc.new do
            @response = {}

            if request.post?
              @album = Album.find(params[:album_id])
              if @album.update_attribute(:photos_attributes, params[:album][:photos_attributes])
                #redirect_to_on_success
                flash[:notice] = 'Upload Success'
              else
                flash[:error] = 'Error uploading images. Please try again'
              end
          

              if @album.save
                redirect_to action: "index"
              end
            end

            #render :action => @action.template_name
          end
        end
      end
    end
  end
end

