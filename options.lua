return {
  opt = {
    cursorline = true, -- highlight current line
    conceallevel = 2, -- enable conceal
    linebreak = true, -- linebreak soft wrap at words
    list = true, -- show whitespace characters
    listchars = { tab = "│→", extends = "⟩", precedes = "⟨", trail = "·", nbsp = "␣" },
    showbreak = "↪ ",
    -- spellfile = vim.fn.expand "~/.config/astronvim/lua/user/spell/en.utf-8.add",
    swapfile = false,
    -- thesaurus = vim.fn.expand "~/.config/astronvim/lua/user/spell/mthesaur.txt",
    wrap = false, -- don't wrap lines
    termguicolors = true, -- True color support
    splitright = true, -- Put new windows right of current
    splitbelow = true, -- Put new windows below current
    timeoutlen = 200,
    -- shell = "C:\\Program Files\\WindowsApps\\Microsoft.PowerShell_7.3.5.0_arm64__8wekyb3d8bbwe\\pwsh.exe",
    shell = vim.fn.executable "pwsh" and "pwsh" or "powershell",
    shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;",
    shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait",
    shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode",
    shellquote = "",
    shellxquote = "",
  },
  g = {
    lsp_handlers_enabled = false,
    matchup_matchparen_deferred = 1,
    python3_host_prog = "C:/Users/asharaf/.pyenv/pyenv-win/versions/3.11.3/env-pynvim/Scripts/python.exe",
  },
}
