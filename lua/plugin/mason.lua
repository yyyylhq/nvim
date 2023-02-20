local ok, mason = pcall(require, "mason")
if not ok then
    vim.notify("Not find mason")
    return
end

mason.setup(
    {
        ui = {
            icons = {
                package_installed = "✓",
                package_pending = "➜",
                package_uninstalled = "✗",
            },
        }
    }
)
