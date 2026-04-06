
m←⟨
  # Replaced symbols
  ⟨ "𝕨"‿"⍺" ⋄ "𝕩"‿"⍵" ⋄ "𝕊"‿"∇" ⟩

  # New primitives
  ⟨'⍳'‿↕⟩
⟩ •Import "../bqnm.bqn"

# Start with new primitives and switched casing
⟨•path, "main.bqn", •args⟩ m.Run •FChars "main.bqn"
