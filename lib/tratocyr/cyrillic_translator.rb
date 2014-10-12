# encoding: UTF-8
require 'lib/tratocyr/mappings'

module Tratocyr
  # Provide functionality for translation between translit symbols string to cyrillic symbols string
  class CyrillicTranslator
    include Tratocyr::Mapping

    # Translate string symbols from translit to cyrillic
    # @param: text [String] - text with translit symbols
    # @example
    #    Tratocyr::CyrillicTranslator.new.to_cyrillic("Privet medved'!")
    # @return: [String] - text with translated with cyrillic symbols
    # @note: Return empty string if parameter type not equals to 'String'
    def to_cyrillic(text)
      return '' if not is_valid?(text)

      latin_text = text.dup
      latin_to_cyr.each do |mapping|
        latin_text.gsub!(mapping[:latin_regexp], mapping[:cyrillic_value])
      end
      latin_text
    end

    # Translate string symbols from translit to cyrillic
    # @param: text [String] - text with translit symbols
    # @example
    #    Tratocyr::CyrillicTranslator.new.to_cyrillic("Privet medved'!")
    # @return: [String] - text with translated with cyrillic symbols
    # @raise: [TypeError] - if try to provide not String data
    def to_cyrillic!(text)

      raise TypeError, TYPE_ERROR_MESSAGE if not is_valid?(text)

      self.to_cyrillic(text)
    end

    private

    TYPE_ERROR_MESSAGE = 'You must give a not empty string for cyrillization!'

    def is_valid?(text)
      not text.nil? and text.kind_of?(String)
    end
  end

end