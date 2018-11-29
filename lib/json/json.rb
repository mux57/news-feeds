module Json
  def api_json(obj,opts = [])
    hash = {}
    hash = obj.slice(*opts) if obj
    hash
  end
end
