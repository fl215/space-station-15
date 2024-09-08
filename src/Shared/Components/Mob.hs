{-# LANGUAGE TypeFamilies               #-}

module Shared.Components.Mob ( Mob(..) ) where

import Apecs
import Data.Mob
import Data.Atmos

data Mob = Mob
  { name :: String
  , wearing :: [Entity]
  , limbs :: [Entity]
  , consciousness :: MobConsciousness
  , status :: MobStatus
  , temperature :: Temperature -- this is the average between all the limbs
  } deriving Show
instance Component Mob where type Storage Mob = Map Mob
