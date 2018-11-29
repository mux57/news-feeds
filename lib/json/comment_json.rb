module CommentJson
  COMMENT_ATTRRIBUTES = %w(content)
  def comment_json(comment)
    hash = {}
    hash[:type] = "Comment"
    hash[:user] = user_json(comment.user)
    hash.merge!(api_json(comment,COMMENT_ATTRRIBUTES))
    hash
  end
end
