local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node

return {
  s("latexmk", {
    t({
      "SRC = main.tex",
      "PDF = main.pdf",
      "LOG = main.log",
      "AUX = main.aux",
      "BBL = main.bbl",
      "OUT_DIR = out",
      "",
      "all: $(PDF)",
      "",
      "$(PDF): $(SRC)",
      "\tlatexmk -pdf -verbose -file-line-error -synctex=1 -interaction=nonstopmode -output-directory=$(OUT_DIR) $(SRC)",
      "",
      "clean:",
      "\tlatexmk -c -output-directory=$(OUT_DIR)",
      "\trm -f $(OUT_DIR)/$(BBL)",
      "",
      "cleanall:",
      "\trm -rf $(OUT_DIR)",
      "",
      "watch:",
      "\tlatexmk -pdf -pvc -output-directory=$(OUT_DIR) $(SRC)",
      "",
      "open: $(PDF)",
      "\txdg-open $(OUT_DIR)/$(PDF) &",
      "",
      "zathura: $(PDF)",
      "\tzathura $(OUT_DIR)/$(PDF) &",
      "",
      ".PHONY: all clean cleanall watch open zathura",
    }),
  }),
}
