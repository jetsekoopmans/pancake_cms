# RailsAdmin config file. Generated on December 26, 2013 15:23
# See github.com/sferik/rails_admin for more informations

RailsAdmin.config do |config|

  config.model Section do
    parent Pages
    edit do
      field :pages
      field :content, :ck_editor
    end
    list do
      exclude_fields :id
    end
  end
  
  config.model Photo do
    edit do
      field :caption
      field :file, :paperclip
      field :album
    end
  end

  config.model Album do
    edit do
      field :title
    end
  end

  config.model News do
    weight -1
    navigation_label 'Content'
    edit do
      field :title
      field :url
      field :date
      field :excerpt
      field :content, :ck_editor
    end
    list do
      exclude_fields :id
    end
  end

  config.model User do
    navigation_label 'Settings'
  end

  config.model Contact do
    weight 0
    navigation_label 'Settings'
    label "Contact Response" 
    label_plural "Contact Response"
    edit do
      field :name
      field :email
      field :response_subject
      field :response_message, :ck_editor
    end
    list do
      exclude_fields :id
    end
  end

  config.model Pages do
    weight -2
    navigation_label 'Content'
    edit do
      field :title
      field :url
      field :meta_description
      field :meta_keywords
      field :menu
      field :template
      field :section
    end
    nestable_tree({
      position_field: :position,
      max_depth: 2
    })
    list do
      exclude_fields :id
    end
  end


  config.actions do
    # root actions
    dashboard
    # collection actions 
    index do
      except ['Contact']
    end
    new do
      except ['Contact']
    end
    #multiple_upload do
    #  only Album
    #end
    multiple_upload do
      only Photo
    end
    #export
    #history_index
    bulk_delete
    
    # member actions
    show
    edit
    delete do
      except ['Contact']
    end
    #history_show
    show_in_app

    # Add the nestable action for configured models
    nestable
  end


  ################  Global configuration  ################

  # Set the admin name here (optional second array element will appear in red). For example:
  config.main_app_name = ['Pancake Cms', 'Admin']
  # or for a more dynamic name:
  # config.main_app_name = Proc.new { |controller| [Rails.application.engine_name.titleize, controller.params['action'].titleize] }

  # RailsAdmin may need a way to know who the current user is]
  config.current_user_method { current_user } # auto-generated

  # If you want to track changes on your models:
  # config.audit_with :history, 'User'

  # Or with a PaperTrail: (you need to install it first)
  # config.audit_with :paper_trail, 'User'

  # Display empty fields in show views:
  # config.compact_show_view = false

  # Number of default rows per-page:
  # config.default_items_per_page = 20

  # Exclude specific models (keep the others):
  # config.excluded_models = []

  # Include specific models (exclude the others):
  # config.included_models = []

  # Label methods for model instances:ab
  # config.label_methods << :description # Default is [:name, :title]


  ################  Model configuration  ################

  # Each model configuration can alternatively:
  #   - stay here in a `config.model 'ModelName' do ... end` block
  #   - go in the model definition file in a `rails_admin do ... end` block

  # This is your choice to make:
  #   - This initializer is loaded once at startup (modifications will show up when restarting the application) but all RailsAdmin configuration would stay in one place.
  #   - Models are reloaded at each request in development mode (when modified), which may smooth your RailsAdmin development workflow.


  # Now you probably need to tour the wiki a bit: https://github.com/sferik/rails_admin/wiki
  # Anyway, here is how RailsAdmin saw your application's models when you ran the initializer:
  
  # CanCan
  config.authorize_with :cancan

end
