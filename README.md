# Personal nvim development tool configuration file

## Configured environment
1. Go
2. Python
3. Vue
4. Lua

## List of configured shortcuts
Translate the Chinese in the following table into English:

|type|operation|keymap|
|---|---|---|
|vim|go to the start/end of the line|0/shift+4|
|   |undo/redo|u/control+r|
|   |undo/redo line|shift+u|
|   |find current file|/find content, enter, n: next option value, n: previous option value|
|   |jump to line|:line number/line number gg|
|   |scroll up/down half/full page|control+u/d control+b/f|
|   |indent code|select lines > <|
|   |close current split|;+wc|
|   |jump to left/down/up/right window|;+h/j/k/l|
|   |toggle between matching brackets| %|
|   |exit insert mode and enter command mode with jk|jk|
|   |jump to function definition/jump back|contron+]/control+t|
|   |jump between function bodies|shift+{/]}|
|   |select current paragraph quickly|v+as|
|   |select current word under cursor, copy, cut|v+iw yiw diw|
|   |select contents inside parentheses quickly|v+ab|
|   |cut current word under cursor quickly|normal+diw|
|   |copy current word under cursor quickly|normal+yiw|
|   |cut contents inside parentheses quickly|normal+di(|
|   |cut/enter insert mode inside double/single quotes quickly|ci"/ci'|
|   |paste previously copied content, not content deleted with dd|;+p|
|   |move to the previous matching word and jump up| #|
|   |move to the next matching word and jump down|*|
|   |replace a with b in the whole document, /g replaces without prompting, /c prompts for confirmation|:%s/a/b + enter :%s/a/b/g :%s/a/b/c|
|   |format code|;+i|
|   |open/fold|zc/zo|
|   |open/close all folds|zr/zm|
|neo-tree|open/close directory tree|;+n|
|   |open or close folder, open file|o|
|   |copy file name|y|
|   |copy file name with root-relative path; copy file absolute path|y; gy|
|   |create file/rename file|a/r|
|   |copy/cut/paste/delete|c/x/p/d|
|   |show/hide hidden files|h|
|   |open selected file with system default application|o|
|bufferline|switch tab left/right|h/l|
|lsp |jump to definition/return, jump to last position|gd/ctrl+o ctrl+i|
|   |jump to inheritance|gi|
|   |jump to related|gr|
|   |show hint|gh|
|   |select the first auto-completion|enter|
|   |jump to next/previous auto-completion|control+j/k|
|   |cancel/show auto-completion|control+ ,/.|
|   |synchronize modified name|;+rn|
|telescope|global search file name|;+ff|
|   |global search string|;+fg|
|toggleterm|start/close first float term|control+\|
|symbols-outline|show/close document structure|;cs|
|vimspector|set breakpoint|\<f9>|
|   |start debugging/jump to next breakpoint|\<f5>|
|   |step next|\<f10>|
|    |function entry|<f7>|
|    |function exit|<f8>|
|    |close current debug|<f6>|
|todo-comments|display all todo-comments in the current project using telescope|;tt / |
|trouble|list/close existing trouble in the current project|;xx|
|gitsigns|revert the modified content at the cursor to the previous state|;ghr|
|    |locate the previous/next modification area|;gj/ ;gk|
|    |preview the modified content in the current area|;gv|
|chatgpt|open/close the chatgpt window|;cg|
|lazy.nvim|open the lazy plugin installer|\l |



### Mac/CentOS/Ubuntu
1. Install the neovim software from [Releases · neovim/neovim](https://github.com/neovim/neovim/releases/).
2. Run `mkdir -p ~/.config && cd ~/.config`.
3. Clone the configuration files from https://github.com/yaoslivy/nvim.git using `git clone https://github.com/yaoslivy/nvim.git`.
4. Run `nvim` in the terminal. Please wait for the related plugins to finish installing.
5. Type "mason" in the command line mode and press Enter to install the required LSP language environment. [mason](https://github.com/williamboman/mason.nvim)
6. The ChatGPT plugin requires a global variable named OPENAI_API_KEY to be set with an API key value. [Get url](https://platform.openai.com/account/api-keys.)
7. Install separately:
    1. nerd-font: install [url](https://github.com/ryanoasis/nerd-fonts)
    2. ripgrep: [install url](https://github.com/BurntSushi/ripgrep#installation)
8. Install the pynvim Python package using `python3 -m pip install --user --upgrade pynvim`.
9. Configure vimspector:
    1. Install the language adapters by running `:VimspectorInstall debugpy delve`.
    2. Set up the `vimspector.json` configuration file by following the instructions below:

```shell
# linux
cd ~/.local/share/nvim/lazy/vimspector/configurations/linux
# mac
cd ~/.local/share/nvim/lazy/vimspector/configurations/macos

mkdir python go
# Set up the global Python debug configuration file
# The global environment variable PYROOT must be configured for the Python executor
echo "{
    \"configurations\": {
        \"debug cur python\": {
            \"adapter\": \"debugpy\",
            \"filetypes\": [ \"python\" ],
            \"configuration\": {
                \"name\": \"debug python conf\",
                \"type\": \"python\",
                \"request\": \"launch\",
                \"cwd\": \"\${workspaceRoot}\",
                \"stopOnEntry\": true,
                \"console\": \"externalTerminal\",
                \"python\": \"\${PYROOT}/bin/python\",
                \"program\": \"\${file}\"
            }
        }
    }
}" > python/conf.json

# Set up the global Go debug configuration file
echo "{
    \"configurations\": {
        \"debug cur go\": {
            \"adapter\": \"delve\",
            \"filetypes\": [ \"go\" ],
            \"variables\": {
            },
            \"configuration\": {
                \"request\": \"launch\",
                \"program\": \"\${file}\",
                \"mode\": \"debug\"
            }
        }
    }
}" > go/conf.json
```
10. How to copy text in vim during SSH remote session.
    1. You need a terminal that supports OSC 52 locally. For iTerm2 on Mac, go to General -> Selection -> check "Applications in terminal may access clipboard". 
    2. Then, execute "chmod +x ~/.config/nvim/clipboard-provider".
    3. And, add it to the environment variables.
    ```shell
    tee -a $HOME/.zshrc <<'EOF'
        # Nvim-config envs
        export NVIMPATH=$HOME/.config/nvim/
        export PATH=$NVIMPATH:$PATH 
        EOF

        source ~/.zshrc
    ```
    4. After restarting nvim, you can use the "y" command in VISUAL mode to copy the content from the SSH remote to the local system clipboard.


![demo01](https://github.com/yaoslivy/link-files/blob/main/nvim/demo01.png?raw=true)
