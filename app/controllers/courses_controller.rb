class CoursesController < ApplicationController
  # GET /courses
  # GET /courses.json

  # def statusworld
  #     # @mahteach = @teachers << current_user unless @teachers.include?(current_user)
  #     # @mahlearn = @students << current_user unless @students.include?(current_user)
  #     # @rating = 5

  # end

  # def myclasses
  #   class_status = params[:class_status]
  #   # @courses = Course.all.select { |c| c.students.include? current_user}

  #   #teacher
  #   #student

  #   # @courses = Course.all
  #   # @courses = Course.all.map { |i| i.students}
  #   if class_status == "student"
  #     @courses = Course.all.select { |c| c.students.include? current_user}
  #   else
  #     @courses = Course.all.select { |c| c.teachers.include? current_user}
  #   end


  # end

  def admin_create_course
    @course = Course.new

  end

  def add_teacher_to_course
    @courses = Course.all
    @users = User.all
# class UsersController < ApplicationController
#   # GET /users
#   # GET /users.json
#   def index
#     @users = User.all

  end

  def add_student_to_course
    @course = Course.new

  end

  def index
    @courses = Course.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @courses }
    end
  end

  # GET /courses/1
  # GET /courses/1.json
  def show
    @course = Course.find(params[:id])
    if signed_in?
=begin
      if params[:class_status] == "teacher"
        @mahteach = @teachers << current_user unless @teachers.include?(current_user)
      elsif params[:class_status] == "student"
        @mahlearn = @students << current_user unless @students.include?(current_user)
      else
        raise current_user.inspect
      end
      # evaluating if ones status
=end
      @students = @course.students #assigns a student to that course array which it yields
      @teachers = @course.teachers #course array which it yields teachers
      @teacher = @teachers.include?(current_user)
      @student = @students.include?(current_user)
          #current user status teacher or students
      # setting ones status
      # current_user

      # @teachers << current_user
      # @students << current_user

      # set the current_user to teacher
      # set the current_user to student

      # c.teachers << u unless c.teachers.include?(rr)

      @mahteach = @teachers << current_user unless @teachers.include?(current_user)
      @mahlearn = @students << current_user unless @students.include?(current_user)
        #setting their user status
    end

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @course }
    end
  end

  # GET /courses/new
  # GET /courses/new.json
  def new
    @course = Course.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @course }
    end
  end

  # GET /courses/1/edit
  def edit
    @course = Course.find(params[:id])
  end

  # POST /courses
  # POST /courses.json
  def create
    @course = Course.new(params[:course])

    respond_to do |format|
      if @course.save
        format.html { redirect_to @course, notice: 'Course was successfully created.' }
        format.json { render json: @course, status: :created, location: @course }
      else
        format.html { render action: "new" }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /courses/1
  # PUT /courses/1.json
  def update
    @course = Course.find(params[:id])

    respond_to do |format|
      if @course.update_attributes(params[:course])
        format.html { redirect_to @course, notice: 'Course was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courses/1
  # DELETE /courses/1.json
  def destroy
    @course = Course.find(params[:id])
    @course.destroy

    respond_to do |format|
      format.html { redirect_to courses_url }
      format.json { head :no_content }
    end
  end
end
