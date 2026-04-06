
m←⟨
  ⟨"𝕨"‿"⍺" ⋄ "𝕩"‿"⍵"⟩ # Replaced symbols
  ⟨'⍳'‿↕⟩             # New primitives
⟩ •Import "../bqnm.bqn"

# Start with new primitives and switched casing
m.Run •FChars "main.bqn"
