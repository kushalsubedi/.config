local fterm = require("FTerm")

local zsh = fterm:new({
        ft = 'zsh', -- You can also override the default filetype, if you want
            cmd = "zsh",
                dimensions = {
                            height = 0.9,
                                    width = 0.9
                                        }
                                    })

                                    -- Use this to toggle gitui in a floating terminal
 vim.keymap.set('n', '<A-g>', function()
                       zsh:toggle()
                  end)
