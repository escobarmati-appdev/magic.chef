require "openai"

openai_client = OpenAI::Client.new(
  access_token: ENV.fetch("OPENAI_TOKEN"),
  request_timeout: 240 # Optional parameter; increases the number of seconds before a request times out
)

response = openai_client.chat(
    parameters: {
        model: "gpt-3.5-turbo", # Required. I recommend using gpt-3.5-turbo while developing, because it's a LOT cheaper than gpt-4
        messages: [
          { role: "system", content: "You are a michelin star chef who talks with fancy words" },
          { role: "user", content: "Can you give me a recipe with the following ingredients: lettuce?"}
        ],
        temperature: 0.7,
    }
)

p response.fetch("choices").at(0)
