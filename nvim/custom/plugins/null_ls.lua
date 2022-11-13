local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {
  -- python setup
  b.diagnostics.mypy,
  b.formatting.autopep8,
  b.formatting.black,
  b.formatting.isort
}

null_ls.setup {
  debug = true,
  sources = sources
}
