
m←⟨
  ⟨"𝕨"‿"⍺" ⋄ "𝕩"‿"⍵"⟩ # Replaced symbols
  ⟨'⍳'‿↕⟩             # New primitives
⟩ •Import "../bqnm.bqn"

# Start with new primitives and switched casing
⟨•path, "main.bqn", •args⟩ m.Run •FChars "main.bqn"
