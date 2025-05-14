require("config.lazy")
require("core.remap")
require("core.set")
require("core.after")
require('leap').add_default_mappings()
-- Only required if file exists
pcall(require("core.local"))
