import game.world5.level3 -- hide
namespace mynat -- hide

/-
# World 5 : Inequality world 

## Level 4 : `le_trans`
-/

/- Lemma
≤ is transitive. In other words, if $a\leq b$ and $b\leq c$ then $a\leq c$. 
-/
theorem le_trans (a b c : mynat) (hab : a ≤ b) (hbc : b ≤ c) : a ≤ c :=
begin [less_leaky]
  cases hab with d hd,
  cases hbc with e he,
  use (d + e),
  rw ←add_assoc,
  rw ←hd,
  assumption,
end

/-
Congratulations -- you just proved that the natural numbers are a preorder.
-/
instance : preorder mynat := by structure_helper -- hide
end mynat -- hide

/-
I think that to go further, I (Kevin) have to teach you that implication is a function,
and Mohammad has to make the worlds in this game depend on each other in a non-linear
manner. This is all to come in V1.1.

-/