# helper building the properties
prop = (v) -> value: v, writable: false, configurable: false, enumerable: true

# make the properties non-writable non-configurable enumerable
module.exports = Object.create null,

  # 0 to 100 are "tiny int" values, they are what they are
  MAX_POS: prop 0x64

  # 101 to 200 are used for -1 to -100 "tiny int" values
  MAX_NEG: prop 0xC8

  # these represent positive ints using a certain number of bytes
  P1     : prop 0xC9
  P2     : prop 0xCA
  P3     : prop 0xCB
  P4     : prop 0xCC
  P5     : prop 0xCD
  P6     : prop 0xCE
  P7     : prop 0xCF
  P8     : prop 0xD0

  # these represent negative ints using a certain number of bytes
  N1     : prop 0xD1
  N2     : prop 0xD2
  N3     : prop 0xD3
  N4     : prop 0xD4
  N5     : prop 0xD5
  N6     : prop 0xD6
  N7     : prop 0xD7
  N8     : prop 0xD8

  # the usual "float is 4 bytes" and "double is 8 bytes"
  FLOAT4 : prop 0xD9
  FLOAT8 : prop 0xDA

  # UNASSIGNED
  # 0xDB - 0xED

  # these compact multiple DEFAULT bytes
  # TODO: use these in enbyte to compact defaults in series.
  DEFAULT5: prop 0xEE
  DEFAULTN: prop 0xEF

  DEFAULT : prop 0xF0  # avoid encoding a value when it's the default value
  NULL    : prop 0xF1
  TRUE    : prop 0xF2
  FALSE   : prop 0xF3

  EMPTY_STRING: prop 0xF4
  EMPTY_ARRAY : prop 0xF5
  EMPTY_OBJECT: prop 0xF6

  BYTES: prop 0xF7  # raw bytes

  NEW_STRING: prop 0xF8 # new string to learn in unstring
  GET_STRING: prop 0xF9 # get string from unstring

  SPECIAL: prop 0xFA # an object encoded with an "object spec"
  OBJECT : prop 0xFB # a generic object with key/value pairs
  ARRAY  : prop 0xFC
  STRING : prop 0xFD

  SUB_TERMINATOR: prop 0xFE # ends inner objects/arrays
  TERMINATOR    : prop 0xFF # ends top-level (object/array/string)
