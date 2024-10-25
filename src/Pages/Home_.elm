module Pages.Home_ exposing (page)

import Dsl.Attributes as A
import Dsl.DocAttributes as DA
import Dsl.DocTags exposing (body, head, html, meta, style, title)
import Dsl.Helpers exposing (bodyDivStyle, render)
import Dsl.Mso as MSO
import Dsl.Tags exposing (div, h1, header, nodeToHtml, p, table, td, text, tr)
import Dsl.Types exposing (Attribute(..), DocAttribute(..), Node(..), Tag(..))
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
        , body
            [ DA.class "body"
            , DA.xml_lang "en"
            , DA.style_ bodyDivStyle
            ]
            [ -- testNode
              div
                [ A.style bodyDivStyle
                ]
                [ div
                    [ A.style bodyDivStyle
                    ]
                    [ div
                        [ A.style "font-size:0; color: #fafdfe; mso-line-height-rule:exactly; line-height: 0; display:none; max-width: 0; max-width: 0; opacity: 0; overflow: hidden;mso-hide:all;"
                        ]
                        -- TODO: FIXME: make these alien chars using repeat function
                        [ text "This is our preheader text which can be 35-190 charecters but 85-100 is recommended.\n\t\t\t\t&zwnj;&nbsp;&#847;&zwnj;&nbsp;&#847;&zwnj;&nbsp;&#847;&zwnj;&nbsp;&#847;&zwnj;&nbsp;&#847;&zwnj;&nbsp;&#847;&zwnj;&nbsp;&#847;&zwnj;&nbsp;&#847;&zwnj;&nbsp;&#847;&zwnj;&nbsp;&#847;&zwnj;&nbsp;&#847;&zwnj;&nbsp;&#847;&zwnj;&nbsp;&#847;&zwnj;&nbsp;&#847;&zwnj;&nbsp;&#847;&zwnj;&nbsp;&#847;&zwnj;&nbsp;&#847;&zwnj;&nbsp;&#847;&zwnj;&nbsp;&#847;&zwnj;&nbsp;&#847;&zwnj;&nbsp;&#847;&zwnj;&nbsp;&#847;&zwnj;&nbsp;&#847;&zwnj;&nbsp;&#847;&zwnj;&nbsp;&#847;&zwnj;&nbsp;&#847;&zwnj;&nbsp;&#847;&zwnj;&nbsp;&#847;&zwnj;&nbsp;&#847;&zwnj;&nbsp;&#847;&zwnj;&nbsp;&#847;" ]
                    , table
                        [ A.align "center"
                        , A.role "presentation"
                        , A.style "border-spacing: 0; border-collapse:collapse; color:#3d3d3d; font-family: Arial, Helvetica, sans-serif; font-size: 16px; background-color: #fafdfe; margin:0 auto; padding: 0; width: 100%; max-width: 600px;"
                        ]
                        [ tr [ A.style "height:10px;background-color: aqua;" ]
                            [ td [] [ h1 [] [ text "Hello World!" ] ]
                            ]
                        ]
                    ]
                ]
            ]
        ]


page : View msg
page =
    let
        v =
            render docNode

        _ =
            Debug.log ("<!DOCTYPE html>" ++ v) ""
    in
    { title = "Homepage"
    , body =
        [ nodeToHtml docNode
        , Html.text "Hello, world!"
        ]
    }
