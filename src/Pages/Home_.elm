module Pages.Home_ exposing (page)

import Dsl.Attributes as DA
import Dsl.DocTags exposing (body, head, html, title)
import Dsl.Helpers exposing (render)
import Dsl.Tags exposing (a, h1, header, nodeToHtml, p)
import Dsl.Types exposing (Attribute(..), Node(..), Tag(..))
import Html exposing (Html)
import Html.Attributes exposing (lang)
import View exposing (View)


testNode : Node msg
testNode =
    header []
        [ h1 [ DA.id "MytestId" ]
            [ TextElement "Hello My own Parser!"
            ]
        , p [ DA.class "MyPclass" ] []
        ]


docNode : Node msg
docNode =
    html [ DA.lang "en" ]
        [ head [] []
        ]


page : View msg
page =
    let
        _ =
            Debug.log "" "<!DOCTYPE html>"

        _ =
            Debug.log "" (render docNode)
    in
    { title = "Homepage"
    , body =
        [ nodeToHtml testNode
        , Html.text "Hello, world!"
        ]
    }
