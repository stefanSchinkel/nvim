  -- ansible ftdetect additions
  if vim.filetype then
    vim.filetype.add({
      pattern = {
        [".*/site.yml"] = "yaml.ansible",
        [".*/site.yaml"] = "yaml.ansible",
        [".*/adhoc/.*/.*%.yml"] = "yaml.ansible",
     }
   })
 else
   vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
     pattern = {
       "*/site.yml",
       "*/site.yaml",
       "*/adhoc/*.yaml",
     },
     callback = function()
       vim.bo.filetype = "yaml.ansible"
     end,
   })
 end
 
 vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
     pattern = "*.yml",
     callback = function()
         local ansible_cfg_path = vim.fn.findfile("ansible.cfg", ".;")
         if ansible_cfg_path ~= "" then
             vim.opt.filetype = "yaml.ansible"
         end
     end,
 })
