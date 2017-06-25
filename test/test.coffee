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

    it 'does not modify an original array of three items', ->
        a = ['one', 'two', 'three']
        expect(joinn(a)).to.equal 'one, two and three'
        expect(a).members ['one', 'two', 'three']

    it 'does not modify an original array of one item', ->
        a = ['one']
        expect(joinn(a)).to.equal 'one'
        expect(a).members ['one']
