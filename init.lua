local has_vimp, vimp = pcall(require, "vimp")
if has_vimp then
    _G.vimp = vimp
end

require("plugins")
require("settings")
require("keybindings")
