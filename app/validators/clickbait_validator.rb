class ClickbaitValidator < ActiveModel::Validator
    def validate(record)
        unless record.title && record.title.match?(/(Won't Believe)|(Secret)|(Top \d)|(Guess)/)
            record.errors[:title] << "Is clickbait!"
        end
    end
end