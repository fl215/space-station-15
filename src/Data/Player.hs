module Data.Player
  ( Player(..)
  , PlayerStatus(..)
  , defaultPlayer
  ) where

data PlayerStatus
  = InMenu
  | InGame
  deriving (Show, Read, Eq)
data Player = Player
  { name :: String
  , status :: PlayerStatus
  } deriving (Show, Read, Eq)

defaultPlayer :: Player
defaultPlayer = Player{ name = "Player", status = InMenu }
