local ok, leap= pcall(require, "leap")
if not ok then
    vim.notify("Not find leap")
    return
end

leap.add_default_mappings()
