--
-- plugins-setup
--

-- install packer if not installed
local ensure_packer = function()
    local install_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
    if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
        vim.fn.system({"git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path})
        vim.cmd([[packadd packer.nvim]])
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

-- install/update/remove plugins when this file is saved
vim.cmd([[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
    augroup end
]])

-- import packer safely
local ok, packer = pcall(require, "packer")
if not ok then print("packer not found!"); return end

-- intall plugins
return packer.startup(function(use)
    use {"wbthomason/packer.nvim"}  
    use {"sainnhe/everforest"}
    use {"nvim-tree/nvim-tree.lua"}
    use {"nvim-tree/nvim-web-devicons"}
    use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}
    use {"nvim-telescope/telescope.nvim", branch = "0.1.x"}
    use {"nvim-lua/plenary.nvim"}
    use {"nvim-telescope/telescope-fzf-native.nvim", run = "make"}
    use {"folke/trouble.nvim"}
    use {"folke/lsp-colors.nvim"}
    use {"numtostr/comment.nvim"}
    use {"nvim-lualine/lualine.nvim"}
    use {"williamboman/mason.nvim"}
    use {"williamboman/mason-lspconfig.nvim"}
    use {"neovim/nvim-lspconfig"}
    use {"jay-babu/mason-null-ls.nvim"}
    use {"jose-elias-alvarez/null-ls.nvim"}
    use {"civitasv/cmake-tools.nvim"}
    use {"hrsh7th/cmp-nvim-lsp"}
    use {"hrsh7th/nvim-cmp"}
    use {"hrsh7th/cmp-vsnip"}
    use {"hrsh7th/vim-vsnip"}

    if packer_bootstrap then packer.sync() end
end)
