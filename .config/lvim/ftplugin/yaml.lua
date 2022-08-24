local ok, yaml_companion = pcall(require, "yaml-companion")
if ok then
  local opts = yaml_companion.setup()
  require("lvim.lsp.manager").setup("yamlls", opts)
end
