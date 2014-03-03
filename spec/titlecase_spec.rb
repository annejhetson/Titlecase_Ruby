require('rspec')
require('titlecase')

describe('titlecase') do

  it('will capitalize the first letter of the word') do
    title_case('coconut').should(eq('Coconut'))
  end
  it('will return a, an, the, about and etc... without capitalization') do
    title_case('and a').should(eq('And a'))
  end
  it('will capitalize each word in a sentence except the special words') do
    title_case('This big dog').should(eq('This Big Dog'))
  end
  it('will capitalize the first letter of a sentence no matter what') do
    title_case('The world is a greater place.').should(eq('The World is a Greater Place.'))
  end
end 
