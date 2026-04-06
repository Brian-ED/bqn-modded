⟨symbolReplacements ⋄ customPrimitives⟩←•args

# Copied from https://github.com/mlochbaum/bqn-libs/blob/4df4f8ca1356508d27b03131350e25c19114c7cd/strings.bqn#L49-L62
# Replace each instance of a string in old with the corresponding
# string in new.
# Instances are non-overlapping, and earlier ones take precedence.
ReplaceAll ← {
  ⟨old,new⟩ 𝕊 str: [old,new] 𝕊 str ; # Support nested or two-row 𝕨
  [old,new] 𝕊 str:
  "ReplaceAll: Can't replace empty" ! ∧´0<≠¨old
  l ← ≠old
  match ← 1-˜ (l+1)|⌊´ (↕⊸-l) × old (1<≠∘⊣)◶⟨⊑⊸=,≠∘⊢↑⍷⟩¨ <str
  cont ← (-⟜1⌈≤⟜1×⊢)` match ⊏ (≠¨old)∾0
  keep ← ⋈⟜(⊏⟜str) / 0=cont
  insert ← (new⊏˜⊏⟜match)⊸(≠¨⊸/⋈∾∘⊣) / (0⊸<∧»⊸≤) cont
  ⍋⊸⊏´ keep ∾¨ insert
}

ReCaseBQN ← {
  ignore←«(»»)⊸∧'''=𝕩
  ignore∨↩ 2|+`(¬ignore)×'"'=𝕩
  SwapCasing ← +⟜(-´32×1="A["⊸⍋⋈"a{"⊸⍋)
  (⌽⍉>symbolReplacements) ReplaceAll SwapCasing⌾((¬ignore)⊸/)𝕩
}

Run ⇐ {path‿name‿args𝕊s:
  x←•ReBQN {
    system⇐⟨
      "import"‿{a←𝕨⊣⟨⟩ ⋄ ⟨𝕩, 𝕩, a⟩ Run ReCaseBQN •FChars𝕩}
    ⟩∾{𝕩⋈path‿name‿args⊸•BQN'•'∾𝕩}¨⟨"import"⟩(¬∘∊˜/⊢)•listsys
    primitives⇐{¬∘∊○(⊑¨)⟜𝕩⊸/•primitives}⊸∾customPrimitives
  }
  X ReCaseBQN𝕩
}
