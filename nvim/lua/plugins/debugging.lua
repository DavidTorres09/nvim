return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui"
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

    dap.configurations.cs = {
      {
        type = "coreclr",
        name = "launch - netcoredbg",
        request = "launch",
        program = function()
          return vim.fn.input('Path to dll', vim.fn.getcwd() .. '/bin/Debug/', 'file')
        end,
      },
    }
  
    dap.configurations.fsharp = {
    {
        type = "coreclr",
        name = "launch - netcoredbg",
        request = "launch",
        program = function()
          return vim.fn.input('Path to dll', vim.fn.getcwd() .. '/bin/Debug/', 'file')
        end,
      },
    }



    vim.keymap.set('n', '<F1>', dap.continue, {})
    vim.keymap.set('n', '<F2>', dap.step_over, {} )
    vim.keymap.set('n', '<F3>',dap.step_into, {})
    vim.keymap.set('n', '<F4>', dap.step_out, {})
    vim.keymap.set('n', '<Leader>bp', dap.toggle_breakpoint, {})
    vim.keymap.set('n', '<Leader>Bp',dap.set_breakpoint, {})
    vim.keymap.set('n', '<Leader>dr', dap.repl.open, {})
    vim.keymap.set('n', '<Leader>dl', dap.run_last, {})
  end, 
}
