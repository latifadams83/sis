module Super

  class StaffsController < SuperController
    before_action :set_staff, only: [:show, :edit, :update, :destroy]

    def index
      @staffs = Staff.all
    end

    def show
    end

    def new
      @staff = Staff.new
      @categories = StaffCategory.all
      @departments = StaffDepartment.all
    end

    def edit
    end

    def create
      @staff = Staff.new(staff_params)

      respond_to do |format|
        if params[:email].present? && params[:password].present?
          user = User.new(user_params)
          user.staffs << @staff
          if user.save
            format.html { redirect_to add_qualification_super_staff_path(@staff.id), notice: 'Add Staff Qualifications.' }
            format.json { render :show, status: :created, location: @staff }
          else
            format.html { render :new }
            format.json { render json: @staff.errors, status: :unprocessable_entity }
          end
        else
          if @staff.save
            format.html { redirect_to add_qualification_super_staff_path(@staff.id), notice: 'Add Empoyment Information.' }
            format.json { render :show, status: :created, location: @staff }
          else
            format.html { render :new }
            format.json { render json: @staff.errors, status: :unprocessable_entity }
          end
        end
      end
    end

    def update
      respond_to do |format|
        if @staff.update(staff_params)
          format.html { redirect_to @staff, notice: 'Staff was successfully updated.' }
          format.json { render :show, status: :ok, location: @staff }
        else
          format.html { render :edit }
          format.json { render json: @staff.errors, status: :unprocessable_entity }
        end
      end
    end

    def destroy
      @staff.destroy
      respond_to do |format|
        format.html { redirect_to super_staffs_url, notice: 'Staff was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_staff
        @staff = Staff.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def staff_params
        params.require(:staff).permit(:title, :first_name, :middle_name, :last_name, :gender, :date_of_birth, :religious_denomination, :image, :disability, :disability_desc, :date_join, :appointment_date, :sssnit_no, :rank, :registered_no, :employment_id, :staff_category_id, :staff_department_id, :user_id, :created_by, :updated_by, :is_active, :portal_access)
      end

      def user_params
        params.permit(:email, :password, :role)
      end

  end


end
