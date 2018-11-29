module PostJson
  POST_ATTRIBUTES = %w(content)
  def post_json(post,user,include_comment: false)
    hash = {}
    hash[:type] = "Post"
    hash.merge!(api_json(post,POST_ATTRIBUTES))
    hash[:user] = user_json(user)
    if include_comment
      comments = post.comments
      hash[:comments] = comments.map do |comment|
        comment_json(comment)
      end
    end
    hash
  end
end
