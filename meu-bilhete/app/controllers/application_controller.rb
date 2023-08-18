class ApplicationController < ActionController::Base


    def after_sign_in_path_for(resource)
        if session[:event_id_for_checkout].present?
          finalize_purchase_path(session[:event_id_for_checkout]) 
        else
          root_path
        end
      end

      def after_sign_in_path_for(resource)
        if session[:event_id_for_checkout].present?
          event = Event.find(session[:event_id_for_checkout])
      
          # Encontre ou crie um carrinho para o usuário atual
          cart = current_user.cart || current_user.create_cart
      
          # Adicione o evento ao carrinho
          cart_item = cart.cart_items.find_or_initialize_by(event: event)
          cart_item.quantity = (cart_item.quantity || 0) + 1 # ou qualquer lógica para definir a quantidade
          cart_item.save!
      
          # Limpe a sessão
          session.delete(:event_id_for_checkout)
      
          cart_path(cart) # Substitua por sua rota para o carrinho de compras
        else
          root_path
        end
      end


end
