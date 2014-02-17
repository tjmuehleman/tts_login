class BlogEntriesController < ApplicationController
  before_action :set_blog_entry, only: [:show, :edit, :update, :destroy]

  # GET /blog_entries
  # GET /blog_entries.json
  def index
    @blog_entries = BlogEntry.all

    #@blog_entries = BlogEntry.where("blog_id = 1")
  end

  # GET /blog_entries/1
  # GET /blog_entries/1.json
  def show
    @blog = @blog_entry.blog
    @user = @blog_entry.user

    #@awesome_comments = @blog_entry.blog_comments

    
    @last_comment = @blog_entry.blog_comments.last
    # display the LAST comment for a given 
    # blog entry

  end

  # GET /blog_entries/new
  def new
    @blog_entry = BlogEntry.new
  end

  # GET /blog_entries/1/edit
  def edit
  end

  # POST /blog_entries
  # POST /blog_entries.json
  def create
    @blog_entry = BlogEntry.new(blog_entry_params)

    respond_to do |format|
      if @blog_entry.save
        format.html { redirect_to @blog_entry, notice: 'Blog entry was successfully created.' }
        format.json { render action: 'show', status: :created, location: @blog_entry }
      else
        format.html { render action: 'new' }
        format.json { render json: @blog_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blog_entries/1
  # PATCH/PUT /blog_entries/1.json
  def update
    respond_to do |format|
      if @blog_entry.update(blog_entry_params)
        format.html { redirect_to @blog_entry, notice: 'Blog entry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @blog_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blog_entries/1
  # DELETE /blog_entries/1.json
  def destroy
    @blog_entry.destroy
    respond_to do |format|
      format.html { redirect_to blog_entries_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog_entry
      @blog_entry = BlogEntry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blog_entry_params
      params.require(:blog_entry).permit(:user_id, :blog_id, :entry, :subject, :category)
    end
end
