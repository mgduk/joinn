chai = require 'chai'
expect = chai.expect
joinn = require '../src/joinn'

tests =
    '': [[]]
    'joinn': [['j','i', 'n'], 'o', 'n']
    'John, Paul, George and Ringo': [['John', 'Paul', 'George', 'Ringo']]
    'John, Paul, George and Ringo': [['John', 'Paul', 'George', 'Ringo'], ', ', ' and ']
    'John, Paul, George & Ringo': [['John', 'Paul', 'George', 'Ringo'], ', ', ' & ']
    'John×Paul×George and Ringo': [['John', 'Paul', 'George', 'Ringo'], '×']
    'John ♫ Paul ♫ George ♪ Ringo': [['John', 'Paul', 'George', 'Ringo'], ' ♫ ', ' ♪ ']
    'foo,bar;baz': [['foo', 'bar', 'baz'], ',', ';']

describe 'joinn', ->
    for s, a of tests
        it "outputs \"#{s}\" given #{JSON.stringify a}", do (s, a) -> -> expect(joinn.apply(this, a)).to.equal s
