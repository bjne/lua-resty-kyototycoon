-- Copyright (C) 2013  Jiale Zhi (calio), Cloudflare Inc.

local ok, new_tab = pcall(require, "table.new")
if not ok then
    new_tab = function (narr, nrec) return {} end
end

local _M = new_tab(0, 10)

_M.VERSION = '0.01'


local mt = { __index = _M }

local commands = {
    "void",         "set",          "get",
}

local function _do_command(self, ...)
end

function _M.new(self)
    return setmetatable({}, mt)
end

function _M.set_timeout(self, timeout)
end

function _M.connect(self, ...)
end

for k, v in pairs(commands) do
    _M[k] = function(self, ...) return _do_command(self, ...) end
end

return _M
