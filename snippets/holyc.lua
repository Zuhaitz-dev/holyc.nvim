-- snippets/holyc.lua
-- Requires LuaSnip (https://github.com/L3MON4D3/LuaSnip)

return {
  -- Snippets for HolyC
  -- Get snippet components
  s(
    { trig = "main", name = "Main function", dscr = "Standard main function for a HolyC program" },
    -- Use t() for text, i() for insert nodes
    -- i(1) is the first stop, i(0) is the final stop
    {
      t({ "I32 main() {", "\t" }),
      i(1, "/* Your code here */"),
      t({ "", "", "\treturn 0;", "}" }),
    }
  ),

  s({ trig = "if", name = "If statement" }, {
    t("if ("), i(1, "condition"), t({ ") {", "\t" }), i(0), t({ "", "}" }),
  }),

  s({ trig = "for", name = "For loop" }, {
    t("for (I64 i = 0; i < "), i(1, "limit"), t({ "; i++) {", "\t" }), i(0), t({ "", "}" }),
  }),

  s({ trig = "while", name = "While loop" }, {
    t("while ("), i(1, "condition"), t({ ") {", "\t" }), i(0), t({ "", "}" }),
  }),

  s({ trig = "func", name = "New function" }, {
    t("U0 "), i(1, "MyFunction"), t({ "() {", "\t" }), i(0), t({ "", "}" }),
  }),

  s({ trig = "class", name = "New class" }, {
    t("class "), i(1, "MyClass"), t({ " {", "\t" }), i(0), t({ "", "};" }),
  }),

  s({ trig = "#include", name = "Include header" }, {
    t('#include "'), i(1, "filename.HC"), t('"'),
  }),

  s({ trig = "switch", name = "Switch statement" }, {
    t("switch ("), i(1, "variable"), t({ ") {", "\tcase " }), i(2, "value"), t({ ":", "\t\tbreak;", "\tdefault:", "\t\tbreak;", "}" }),
  }),

  s({ trig = "printf", name = "Formatted print" }, {
    t('"'), i(1, "Message: %d\\n"), t('", '), i(2, "value"), t(";")
  })
}
