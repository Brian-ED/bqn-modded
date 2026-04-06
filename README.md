# BQN Modded
This is a library meant to mod BQN, currently a simple •ReBQN with a bit of pre-processing. It changes stylistic stuff. It's only compatable with the CBQN implementation.
1. The naming of function-role and value-role swapped to become "variable" (lowercase) and "Function" (uppercase).
2. 𝕨, 𝕩, 𝕎, 𝕏, 𝕗, · etc can all be changed with the symbol replacements. It's general so can also replace `·`.

You use this as a library. See in `./example` folder for a concrete example.
Here's a short explanation.  
`./example/init.bqn` is a normal, unmodified BQN.  
It imports `./mbqn`:
```bqn
m←⟨
  ⟨"⍺"‿"𝕨" ⋄ "⍵"‿"𝕩"⟩
  ⟨'⍳'‿↕⟩
⟩ •Import "../bqnm.bqn"
```
`•Import` is given 2 arguments, replacements is the first and new primitives is the second.  
Replacements is a list of pairs, where each pair contains what's wanted in the first position and what it's replacing in the second one.  
New primitives is a list of pairs, where each pair contains a symbol for a primitive, and the function that it represents.
`m.Run` is now imported, and can be called like `m.Run •FChars "main.bqn"` to run a main file. All imports it does also inherit the modifications.
