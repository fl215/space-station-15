{-# LANGUAGE TypeFamilies               #-}

module Shared.Components.Transform ( Transform(..) ) where

import Apecs
import Linear (V3 (..))

data Transform = Transform
  { position :: V3 Double
  , rotation :: Float
  } deriving Show
instance Component Transform where type Storage Transform = Map Transform
