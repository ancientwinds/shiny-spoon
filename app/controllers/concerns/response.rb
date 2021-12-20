module Response
  def json_response(object, status = :ok)
    csv_to_array(object)
    render json: object, status: status
  end

  private

  def csv_to_array(object)
    if object.is_a?(Array)
      object.each do |obj|
        csv_to_array(obj)
      end
    elsif object.is_a?(TrumpTweet)
      object.hashtags = object.hashtags.split(',')
      object.mentions = object.mentions.split(',')
    end
  end
end