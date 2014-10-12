# encoding: UTF-8

require 'rubygems'
require 'rspec/core'
require 'rr'
require 'lib/tratocyr/cyrillic_translator'

describe 'Translate latin text to cyrillic' do
  before do
    @cyr_translator = Tratocyr::CyrillicTranslator.new
  end

  it 'should raise Exception when try to translate not String data' do
    texts = [
        nil,
        {},
        123,
        123.56,
        /123/
    ]

    texts.each do |text|
      expect { @cyr_translator.to_cyrillic!(text) }.to raise_error(TypeError)
    end
  end

  it 'should return empty string when try to translate not String data' do
    texts = [
        nil,
        {},
        123,
        123.56,
        /123/
    ]

    texts.each do |text|
      result = @cyr_translator.to_cyrillic(text)
      result.should == ''
    end
  end

  it 'should translate some latin text to cyrillic' do
    texts = [
        'Yandex jeto kruto!',
        'V Gugle eshhyo kruche!!!',
        "Yozh bezhal po pereulku i zheval bol'shuyu bulku",
        'bystryj sokol v nebe plyashet',
        'posmotri na nebo, chego tam svetitsya?',
        'Pod##ezd k domu otdyha vyglyadil zagadochnym!',
        "V Yandex brauzere est' mnogo interesnogo!"
    ]
    expected_texts = [
        'Яндекс это круто!',
        'В Гугле ещё круче!!!',
        'Ёж бежал по переулку и жевал большую булку',
        'быстрый сокол в небе пляшет',
        'посмотри на небо, чего там светится?',
        'Подъезд к дому отдыха выглядил загадочным!',
        'В Яндекс браузере есть много интересного!'
    ]

    texts.each_with_index do |text, index|
      result = @cyr_translator.to_cyrillic(text)
      result.should == expected_texts[index]
    end

  end
end