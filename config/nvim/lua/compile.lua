local function compile(cmd, filetype)
  if not cmd then
    cmd = vim.fn.input("Enter compile command: ")
  end

  if not filetype then
    filetype = vim.bo.filetype
  end

  local default_cmd = {
    ["c"] = "gcc -o %s %s",
    ["cpp"] = "g++ -o %s %s",
    ["python"] = "python %s",
  }

  if default_cmd[filetype] then
    cmd = default_cmd[filetype]
  end

  vim.cmd([[silent !sh -c "]]..cmd..[["]])
end

vim.keymap.set("n", "<C-a>", compile, {noremap = true})

