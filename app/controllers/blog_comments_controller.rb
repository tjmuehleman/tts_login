class BlogCommentsController < ApplicationController
  before_action :set_blog_comment, only: [:show, :edit, :update, :destroy]

  # GET /blog_comments
  # GET /blog_comments.json
  def index
    @blog_comments = BlogComment.all
  end

  # GET /blog_comments/1
  # GET /blog_comments/1.json
  def show
  end

  # GET /blog_comments/new
  def new
    @blog_comment = BlogComment.new
  end

  # GET /blog_comments/1/edit
  def edit
  end

  # POST /blog_comments
  # POST /blog_comments.json
  def create
    @blog_comment = BlogComment.new(blog_comment_params)

    respond_to do |format|
      if @blog_comment.save
        format.html { redirect_to @blog_comment, notice: 'Blog comment was successfully created.' }
        format.json { render action: 'show', status: :created, location: @blog_comment }
      else
        format.html { render action: 'new' }
        format.json { render json: @blog_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blog_comments/1
  # PATCH/PUT /blog_comments/1.json
  def update
    respond_to do |format|
      if @blog_comment.update(blog_comment_params)
        format.html { redirect_to @blog_comment, notice: 'Blog comment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @blog_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blog_comments/1
  # DELETE /blog_comments/1.json
  def destroy
    @blog_comment.destroy
    respond_to do |format|
      format.html { redirect_to blog_comments_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog_comment
      @blog_comment = BlogComment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blog_comment_params
      params.require(:blog_comment).permit(:entry_text, :user_id, :blog_entry_id, :entry_date)
    end
end
