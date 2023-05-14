Pwd = vim.api.nvim_command_output("pwd")

vim.api.nvim_create_user_command(
    'ListFiles',
    function ()
        vim.cmd[[ !ls ]]
    end,
    { nargs = 0 }
)
