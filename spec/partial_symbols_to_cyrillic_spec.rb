# encoding: UTF-8

require 'rubygems'
require 'rspec/core'
require 'rr'
require 'lib/tratocyr/cyrillic_translator'

def check_latin_to_cyrillic_mapping(latin_symbols_array, expected_symbols_array)
  result = []
  latin_symbols_array.each do |symbols|
    result << @cyr_translator.to_cyrillic(symbols)
  end
  result.should == expected_symbols_array
end

describe 'Translate partial symbols from latin to cyrillic' do
  before do
    @cyr_translator = Tratocyr::CyrillicTranslator.new
  end

  it 'should translate "Ya Ja ya ja" to "Я Я я я"' do
    latin_symbols = %w(Ya Ja ya ja)
    expected_symbols = %w(Я Я я я)
    check_latin_to_cyrillic_mapping(latin_symbols, expected_symbols)
  end

  it 'should translate "Jo Yo jo yo ö" to "Ё Ё ё ё ё"' do
    latin_symbols = %w(Jo Yo jo yo ö)
    expected_symbols = %w(Ё Ё ё ё ё)
    check_latin_to_cyrillic_mapping(latin_symbols, expected_symbols)
  end

  it 'should translate "Je je ä" to "Э э э"' do
    latin_symbols = %w(Je je ä)
    expected_symbols = %w(Э э э)
    check_latin_to_cyrillic_mapping(latin_symbols, expected_symbols)
  end

  it 'should translate "Ju Yu ju yu ü" to "Ю Ю ю ю ю"' do
    latin_symbols = %w(Ju Yu ju yu ü)
    expected_symbols = %w(Ю Ю ю ю ю)
    check_latin_to_cyrillic_mapping(latin_symbols, expected_symbols)
  end

  it 'should translate "A a B b V v G g D d" to "А а Б б В в Г г Д д"' do
    latin_symbols = %w(A a B b V v G g D d)
    expected_symbols = %w(А а Б б В в Г г Д д)
    check_latin_to_cyrillic_mapping(latin_symbols, expected_symbols)
  end

  it 'should translate "Zh zh H h X x Ch ch Sh sh Shh shh W w" to "Ж ж Х х Кс кс Ч ч Ш ш Щ щ Щ щ"' do
    latin_symbols = %w(Zh zh H h X x Ch ch Sh sh Shh shh W w)
    expected_symbols = %w(Ж ж Х х Кс кс Ч ч Ш ш Щ щ Щ щ)
    check_latin_to_cyrillic_mapping(latin_symbols, expected_symbols)
  end

  it 'should translate "Z z I i J j K k L l M m N n O o P p R r S s T t U u F f C c" to "З з И и Й й К к Л л М м Н н О о П п Р р С с Т т У у Ф ф Ц ц"' do
    latin_symbols = %w(Z z I i J j K k L l M m N n O o P p R r S s T t U u F f C c)
    expected_symbols = %w(З з И и Й й К к Л л М м Н н О о П п Р р С с Т т У у Ф ф Ц ц)
    check_latin_to_cyrillic_mapping(latin_symbols, expected_symbols)
  end

  it 'should translate "Y y # ## "" ''" to "Ы ы ъ ъ ь ь"' do
    latin_symbols = %w(Y y # ## " ')
    expected_symbols = %w(Ы ы ъ ъ ь ь)
    check_latin_to_cyrillic_mapping(latin_symbols, expected_symbols)
  end

end