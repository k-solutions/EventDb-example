module Main where

import EventSourceExample (name)

main :: IO ()
main = putStrLn ("Hello " <> name)
