local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {
  b.formatting.deno_fmt,
  b.formatting.prettier.with { filetypes = { "html", "markdown", "css" } },
  b.formatting.clang_format,
  b.formatting.stylua,
  b.formatting.shfmt,
  b.formatting.eslint,
  b.formatting.fixjson,
  b.formatting.prettier,
  b.formatting.prettier_eslint,
  b.formatting.rubocop,

  b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },
  b.diagnostics.eslint,
  b.diagnostics.fish,
  b.diagnostics.pylint,
  b.diagnostics.rubocop,
  b.diagnostics.stylelint,

  b.code_actions.eslint,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
