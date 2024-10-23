module Pages.Home_ exposing (page)

import Html exposing (Html)
import Parser.Attributes exposing (class, id)
import Parser.Helpers exposing (render)
import Parser.Tags exposing (a, h1, header, nodeToHtml, p)
import Parser.Types exposing (Attribute(..), Node(..), Tag(..))
import View exposing (View)


testNode : Node msg
testNode =
    header []
        [ h1 [ id "MytestId" ]
            [ Text "Hello My own Parser!"
            ]
        , p [ class "MyPclass" ] []
        ]


page : View msg
page =
    { title = "Homepage"
    , body =
        [ nodeToHtml testNode

        -- ,    Html.text "Hello, world!"
        ]
    }
