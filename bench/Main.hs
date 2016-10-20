module Main where

import Criterion.Main
import qualified Data.List as List
import Lib

-- Our benchmark harness.
main = defaultMain 
  [ bgroup "list"
    [ bench "nf 10"      $ nf (List.partition (> 3)) [1..10 :: Int]
    , bench "nf 1000"    $ nf (List.partition (> 3)) [1..1000 :: Int]
    , bench "whnf 10"    $ whnf (List.partition (> 3)) [1..10]
    , bench "whnf 1000"  $ whnf (List.partition (> 3)) [1..1000]
    ]
  , bgroup "lazy"
    [ bench "nf 10"      $ nf (partition (> 3)) [1..10 :: Int]
    , bench "nf 1000"    $ nf (partition (> 3)) [1..1000 :: Int]
    , bench "whnf 10"    $ whnf (partition (> 3)) [1..10]
    , bench "whnf 1000"  $ whnf (partition (> 3)) [1..1000]
    ]
  , bgroup "strict"
    [ bench "nf 10"      $ nf (partition' (> 3)) [1..10 :: Int]
    , bench "nf 1000"    $ nf (partition' (> 3)) [1..1000 :: Int]
    , bench "whnf 10"    $ whnf (partition' (> 3)) [1..10]
    , bench "whnf 1000"  $ whnf (partition' (> 3)) [1..1000]
    ]
  ]
