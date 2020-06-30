json.library_questions do
  json.array!(@library_questions) do |question|
    json.id question.id
    json.content question.content

    json.answers do
      json.array!(question.answers) do |answer|
        json.id answer.id
        json.content answer.content
        json.correct answer.correct
      end
    end
  end
end
