{-# LANGUAGE BangPatterns #-}
module Lib where

import Data.Monoid

partition :: (Foldable t, Monoid (t a), Applicative t)
          => (a -> Bool)
          -> t a
          -> (t a, t a)
partition f = foldr f' (mempty, mempty)
  where
    f' x ~(ys, zs) =
      if f x
        then (pure x <> ys, zs)
        else (ys, pure x <> zs)

partition' :: (Foldable t, Monoid (t a), Applicative t)
          => (a -> Bool)
          -> t a
          -> (t a, t a)
partition' f = foldr f' (mempty, mempty)
  where
    f' x (!ys, !zs) =
      if f x
        then (pure x <> ys, zs)
        else (ys, pure x <> zs)
