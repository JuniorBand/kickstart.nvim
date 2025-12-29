return {
  'neovim/nvim-lspconfig',
  opts = {
    servers = {
      jdtls = {},
    },
    setup = {
      jdtls = function()
        -- Retornar false aqui garante que o lspconfig não tente iniciar 
        -- se o nvim-java ou outra coisa já estiver gerenciando, 
        -- mas como removemos o nvim-java, isso deixa o LazyVim 
        -- usar o padrão dele.
        return false 
      end,
    },
  },
}