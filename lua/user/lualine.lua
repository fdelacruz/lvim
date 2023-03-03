if lvim.colorscheme == "darkplus" then
	local normal_hl = vim.api.nvim_get_hl_by_name("Normal", true)
	vim.api.nvim_create_autocmd({ "Colorscheme" }, {
		callback = function()
			vim.api.nvim_set_hl(0, "SLGitIconDark", { fg = "#E8AB53", bg = "#333333" })
			vim.api.nvim_set_hl(0, "SLBranchNameDark", { fg = normal_hl.foreground, bg = "#333333" })
		end,
	})

	local branch_icon = "%#SLGitIconDark#" .. lvim.icons.git.Branch .. "%*" .. "%#SLBranchNameDark#"

	local branch = {
		"b:gitsigns_head",
		icon = branch_icon,
		color = { gui = "bold" },
	}

	lvim.builtin.lualine.sections.lualine_b = { branch }
end

-- lvim.builtin.lualine.style = "default"

local lazy_status = {
  function()
    return require("lazy.status").updates()
  end,
  cond = require("lazy.status").has_updates,
  color = { bg = "#282c34", fg = "#ff9e64" },
}

local lazy_stats = {
  function()
    local stats = require("lazy").stats()
    local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
    return "" .. ms .. "ms"
  end,
  color = { fg = "#f6c177" },
}

local components = require "lvim.core.lualine.components"

lvim.builtin.lualine.sections.lualine_x = {
  lazy_status,
  lazy_stats,
  components.diagnostics,
  components.lsp,
  components.spaces,
  components.filetype,
}
