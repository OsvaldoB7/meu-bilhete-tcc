class ApplicationController < ActionController::Base


    def after_sign_in_path_for(resource)
        if session[:event_id_for_checkout].present?
          finalize_purchase_path(session[:event_id_for_checkout]) 
        else
          root_path
        end
      end
end
