require 'pry'

Given("i am in the google home page") do
  search_page.load
  expect(search_page.search_input).to be_visible
end

When("i search for {string}") do |string|
  search_page.search_input.set string
  binding.pry
  search_page.search_button.click()
end

Then("i see {int} search results") do |int|
  expect(search_page.search_results.size).to eq(exp_count.to_i)
end

Then("i see {string} in the search results") do |string|
  expect(search_page.search_results.find_by_text(exp_text)).to be_visible
end
