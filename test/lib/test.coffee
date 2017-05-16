assert = require 'assert'

bytes = require '../../lib/index.coffee'

describe 'test bytes', ->

  it 'should be enumerable', -> assert.equal Object.keys(bytes).length, 38


  it 'should be non-writable', ->

    for key, value in bytes

      bytes[key] = null
      assert.equal bytes[key], value


  it 'should be non-configurable', ->

    for key, value in bytes

      Object.defineProperty bytes, key, value: 1
      assert.equal bytes[key], value
