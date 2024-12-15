<h1 align="center">
    fastvim-nvim❄️ 
</h1>

<div align="center">
    A carefully crafted nord colorscheme written in lua for fastvim distro using the <a href="https://www.nordtheme.com/docs/colors-and-palettes">Nord Palette</a>.
<br></br>
</div>

> [!NOTE]
> This theme is an fork of norden theme, all rights reserved

![dashboard](https://github.com/user-attachments/assets/8bd142a5-6bd5-4c72-9564-7862aa677563)
![golang](https://github.com/user-attachments/assets/9b9cada4-5258-426c-93b9-1d9a4db3762e)
![image](https://github.com/user-attachments/assets/c8666ea2-48d4-43a2-b7d8-1ed3dbb509f7)
![image](https://github.com/user-attachments/assets/884f4339-ed3a-4ed1-a355-0afec8622d4d)

<div align="center">

**fastvim-nvim** | because like any good viking that loves gold, this colorscheme uses aurora yellow to highlight some of the more important tokens.
</div>

## Plugin Support

- [NERDtree](https://github.com/preservim/nerdtree)
- [bufferline](https://github.com/akinsho/bufferline.nvim)
- [dad-bod-ui](https://github.com/kristijanhusak/vim-dadbod-ui)
- [dap-ui](https://github.com/rcarriga/nvim-dap-ui)
- [flash](https://github.com/kristijanhusak/vim-dadbod-ui)
- [git-signs](https://github.com/lewis6991/gitsigns.nvim)
- [illuminate](https://github.com/RRethy/vim-illuminate)
- [indent-blank-line](https://github.com/lukas-reineke/indent-blankline.nvim)
- [lazy,nvim](https://github.com/folke/lazy.nvim)
- [leap.nvim](https://github.com/ggandor/leap.nvim)
- [lualine](https://github.comn/vim-lualine/lualine.nvim)
- [mason](https://github.com/williamboman/mason.nvim)
- [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [neotest](https://github.com/nvim-neotest/neotest)
- [noice](https://github.com/folke/noice.nvim)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [nvim-lsp](https://github.com/neovim/nvim-lspconfig)
- [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua)
- [telescope](https://github.com/nvim-telescope/telescope.nvim)
- [treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [trouble](https://github.com/folke/trouble.nvim)
- [outline](https://github.com/hedyhli/outline.nvim)
- [barbecue](https://github.com/utilyre/barbecue.nvim)

## Roadmap
 - [ ] - vimdoc documentation
 - [x] - improve README 
 - [x] - create & extend options
 - [x] - screenshots of different modes & languages

## Languages with special support
<details>
  <summary>click to expand the list of languages</summary>

  *missing languages will be supported upon popular request*

- [ ] - C
- [ ] - C++
- [ ] - JAVA
- [ ] - Python
- [ ] - Rust
- [x] - Bash
- [x] - CSS
- [x] - Gitconfig
- [x] - Go & (gomod, gosum)
- [x] - HTML
- [x] - HTTP
- [x] - JSON
- [x] - JSX
- [x] - Javascript
- [x] - Lua
- [x] - Markdown
- [x] - SQL
- [x] - TSX
- [x] - Toml
- [x] - Typescript
- [x] - Xml
- [x] - Yaml
- [x] - ZSH
- [x] - RobotFramework

</details>

## 🎐 Requirements

+ Neovim >= 0.8.0

## 📦 Install

use your favourite package manager:

- [Lazy](https://github.com/folke/lazy.nvim)
```lua
{ "BrunoCiccarino/fastvim-nvim", branch = "master", priority = 1000 }
```

- [Vim-plug](https://github.com/junegunn/vim-plug)
```vim
Plug 'BrunoCiccarino/fastvim-nvim'
```

- [Packer](https://github.com/wbthomason/packer.nvim)
```lua
use {'BrunoCiccarino/fastvim-nvim'}
```

## ⛵ Use

Make sure to place this at the end of your configuration to avoid overwriting.

```lua
-- Lua
vim.cmd.colorscheme('fastvim-nvim')
```
```vim
" Vim-Script
colorscheme fastvim-nvim
```

To enable `fastvim-nvim` for `Lualine`:

#### Lualine

```lua
require('lualine').setup {
  options = {
    theme = 'fastvim-nvim'
    (...)
  },
}
```

#### Bufferline

- This has been integrated directly into the colorscheme, override the colors you don't like in your plugin config.

## 🔧 Configuration

#### The available options are:

```lua
-- Default options
{
    brighter_comments = false, -- changes the hue of comments to be brighter and easier to read.
    brighter_conditionals = false, -- changes the color of booleans, enums and readonly to aurora yellow from light blue.
    italic_comments = false, -- italicizes comments
    transparent = false, -- turns the background transparent (this is a WIP and there might be inconsistencies)
}
```

#### You can apply these options in one of two ways

```lua
-- Lazy nvim
opts = {
    brighter_comments = Boolean,
    brighter_conditionals = Boolean
    italic_comments = Boolean
    transparent = Boolean,
},
(...)
```

OR

```lua
config = function()
    require('fastvim-nvim').setup({
        brighter_comments = Boolean,
        brighter_conditionals = Boolean
        italic_comments = Boolean
        transparent = Boolean,
    })
end
```

## 💧 Acknowledgements

This is my first try at making a neovim plugin. I want to thank [shaunsingh](https://github.com/shaunsingh) which made me understand how to setup my own plugin project structure and [gbprod](https://github.com/gbprod) for the blending functions that produce a soft background.
 
## 🌊 Other Nord Themes

- [shaunsingh/nord.nvim](https://github.com/shaunsingh/nord.nvim)
- [gbprod/nord.nvim](https://github.com/gbprod/nord.nvim)
- [arcticicestudio/nord-vim](https://github.com/arcticicestudio/nord-vim)
- [edeneast/nightfox.nvim](https://github.com/EdenEast/nightfox.nvim)

----------------------------------------------------------------------------------------------------------------------