module EventSourceExample.Test.NameTest where

import Hedgehog (TestT, (===))

import EventSourceExample (name)

test_name :: TestT IO ()
test_name = "event-source-example" === name
