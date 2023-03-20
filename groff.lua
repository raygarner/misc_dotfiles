-- ? LPeg lexer.

local l = require('lexer')
local token, word_match = l.token, l.word_match
local P, R, S = lpeg.P, lpeg.R, lpeg.S

local M = {_NAME = 'groff'}

-- Whitespace.
local ws = token(l.WHITESPACE, l.space^1)

local keyword = token(l.KEYWORD, word_match({
  '.TL', '.AU', '.AB', '.AE', '.NH', '.PP', '.SH', '.I', '.B', '.ft', '.R',
  '.DS', '.EQ', '.FS', '.IP', '.KF', '.KS', '.LP', '.TS', '.nr', '.FE', '.HU',
  '.CW', '.UC', '.sp', '.ta', '.bp', '.de', '.TS', '.TE', '.EN', '.IS', '.PS',
  '.IR', '.TH', '.PE'
}, '.'))

M._rules = {
  {'whitespace', ws},
  {'keyword', keyword},
}

M._tokenstyles = {

}

return M