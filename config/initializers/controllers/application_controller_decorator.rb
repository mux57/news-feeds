Rails.application.config.to_prepare do
  ApplicationController.class_eval do
    def set_format_engine
      request.format = :json
    end

    def require_user
      if params[:user_id]
        @current_user ||= User.find(params[:user_id])
      end
    end

    def record_not_found
      {error: {message: "Record Not Found"},status: 404}
    end
    def unauthorised_access
      {error: {message: "Unauthorised Access"},status: 401}
    end

    def bad_request
      {error: {message: "Bad Request"},status: 400}
    end
  end
end
