{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE OverloadedStrings #-}

module Main (main) where

import Language.Javascript.JSaddle.Warp (run)
import Lib
import Reflex.Dom qualified as RD (mainWidgetWithCss)
import Reflex.Dom.Core

-- | This runs your webpage locally from a warp server, accessable from http://localhost:8070/
warpEntryPoint :: IO ()
warpEntryPoint = run 8070 $ mainWidgetWithCss "" myWidget

-- | This will wrap your site in an app
appEntryPoint :: IO ()
appEntryPoint = RD.mainWidgetWithCss "" myWidget

main :: IO ()
main = warpEntryPoint