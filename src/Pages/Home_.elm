module Pages.Home_ exposing (page)

import Dsl.Attributes exposing (class, id)
import Dsl.Helpers exposing (render)
import Dsl.Tags exposing (a, h1, header, nodeToHtml, p)
import Dsl.Types exposing (Attribute(..), Node(..), Tag(..))
import Html exposing (Html)
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
    let
        _ =
            Debug.log "DEBUG" (render testNode)
    in
    { title = "Homepage"
    , body =
        [ nodeToHtml testNode

        -- ,    Html.text "Hello, world!"
        ]
    }
