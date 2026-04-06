⟨customPrimitives⟩←•args

ReCaseBQN ← {
  ignore←«(»»)⊸∧'''=𝕩
  ignore∨↩ 2|+`(¬ignore)×'"'=𝕩
  SwapCasing ← +⟜(-´32×1="A["⊸⍋⋈"a{"⊸⍋)
  ("𝕩𝕨𝕗𝕘𝕤"⋈¨"𝕏𝕎𝔽𝔾𝕊") {y0‿x0←𝕨⋄ [by⋄bx]←y0‿x0=⌜𝕩 ⋄ y0¨⌾(bx⊸/)x0¨⌾(by⊸/)𝕩}´˜ SwapCasing⌾((¬ignore)⊸/)𝕩
}

run ⇐ {𝕏ReCaseBQN} •ReBQN {
  system⇐⟨
    "import"‿{a←𝕨⊣⟨⟩ ⋄ ⟨𝕩, 𝕩, a⟩ •BQN ReCaseBQN •FChars𝕩}
    "show"‿•Show
    "out"‿•Out
    "currenterror"‿•currentError
  ⟩
  primitives⇐•primitives∾customPrimitives
}
