--
-- plugins/trouble
--

local ok, trouble = pcall(require, "trouble")
if not ok then print("trouble plugin not found!"); return end

trouble.setup()
