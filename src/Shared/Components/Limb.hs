{-# LANGUAGE TypeFamilies               #-}

module Shared.Components.Limb ( Limb(..) ) where

import Apecs
import Data.DamageType
import qualified Data.Map as M

data Limb = Limb
  { damage :: M.Map DamageType Float
  , temperature :: Float
  } deriving Show
instance Component Limb where type Storage Limb = Map Limb
