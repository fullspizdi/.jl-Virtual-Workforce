```julia
module task_automation

using OpenAI

# Function to summarize email content using OpenAI's GPT model
function summarize_email(email_content::String)
    try
        # Prepare the prompt for the GPT model
        prompt = "Summarize the following email for a quick understanding:\n\n" * email_content
        # Call the OpenAI API to generate the summary
        response = OpenAI.Completion.create(prompt, {
            "max_tokens": 150,
            "temperature": 0.5,
            "top_p": 1.0,
            "frequency_penalty": 0.0,
            "presence_penalty": 0.0,
            "stop": ["\n"]
        })
        # Extract the text from the response
        summary = response.choices[1].text
        return summary
    catch e
        println("Failed to summarize email: ", e)
        return "Error in summarizing email."
    end
end

end
```
