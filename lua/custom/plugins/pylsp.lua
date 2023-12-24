return {
  lsp = {
    config = {
      pylsp = {
        root_dir = function(fname)
          local util = require "lspconfig.util"
          return util.root_pattern("WORKSPACE.bazel")(fname)
        end,
      },
    },
  },
}
