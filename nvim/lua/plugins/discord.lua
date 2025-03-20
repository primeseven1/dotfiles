local function do_cord_setup()
    require('cord').setup({
        usercmds = true,
        timer = {
            enable = true,
            interval = 1500,
            reset_on_idle = false,
            reset_on_change = false
        },
        editor = {
            image = nil,
            client = "neovim",
            tooltip = "The Superior Text Editor"
        },
        display = {
            show_time = true,
            show_repository = false,
            show_cursor_position = false,
            swap_fields = false,
            worskspace_blacklist = {}
        },
        lsp = {
            show_problem_count = true,
            severity = 2,
            scope = 'workspace'
        },
        idle = {
            enable = true,
            show_status = true,
            timeout = 300000,
            disable_on_focus = false,
            text = 'Idle',
            tooltip = '💤'
        },
        assets = nil
    })
end

return {
    'vyfor/cord.nvim',
    build = './build',
    event = 'VeryLazy',
    opts = {},
    config = do_cord_setup
}
