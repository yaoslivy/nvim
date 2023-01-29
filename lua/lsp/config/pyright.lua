local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

return {
    settings = {
        python = {
            analysis = {
                -- extraPaths = {"/Volumes/Files/ysl/Python/git/paper"}
                typeCheckingMode = "off" 
            }
        }
    }
}
