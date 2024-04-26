```julia
using OpenAI
using Dotenv
using .task_automation
using .text_generator
using .insights

# Load environment variables
Dotenv.load()

# Function to initialize the OpenAI API with the key from .env
function initialize_openai()
    api_key = ENV["OPENAI_API_KEY"]
    OpenAI.set_api_key(api_key)
end

# Main function to orchestrate tasks
function main()
    # Initialize OpenAI API
    initialize_openai()

    # Example task usages
    email_content = "Here is a long email that needs to be summarized for better understanding."
    product_description = "This new product is innovative, featuring state-of-the-art technology."
    news_data = "Recent market trends show a significant shift in consumer preferences."

    # Using task automation module
    email_summary = task_automation.summarize_email(email_content)
    println("Email Summary: ", email_summary)

    # Using text generator module
    ad_copy = text_generator.write_ad_copy(product_description)
    println("Ad Copy: ", ad_copy)

    # Using insights module
    sentiment_analysis = insights.analyze_sentiment(news_data)
    println("Market Sentiment: ", sentiment_analysis)
end

# Run the main function
main()
```
