class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
  
    def tyrant
      Tyrant::Session.new(request.env['warden'])
    end
    helper_method :tyrant
  
      def render_cell(cell:, model: nil, context: {}, layout: Nav::Cell::Layout)
      # Automatically merge in the controller and action names
      context.merge!(
        controller_name: controller_name, 
        action_name: action_name, 
        subdomain: request.subdomain
      )
      
      # Render the given cell
          render html: cell(cell, model, context: context, layout: layout)
      end
end
