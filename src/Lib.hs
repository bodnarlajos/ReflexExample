{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE  RankNTypes #-}
module Lib
  ( myWidget,
  )
where

import Reflex.Dom

myWidget :: forall x. Widget x ()
myWidget = text "Hello, world!"
