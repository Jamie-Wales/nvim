return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
	},
	config = function()
		local dap = require("dap")
		local dapui = require("dapui")
		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end
		dapui.setup()
		dap.adapters.lldb = {
			type = "executable",
			command = "/opt/homebrew/opt/llvm/bin/lldb-vscode",
			name = "lldb",
		}
		dap.configurations.cpp = {
			{
				name = "Launch",
				type = "lldb",
				request = "launch",
				program = function()
					return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
				end,
				cwd = "${workspaceFolder}",
				stopOnEntry = false,
				args = {},
			},
		}
		vim.keymap.set("n", "<leader>ac", function()
			dap.continue()
		end)
		vim.keymap.set("n", "<leader>ao", function()
			dap.step_over()
		end)
		vim.keymap.set("n", "<leader>ai", function()
			dap.step_into()
		end)
		vim.keymap.set("n", "<leader>ax", function()
			dap.step_out()
		end)
		vim.keymap.set("n", "<leader>ab", function()
			dap.toggle_breakpoint()
		end)
	end,
}
