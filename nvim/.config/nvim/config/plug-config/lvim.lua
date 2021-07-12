local lvim_helper_bindings = require('lvim-helper.bindings');
lvim_helper_bindings.bindings = {
    ["l"] = lvim_helper_bindings.lvim_helper_callback("next"),
    ["h"] = lvim_helper_bindings.lvim_helper_callback("prev"),
    ["q"] = lvim_helper_bindings.lvim_helper_callback("close")
}
local home = os.getenv('HOME')
require('lvim-helper').setup({
    files = {
        home .. '/.config/nvim/md/file1.md',
        home .. '/.config/nvim/md/file2.md',
        home .. '/.config/nvim/md/file3.md',
    }
})
