# encoding: UTF-8

module Tratocyr
  # Provide mapping between latin (translit) symbols to cyrillic symbols
  module Mapping

    # Return array of mappings from translit symbols to cyrillic symbols
    # @return: [Array] - array of hashes with two keys :latin_regexp and cyrillic_value
    def latin_to_cyr
      @mapping = @mapping || [
          {:latin_regexp => /Ya|Ja/, :cyrillic_value => 'Я'},
          {:latin_regexp => /ya|ja/, :cyrillic_value => 'я'},
          {:latin_regexp => /Je/, :cyrillic_value => 'Э'},
          {:latin_regexp => /je|ä/, :cyrillic_value => 'э'},
          {:latin_regexp => /Ju|Yu/, :cyrillic_value => 'Ю'},
          {:latin_regexp => /ju|yu|ü/, :cyrillic_value => 'ю'},
          {:latin_regexp => /Ch/, :cyrillic_value => 'Ч'},
          {:latin_regexp => /ch/, :cyrillic_value => 'ч'},
          {:latin_regexp => /Shh|W/, :cyrillic_value => 'Щ'},
          {:latin_regexp => /shh|w/, :cyrillic_value => 'щ'},
          {:latin_regexp => /Sh/, :cyrillic_value => 'Ш'},
          {:latin_regexp => /sh/, :cyrillic_value => 'ш'},
          {:latin_regexp => /Zh/, :cyrillic_value => 'Ж'},
          {:latin_regexp => /zh/, :cyrillic_value => 'ж'},
          {:latin_regexp => /Yo|Jo/, :cyrillic_value => 'Ё'},
          {:latin_regexp => /yo|jo|ö/, :cyrillic_value => 'ё'},
          {:latin_regexp => /H/, :cyrillic_value => 'Х'},
          {:latin_regexp => /h/, :cyrillic_value => 'х'},
          {:latin_regexp => /X/, :cyrillic_value => 'Кс'},
          {:latin_regexp => /x/, :cyrillic_value => 'кс'},
          {:latin_regexp => /"|'/, :cyrillic_value => 'ь'},
          {:latin_regexp => /##/, :cyrillic_value => 'ъ'},
          {:latin_regexp => /A/, :cyrillic_value => 'А'},
          {:latin_regexp => /a/, :cyrillic_value => 'а'},
          {:latin_regexp => /B/, :cyrillic_value => 'Б'},
          {:latin_regexp => /b/, :cyrillic_value => 'б'},
          {:latin_regexp => /V/, :cyrillic_value => 'В'},
          {:latin_regexp => /v/, :cyrillic_value => 'в'},
          {:latin_regexp => /G/, :cyrillic_value => 'Г'},
          {:latin_regexp => /g/, :cyrillic_value => 'г'},
          {:latin_regexp => /D/, :cyrillic_value => 'Д'},
          {:latin_regexp => /d/, :cyrillic_value => 'д'},
          {:latin_regexp => /Z/, :cyrillic_value => 'З'},
          {:latin_regexp => /z/, :cyrillic_value => 'з'},
          {:latin_regexp => /I/, :cyrillic_value => 'И'},
          {:latin_regexp => /i/, :cyrillic_value => 'и'},
          {:latin_regexp => /J/, :cyrillic_value => 'Й'},
          {:latin_regexp => /j/, :cyrillic_value => 'й'},
          {:latin_regexp => /K/, :cyrillic_value => 'К'},
          {:latin_regexp => /k/, :cyrillic_value => 'к'},
          {:latin_regexp => /L/, :cyrillic_value => 'Л'},
          {:latin_regexp => /l/, :cyrillic_value => 'л'},
          {:latin_regexp => /M/, :cyrillic_value => 'М'},
          {:latin_regexp => /m/, :cyrillic_value => 'м'},
          {:latin_regexp => /N/, :cyrillic_value => 'Н'},
          {:latin_regexp => /n/, :cyrillic_value => 'н'},
          {:latin_regexp => /O/, :cyrillic_value => 'О'},
          {:latin_regexp => /o/, :cyrillic_value => 'о'},
          {:latin_regexp => /P/, :cyrillic_value => 'П'},
          {:latin_regexp => /p/, :cyrillic_value => 'п'},
          {:latin_regexp => /R/, :cyrillic_value => 'Р'},
          {:latin_regexp => /r/, :cyrillic_value => 'р'},
          {:latin_regexp => /S/, :cyrillic_value => 'С'},
          {:latin_regexp => /s/, :cyrillic_value => 'с'},
          {:latin_regexp => /T/, :cyrillic_value => 'Т'},
          {:latin_regexp => /t/, :cyrillic_value => 'т'},
          {:latin_regexp => /U/, :cyrillic_value => 'У'},
          {:latin_regexp => /u/, :cyrillic_value => 'у'},
          {:latin_regexp => /F/, :cyrillic_value => 'Ф'},
          {:latin_regexp => /f/, :cyrillic_value => 'ф'},
          {:latin_regexp => /C/, :cyrillic_value => 'Ц'},
          {:latin_regexp => /c/, :cyrillic_value => 'ц'},
          {:latin_regexp => /Y/, :cyrillic_value => 'Ы'},
          {:latin_regexp => /y/, :cyrillic_value => 'ы'},
          {:latin_regexp => /#/, :cyrillic_value => 'ъ'},
          {:latin_regexp => /E/, :cyrillic_value => 'Е'},
          {:latin_regexp => /e/, :cyrillic_value => 'е'},
      ]
    end
  end
end