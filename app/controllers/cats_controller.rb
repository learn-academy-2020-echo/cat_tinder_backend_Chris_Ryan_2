class CatsController < ApplicationController

    def index
        cats = Cat.all
        render json: cats
      end

    def create
       cat = Cat.create(cat_params)
       if cat.valid?
        render json: cat
       else
         render json: cat.errors, status: :unprocessable_entity
       end
    end
    
    def update
      cat = Cat.create(cat_params)
      if cat.valid?
        render json: cat
      else
        render json: cat.errors, status: :unprocessable_entity
      end
    end

    def destroy
      cat = Cat.find(params[:id])
      if cat.destory
        render json: cat
      else
        render json: cat.errors, status: :unprocessable_entity
      end
    end

      # Handle strong parameters, so we are secure
      private
      def cat_params
        params.require(:cat).permit(:name, :age, :enjoys)
      end

end
