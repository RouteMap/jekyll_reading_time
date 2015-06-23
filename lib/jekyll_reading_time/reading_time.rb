require 'liquid'

module JekyllReadingTime
  module ReadingTime
    def reading_time(input)
      minutes = reading_time_as_integer(input)
      minutes = 1 if minutes < 1

      if minutes == 1
        "#{about_translation} #{minutes} #{minute_translation}"
      else
        "#{about_translation} #{minutes} #{minutes_translation}"
      end
    end

    private

    def reading_time_as_integer(input)
      words = input.split(" ").count
      (words / words_per_minute).floor
    end

    def about_translation
      translations.fetch("about", "about")
    end

    def minute_translation
      translations.fetch("minute", "minute")
    end

    def minutes_translation
      translations.fetch("minutes", "minutes")
    end

    def words_per_minute
      reading_time_config.fetch("words_per_minute", 180)
    end

    def translations
      reading_time_config.fetch("translations", {})
    end

    def reading_time_config
      Jekyll.configuration({}).fetch("reading_time", {})
    end
  end
end

Liquid::Template.register_filter(JekyllReadingTime::ReadingTime)
