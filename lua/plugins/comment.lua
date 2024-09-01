return { 'numToStr/Comment.nvim', opts = {
    ---Add a space b/w comment and the line
    padding = true,
    toggler = {
        ---Line-comment keymap
        line = 'gca',
        ---Block-comment keymap
        block = 'gba',
    },
  }
}
