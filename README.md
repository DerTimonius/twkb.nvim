# `twkb.nvim`

A wrapper to open [`twkb`](https://github.com/DerTimonius/twkb) in Neovim as a floating window.

## Installation

Using lazy:

```lua
{ 
  "DerTimonius/twkb.nvim", 
  config = function()
    require("twkb").setup()
  end
}
```

## Usage

The plugin exposes a `Twkb` command to open twkb and interact with it.
