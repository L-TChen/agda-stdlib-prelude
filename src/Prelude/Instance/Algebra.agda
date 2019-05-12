module Prelude.Instance.Algebra where

open import Prelude.Base
open import Prelude.Relation

record IsMonoid {M : Set ℓ} (_∙_ : M → M → M) (ε : M) : Set (suc ℓ) where
  field
    ε-identityˡ : ∀ x → ε ∙ x ≡ x
    ε-identityʳ : ∀ x → x ∙ ε ≡ x
    ∙-assoc     : ∀ x y z → (x ∙ y) ∙ z ≡ x ∙ (y ∙ z)
open IsMonoid ⦃...⦄ public

record Monoid (M : Set ℓ) : Set (suc ℓ) where
  field
    _∙_ : M → M → M
    ε   : M
--    ⦃ super ⦄ : IsMonoid _∙_ ε
open Monoid ⦃...⦄ public

record Semigroup (S : Set ℓ) : Set (suc ℓ) where
  field
    _∙_ : S → S → S
open Semigroup ⦃...⦄ public

record ⊔-Lattice (A : Set ℓ) (_≤_ : A → A → Set) : Set (suc ℓ) where
  field
    ⦃ super ⦄ : Semigroup A
open ⊔-Lattice ⦃...⦄ public

record ⊔-⊥-Lattice (A : Set ℓ) (_≤_ : A → A → Set) : Set (suc ℓ) where
  field
    ⊥       : A 
    ⦃ lat ⦄ : ⊔-Lattice A _≤_
open ⊔-⊥-Lattice ⦃...⦄ public