require 'pry'
class TitleValidator < ActiveModel::Validator

  def validate(record)
    if record.title
      @lowercase_title = record.title.downcase
    end
    unless @lowercase_title.include?("won't believe") | @lowercase_title.include?("secret") | @lowercase_title.include?("top") | @lowercase_title.include?("guess")
      record.errors[:title] << "Must be clickbait!"
    end
  end

end
