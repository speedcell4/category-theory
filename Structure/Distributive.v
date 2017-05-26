Set Warnings "-notation-overridden".

Require Import Category.Lib.
Require Export Category.Theory.Isomorphism.
Require Export Category.Structure.Bicartesian.
Require Export Category.Structure.Initial.

Generalizable All Variables.
Set Primitive Projections.
Set Universe Polymorphism.
Unset Transparent Obligations.

Section Distributive.

Context {C : Category}.
Context `{@Cartesian C}.
Context `{@Cocartesian C}.
Context `{@Initial C}.

Class Distributive := {
  distr_prod_coprod {X Y Z} : @Isomorphism C (X × (Y + Z)) (X × Y + X × Z);
  distr_zero {X} : X × Zero ≅ Zero
}.

End Distributive.
