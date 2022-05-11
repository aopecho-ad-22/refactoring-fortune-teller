class ZodiacController < ApplicationController
  def horoscope
    @star_sign = params.fetch("star_sign")

    all_zodiacs = Zodiac.list
    this_zodiac = all_zodiacs.fetch(:aries)
    @horoscope = this_zodiac.fetch(:horoscope)
    
  end
end