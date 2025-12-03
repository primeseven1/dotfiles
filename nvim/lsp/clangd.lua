return {
    cmd = { "clangd", "--header-insertion=never", "--enable-config" },
    filetypes = { 'c', 'cpp', 'objc', 'objcpp', 'cuda' },
    root_markers = {
        ".clangd", ".clang-tidy", ".clang-format", "compile_commands.json", "compile_flags.txt"
    }
}
