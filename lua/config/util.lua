--- Returns the full GitHub URL for a given 'user/repo' string.
---@param repo string
---@return string
local function gh(repo) return 'https://github.com/' .. repo end

return { gh = gh }
