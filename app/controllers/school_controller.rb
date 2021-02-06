def create
  @school = School.new(school_params)
  @school.save
  redirect_to school_path(@school)
end
 
def update
  @post = Post.find(params[:id])
  @post.update(post_params)
  redirect_to post_path(@post)
end
 
private
 
def post_params
  params.require(:post).permit(:title, :description)
end