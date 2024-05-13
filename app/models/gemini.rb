class Gemini
  attr_accessor :api_key, :url, :image_url

  def initialize(image_url)
    @image_url = image_url
    @api_key = Rails.application.credentials.gemini_api.api_key
    @url = "https://generativelanguage.googleapis.com/v1beta/models/gemini-pro-vision:generateContent?key=#{api_key}"
  end

  def generate_description
    image_data = Net::HTTP.get(URI(image_url))

    base64_image = Base64.strict_encode64(image_data)

    request_body = {
      contents: [
        {
          parts: [
            { text: "Describe this image. Answer in portuguese" },
            {
              inline_data: {
                mime_type: "image/jpeg",
                data: base64_image,
              },
            },
          ],
        },
      ],
    }.to_json

    uri = URI(url)
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true

    request = Net::HTTP::Post.new(uri)
    request.content_type = "application/json"
    request.body = request_body

    response = http.request(request)

    if response.code == "200"
      JSON.parse(response.body)["candidates"][0].dig("content", "parts")[0]["text"]
    else
      puts "Erro na solicitação: #{response.code} - #{response.message}"
    end
  end
end
