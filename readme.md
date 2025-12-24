## My VsCode+NeoVim Configurations

### Setup
1. download & install vscode and [NeoVim](www.baidu.com)
2. install "VSCode Neovim" extension in the vscode
3. config `settings.json`, add: 

- "vscode-neovim.neovimExecutablePaths.win32": "path_to_your_neovim/bin",

- or  "vscode-neovim.neovimExecutablePaths.linux": "path_to_nvim" in the Linux

  > if you are using WSL, don't forget add: "vscode-neovim.useWSL": true

4. cd to the neovim's configuration folder, "C:\\your_name\\AppData\\Local\\" in the Window system or "~/.config/" in the Linux system. 
> sorry i'm not a mac user, but i think it's similar to Linux :)

5. clone this repository

```shell
git clone https://github.com/leeotus/nvim.git
```

After all the above operations done, your neovim configuration folder should be like (you may need to adjust your folder):

```markdown
Local/nvim/  # Neovim's configuration folder
├── init.lua
├── lua/
│   └── plugin-configs/
│       ├── keyboard-mappings.lua
│       ├── options.lua
│       └── plugins.lua
└── readme.md  # you are reading this file
```

### Key Mapping





> NOTE: Reference for some NeoVim configurations are from [davemackintosh/nvim](https://github.com/davemackintosh/nvim)