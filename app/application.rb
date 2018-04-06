class Application

  def call(env)
    resp = Rack::Response.new
    binding.pry
    current_time = Time.now.to_s
    time = current_time[11,3].to_i

    if time > 12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end
  end

end
