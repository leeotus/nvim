## My VsCode+NeoVim Configurations

### Setup
download & install [Visual Studio Code](https://code.visualstudio.com/) and [NeoVim](https://github.com/neovim/neovim/releases)

1. install "VSCode Neovim" extension in the vscode
2. config `settings.json`, add:

- "vscode-neovim.neovimExecutablePaths.win32": "path_to_your_neovim/bin/nvim.exe",

- or  "vscode-neovim.neovimExecutablePaths.linux": "path_to_nvim" in the Linux

  > if you are using WSL, don't forget to add: "vscode-neovim.useWSL": true

4. cd to the neovim's configuration folder, "C:\\your_name\\AppData\\Local\\" in the Window system or "~/.config/" in the Linux system.
> sorry i'm not a mac user, but i think it's similar to Linux :)

5. clone this repository

```shell
git clone https://github.com/leeotus/nvim.git
```

After all the above operations done, your neovim configuration folder should be like (you may need to adjust your folder):

```markdown
Local/nvim/  # or ~/.config/nvim
├── init.lua
├── lua/
│   └── plugin-configs/
│       ├── keyboard-mappings.lua
│       ├── options.lua
│       └── plugins.lua
└── readme.md  # you are reading this file
...other files
```

### Key Mapping

> see keyboard-mappings.lua
>
> NOTE: some key mappings may depend on specific extensions in the vscode

First of all, the "<leader>" key is defined in options.lua.

```lua
-- options.lua
vim.g.mapleader = "\\"
```

just change it as you like.

I usually use "\<leader\>"-series shortcuts to quickly search (or jump to) something (or somewhere) in the current editor, and "\<space\>" to save/quit or move tabs... instead. I have been used to these operations, here lists my key mappings:

| key                   | binding                                        | operation                                         |
| --------------------- | ---------------------------------------------- | ------------------------------------------------- |
| J                     | 5j                                             | move downward faster                              |
| K                     | 5k                                             | move upward faster                                |
| Ctrl + s              | :w\<Enter\>                                    | save file                                         |
| \<space\>q            | vscode.workbench.action.closeActiveEditor      | close current file                                |
| \<space\>w            | vscode.workbench.action.files.save             | save current file                                 |
| ?                     | vscode.workbench.action.findInFiles            | search with selected word                         |
| \<space\>p            | vscode.workbench.action.showCommands           | open commands (replaces ctrl + shift + p)         |
| \<space\>o            | vscode.workbench.action.gotoSymbol             | show symbol panel (replaces ctrl + shift + o)     |
| \<space\>]            | vscode.workbench.action.moveEditorRightInGroup | extension Leaper(@Onlylys), move tab to the right |
| \<space\>[            | vscode.workbench.action.moveEditorLeftInGroup  | move tab to the left                              |
| \<space\>=            | vscode.workbench.action.nextEditor             | goto the next tab (replaces :gt)                  |
| \<space\>-            | vscode.workben.action.previousEditor           | goto the previous tab (replaces :gT)              |
| \<leader\>\<leader\>w | HopWord                                        | neovim'extension, quickly jump to the word        |

the binding begins with 'vscode.' means that the corresponding keybinding is derived from one of the vscode's embedded functions. You can open your vscode's "Keyboard Shortcuts" to see them.

### Reference

>  [davemackintosh/nvim](https://github.com/davemackintosh/nvim)
>
> [rockerBOO/awesome-neovim](https://github.com/rockerBOO/awesome-neovim?tab=readme-ov-file#tabline)