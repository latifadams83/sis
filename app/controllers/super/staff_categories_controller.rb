module Super
  class StaffCategoriesController < SuperController
    before_action :set_staff_category, only: [:show, :edit, :update, :destroy]

    def index
      @staff_categories = StaffCategory.all
      @staff_category = StaffCategory.new
    end

    def new
      @staff_category = StaffCategory.new
    end

    def edit
    end

    def create
      @staff_category = StaffCategory.new(staff_category_params)

      respond_to do |format|
        if @staff_category.save
          format.html { redirect_to super_staff_category_path(@staff_category), notice: 'Staff category was successfully created.' }
          format.json { render :show, status: :created, location: @staff_category }
          format.js
        else
          format.html { render :new }
          format.json { render json: @staff_category.errors, status: :unprocessable_entity }
          format.js
        end
      end
    end

    def update
      respond_to do |format|
        if @staff_category.update(staff_category_params)
          format.html { redirect_to @staff_category, notice: 'Staff category was successfully updated.' }
          format.js
        else
          format.html { render :edit }
          format.js
        end
      end
    end

    def destroy
      @staff_category.destroy
      respond_to do |format|
        format.html { redirect_to staff_categories_url, notice: 'Staff category was successfully destroyed.' }
        format.js
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_staff_category
        @staff_category = StaffCategory.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def staff_category_params
        params.require(:staff_category).permit(:name, :created_by, :updated_by)
      end
  end

end
