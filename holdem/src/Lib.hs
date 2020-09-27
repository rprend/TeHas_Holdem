module Lib
    ( someFunc
    ) where

data CardSuit = Heart | Diamond | Club | Spade
  deriving (Eq, Ord, Bounded, Show, Read)

data CardValue = Two | Three | Four | Five | Six | Seven | Eight | Nine | Ten | Jack | Queen | King | Ace
  deriving (Eq, Ord, Enum, Bounded, Show, Read)

data CardInstance = Card CardValue CardSuit
  deriving (Show, Read)

data CardHand = CardHand CardInstance CardInstance
  deriving (Show, Read)

data PotHand = Nothing | CardInstance CardInstance CardInstance | Turn CardInstance CardInstance CardInstance CardInstance | River CardInstance CardInstance CardInstance CardInstance CardInstance
  deriving (Show, Read)

someFunc :: IO ()
someFunc = putStrLn "someFunc"

-- Returns the value of your hand
handValue :: CardHand -> PotHand -> Int
handValue = undefined
-- handValue hand (Flop f) = undefined
-- handValue hand (Turn t) = undefined
-- handValue hand (River r) = undefined

-- returns the index of the best hand in the list of provided hands
handWinner :: [CardHand] -> PotHand -> Int
handWinner = undefined

