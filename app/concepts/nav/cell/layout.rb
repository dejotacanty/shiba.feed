
class Nav::Cell::Layout < Trailblazer::Cell
        delegates :parent_controller, :flash
        delegates :parent_controller, :image_tag
    
       include ActionView::Helpers::CsrfHelper
       include ActionView::Helpers::TranslationHelper
       include Cell::Translation
 
      private
        def body_class
           "#{context[:controller_name]} #{context[:action_name]}"
        end
end
