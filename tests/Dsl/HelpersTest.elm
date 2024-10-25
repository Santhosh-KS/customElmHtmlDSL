module Dsl.HelpersTest exposing (..)

import Dsl.Attributes exposing (title)
import Dsl.Helpers exposing (..)
import Dsl.Tags exposing (h1)
import Dsl.Types exposing (Attribute(..))
import Expect
import Fuzz exposing (Fuzzer, int, list, string)
import Test exposing (..)


testing : Test
testing =
    describe "Helpers Test"
        [ test "Testing render" <|
            \_ ->
                let
                    t : Attribute msg
                    t =
                        title "My title"

                    h : Dsl.Types.Node msg
                    h =
                        h1 [ t ] []

                    v =
                        render h
                in
                Expect.equal v "<h1 title=\"My title\">  </h1> "

        -- Expect.equal "key=\"myvalue\""
        ]


suite : Test
suite =
    describe "Helpers Test"
        [ test "Testing render" <|
            \_ ->
                let
                    t : Attribute msg
                    t =
                        title "My title"

                    h : Dsl.Types.Node msg
                    h =
                        h1 [ t ] []

                    v =
                        render h
                in
                Expect.equal v "<h1 title=\"My title\">  </h1> "

        -- Expect.equal "key=\"myvalue\""
        ]
