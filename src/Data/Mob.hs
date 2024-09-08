module Data.Mob
  ( MobStatus(..)
  , MobConsciousness(..)
  ) where

data MobStatus
  = Alive
  | Critical
  | Dead
  deriving (Show, Read, Eq)
data MobConsciousness
  = Consciousness
  | Halfconscious
  | Unconscious
  deriving (Show, Read, Eq)
