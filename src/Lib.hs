{-# LANGUAGE BangPatterns #-}
module Lib where

import Data.Monoid
import Control.Applicative

partition, partition'
  :: (Foldable t, Alternative s)
  => (a -> Bool)
  -> t a
  -> (s a, s a)

partition f = foldr f' (empty, empty)
  where
    f' x ~(ys, zs) =
      if f x
        then (pure x <|> ys, zs)
        else (ys, pure x <|> zs)

partition' f = foldr f' (empty, empty)
  where
    f' x (!ys, !zs) =
      if f x
        then (pure x <|> ys, zs)
        else (ys, pure x <|> zs)
