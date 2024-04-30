local M = {}

function M.get()
  return {
    DapBreakpoint = { fg = C.bittersweet },
    DapBreakpointCondition = { fg = C.citron },
    DapBreakpointRejected = { fg = C.eggplant },
    DapLogPoint = { fg = C.platinum },
    DapStopped = { fg = C.persian },
  }
end

return M
