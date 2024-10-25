module Dsl.Helpers exposing (attrKeyValue, bodyDivStyle, docAttrKeyValue, render)

import Dsl.Attributes as A
import Dsl.DocAttributes as DA
import Dsl.DocTags as DT
import Dsl.Mso exposing (msoSettings)
import Dsl.Tags as T
import Dsl.Types exposing (Attribute, DocAttribute, DocTags(..), Node(..), Tag(..))


render : Node msg -> String
render node =
    case node of
        Element tag attrs children ->
            let
                formattedAttributes =
                    List.map attrKeyValue attrs |> String.join " "

                formattedChildern =
                    List.map render children |> String.join ""

                stringTag =
                    tag |> T.toString

                endTag =
                    if tag == Img then
                        ""

                    else
                        " </" ++ stringTag ++ ">\n"
            in
            "<"
                ++ stringTag
                ++ formattedAttributes
                ++ "> "
                ++ formattedChildern
                ++ endTag

        DocElement tag attrs children ->
            let
                formattedAttributes =
                    List.map docAttrKeyValue attrs |> String.join " "

                formattedChildern =
                    List.map render children |> String.join ""

                stringTag =
                    tag |> DT.toString

                endTag =
                    if tag == Meta then
                        "\n"

                    else
                        " </" ++ stringTag ++ ">\n"
            in
            "<"
                ++ stringTag
                ++ formattedAttributes
                ++ "> "
                ++ formattedChildern
                ++ endTag

        TextElement val ->
            val

        MsoComments val ->
            msoSettings val


docAttrKeyValue : DocAttribute msg -> String
docAttrKeyValue attr =
    let
        v =
            DA.toString attr
    in
    " " ++ v.key ++ "=" ++ "\"" ++ v.value ++ "\" "


attrKeyValue : Attribute msg -> String
attrKeyValue attr =
    let
        v =
            A.toString attr
    in
    " " ++ v.key ++ "=" ++ "\"" ++ v.value ++ "\""


bodyDivStyle : String
bodyDivStyle =
    "margin:0; padding:0; min-width: 100%; background-color: #dde0e1;"
