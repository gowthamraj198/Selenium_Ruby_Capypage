require 'capypage'

class SearchPage < Capypage::Page
  set_url 'http://www.google.co.in/'

  element :search_input, 'input#lst-ib'
  element :search_button, 'input.lsb'
  elements :search_results, 'div.mw #rso', 'li.g h3.r'
end