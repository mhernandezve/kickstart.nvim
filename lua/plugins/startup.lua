return {
  "startup-nvim/startup.nvim",
  config = function()
    require("startup").setup({theme = "startify"
      -- Add your custom startup configuration here
    })
  end
}
