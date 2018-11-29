module UserJson
  USER_ATTRIBUTES = %w(name)
  def user_json(user,opts=[])
    hash ={}
    hash[:type] = "User"
    hash.merge!(api_json(user, USER_ATTRIBUTES))
    hash
  end
end
