class TeacherStudentLinksController < ApplicationController
  # GET /teacher_student_links
  # GET /teacher_student_links.json
  def index
    @teacher_student_links = TeacherStudentLink.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @teacher_student_links }
    end
  end

  # GET /teacher_student_links/1
  # GET /teacher_student_links/1.json
  def show
    @teacher_student_link = TeacherStudentLink.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @teacher_student_link }
    end
  end

  # GET /teacher_student_links/new
  # GET /teacher_student_links/new.json
  def new
    @teacher_student_link = TeacherStudentLink.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @teacher_student_link }
    end
  end

  # GET /teacher_student_links/1/edit
  def edit
    @teacher_student_link = TeacherStudentLink.find(params[:id])
  end

  # POST /teacher_student_links
  # POST /teacher_student_links.json
  def create
    @teacher_student_link = TeacherStudentLink.new(params[:teacher_student_link])

    respond_to do |format|
      if @teacher_student_link.save
        format.html { redirect_to @teacher_student_link, notice: 'Teacher student link was successfully created.' }
        format.json { render json: @teacher_student_link, status: :created, location: @teacher_student_link }
      else
        format.html { render action: "new" }
        format.json { render json: @teacher_student_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /teacher_student_links/1
  # PUT /teacher_student_links/1.json
  def update
    @teacher_student_link = TeacherStudentLink.find(params[:id])

    respond_to do |format|
      if @teacher_student_link.update_attributes(params[:teacher_student_link])
        format.html { redirect_to @teacher_student_link, notice: 'Teacher student link was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @teacher_student_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teacher_student_links/1
  # DELETE /teacher_student_links/1.json
  def destroy
    @teacher_student_link = TeacherStudentLink.find(params[:id])
    @teacher_student_link.destroy

    respond_to do |format|
      format.html { redirect_to teacher_student_links_url }
      format.json { head :no_content }
    end
  end
end
