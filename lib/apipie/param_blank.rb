module Apipie
  # Class ParamBlank checks if given value is blank.
  # Examples:
  #
  #    ParamBlank.new(nil).blank?     #=> true
  #    ParamBlank.new(1).blank?       #=> false
  #    ParamBlank.new(false).blank?   #=> false
  #
  class ParamBlank
    def initialize(value)
      @value = value
    end

    def blank?
      @value.blank? && @value != false
    end
  end
end
