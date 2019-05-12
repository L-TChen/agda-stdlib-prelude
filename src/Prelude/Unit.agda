module Prelude.Unit where

open import Prelude.Base
open import Prelude.Instance

open import Data.Unit as Unit public
  hiding (_≟_; _≤_; decSetoid; preorder; setoid)

instance
  ⊤-DecEq : DecEq ⊤
  ⊤-DecEq = record { _≟_ = Unit._≟_ }