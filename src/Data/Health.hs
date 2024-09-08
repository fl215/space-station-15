module Data.Health
  ( HealthStatus(..)
  , getHealthStatus
  , calcHealth
  ) where

import Data.Maybe
import Data.DamageType
import qualified Data.Map as M

data HealthStatus
  = Good
  | Poor
  | Bad
  | ReallyBad
  | Critical
  | Dead
  deriving (Show, Read, Eq)

getHealthStatus :: Float -> Float -> HealthStatus
getHealthStatus health maxHealth
  | health <= 0 = Dead
  | health <= minCritHealth = Critical
  | health <= minReallyBadHealth = ReallyBad
  | health <= minBadHealth = Bad
  | health <= minMediocreHealth = Poor
  | otherwise = Good
  where minCritHealth = maxHealth / 2
        minMediocreHealth = maxHealth / 1.15
        minBadHealth = maxHealth / 1.35
        minReallyBadHealth = maxHealth / 1.55

calcHealth :: Float
           -> M.Map DamageType Float
           -> M.Map DamageType Float
           -> Float
calcHealth maxHealth damage resistance
  = foldl (\acc (t, x) -> acc - (x * ((100 - (fromMaybe 0 $ M.lookup t resistance)) / 100))) maxHealth (M.toList damage)
