module Data.Card where

data Suit = Heart | Diamond | Club | Spade
  deriving (Eq, Show)

data CardValue = Two | Three | Four | Five | Six | Seven | Eight | Nine | Ten | Jack | Queen | King | Ace
  deriving (Eq, Ord, Enum, Show)

data Card = Card CardValue Suit
  deriving (Show)

cardValue :: Card -> CardValue
cardValue (Card val _) = val

suit :: Card -> Suit
suit (Card _ s) = s

instance Eq Card where
  Card value1 _ == Card value2 _ = value1 == value2

instance Ord Card where
  (Card value1 _) `compare` (Card value2 _) = value1 `compare` value2

data Hand = Hand Card Card

data Community = Nothing | Flop Card Card Card | Turn Card Card Card Card | River Card Card Card Card Card 


-- Returns the value of your hand
handValue :: Community -> Hand -> Int
handValue = undefined
-- handValue hand (Flop f) = undefined
-- handValue hand (Turn t) = undefined
-- handValue hand (River r) = undefined

-- returns the index of the best hand in the list of provided hands
handWinner :: Community -> [Hand] -> Int
handWinner = undefined


