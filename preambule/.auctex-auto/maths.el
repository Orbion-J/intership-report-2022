(TeX-add-style-hook
 "maths"
 (lambda ()
   (TeX-run-style-hooks
    "amssymb"
    "amsmath"
    "mathrsfs"
    "amsfonts"
    "amsthm"
    "bussproofs")
   (TeX-add-symbols
    '("xto" 1)
    '("func" 4)
    '("tend" 2)
    '("eq" 1)
    '("nlab" 1)
    '("cattxt" 2)
    "N"
    "Z"
    "D"
    "Q"
    "R"
    "C"
    "K"
    "F"
    "E"
    "zero"
    "one"
    "two"
    "M"
    "MnR"
    "MnC"
    "MnK"
    "B"
    "Cl"
    "Fn"
    "Sfrak"
    "Set"
    "Yo"
    "op"
    "bij"
    "too"
    "from"
    "mapsfrom"
    "drond"
    "cqfd")
   (LaTeX-add-environments
    "disjonction")
   (LaTeX-add-amsthm-newtheorems
    "thm"
    "lem"
    "cor"
    "prop"
    "obj"
    "ex"
    "dfn"
    "nota"
    "rem"))
 :latex)

