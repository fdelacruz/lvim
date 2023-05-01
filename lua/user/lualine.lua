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

vim.api.nvim_set_hl(0, "SLGitIcon", { fg = "#E8AB53", bg = "#303030" })
vim.api.nvim_set_hl(0, "SLBranchName", { fg = "#D4D4D4", bg = "#303030", bold = false })

local branch_icon = "%#SLGitIcon#" .. lvim.icons.git.Branch .. "%*" .. "%#SLBranchName#"

local branch = {
  "b:gitsigns_head",
  icon = branch_icon,
  color = { gui = "bold" },
}

lvim.builtin.lualine.sections.lualine_b = { branch }

local mode_map = {
  ['n']        = 'NORMAL',
  ['i']        = 'INSERT',
  ['R']        = 'REPLACE ',
  ['c']        = 'COMMAND',
  ['v']        = 'VISUAL',
  ['V']        = 'VIS-LN',
  ['']       = 'VIS-BLK ',
  ['s']        = 'SELECT',
  ['S']        = 'SEL-LN',
  ['']       = 'SEL-BLK',
  ['t']        = 'TERMINAL',
  ['Rv']       = 'VIR-REP',
  ['rm']       = '- More -',
  ['r']        = "- Hit-Enter -",
  ['r?']       = "- Confirm -",
  ['cv']       = "Vim Ex Mode",
  ['ce']       = "Normal Ex Mode",
  ['!']        = "Shell Running",
  ['ic']       = 'Insert mode completion |compl-generic|',
  ['no']       = 'Operator-pending',
  ['nov']      = 'Operator-pending',
  ['noV']      = 'Operator-pending',
  ['noCTRL-V'] = 'Operator-pending',
  ['niI']      = 'INSERT (Normal)',
  ['niR']      = 'REPLACE (Normal)',
  ['niV']      = 'Virtual-Replace (Normal)',
  ['ix']       = 'INSERT',
  ['Rc']       = 'REPLACE',
  ['Rx']       = 'REPLACE',
}

local mode = {
  function()
    return mode_map[vim.api.nvim_get_mode().mode] or "__"
  end,
}

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

local hide_in_width = function()
  return vim.o.columns > 80
end

local python_env = {
    function()
      local utils = require "lvim.core.lualine.utils"
      if vim.bo.filetype == "python" then
        local venv = os.getenv "CONDA_DEFAULT_ENV" or os.getenv "VIRTUAL_ENV"
        if venv then
          local icons = require "nvim-web-devicons"
          local py_icon, _ = icons.get_icon ".py"
          return string.format(" " .. py_icon .. " %s", utils.env_cleanup(venv))
        end
      end
      return ""
    end,
  color = { fg = "#ffbc03" },
  cond = hide_in_width,
}

local file_path = { 'filename', file_status = false, path = 1 }

lvim.builtin.lualine.sections.lualine_a = { mode }
lvim.builtin.lualine.sections.lualine_c = { file_path, components.diff, python_env }
lvim.builtin.lualine.sections.lualine_x = {
  components.diagnostics,
  components.lsp,
  components.spaces,
  components.filetype,
}
