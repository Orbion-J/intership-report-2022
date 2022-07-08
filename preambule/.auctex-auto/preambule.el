(TeX-add-style-hook
 "preambule"
 (lambda ()
   (TeX-run-style-hooks
    "preambule/config"
    "preambule/packages"
    "preambule/beamer"
    "preambule/macros"
    "preambule/maths"
    "ifthen")
   (TeX-add-symbols
    '("sans" 2)
    '("ifbeamer" 2)
    '("fr" 2)))
 :latex)

