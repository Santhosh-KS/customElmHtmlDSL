module Pages.Home_ exposing (page)

import Dsl.Attributes as A
import Dsl.DocAttributes as DA
import Dsl.DocTags exposing (body, head, html, meta, style, title)
import Dsl.Helpers exposing (render)
import Dsl.Mso as MSO
import Dsl.Tags exposing (h1, header, nodeToHtml, p)
import Dsl.Types exposing (Attribute(..), Node(..), Tag(..))
import Html
import View exposing (View)


testNode : Node msg
testNode =
    header []
        [ h1 [ A.id "MytestId" ]
            [ TextElement "Hello My own Parser!"
            ]
        , p [ A.class "MyPclass" ] []
        ]


docNode : Node msg
docNode =
    html
        [ DA.lang "en"
        , DA.dir "dir"
        , DA.xmlnso "urn:schemas-microsoft-com:office:office"
        , DA.xmlnsv "urn:schemas-microsoft-com:vml"
        ]
        [ head []
            [ meta [ DA.charset "UTF-8" ] []
            , meta
                [ DA.name "viewport"
                , DA.content "width=device-width, initial-scale=1.0, user-scalable=yes"
                ]
                []
            , meta
                [ DA.http_equiv "Content-Type"
                , DA.content "text/html; charset=utf-8"
                ]
                []
            , meta
                [ DA.name "format-detection"
                , DA.content "telephone=no, date=no, address=no, email=no, url=no"
                ]
                []
            , meta
                [ DA.name "x-apple-disable-message-reformatting"
                ]
                []
            , meta
                [ DA.name "color-scheme"
                , DA.content "light dark"
                ]
                []
            , meta
                [ DA.name "supported-color-schemes"
                , DA.content "light dark"
                ]
                []
            , title [] [ TextElement "Document" ]
            , MSO.msoComment MSO.pixelContent
            , style [ DA.type_ "text/css" ] []
            , MSO.msoComment MSO.styleContent
            ]
        , body []
            [ testNode
            ]
        ]


page : View msg
page =
    let
        _ =
            Debug.log "" ("<!DOCTYPE html>" ++ render docNode)
    in
    { title = "Homepage"
    , body =
        [ nodeToHtml docNode

        -- nodeToHtml testNode
        , Html.text "Hello, world!"
        ]
    }
