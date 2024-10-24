module Dsl.Helpers exposing (render)

import Dsl.Attributes as A
import Dsl.DocTags as DT
import Dsl.Tags as T
import Dsl.Types exposing (Attribute, DocTags(..), Node(..), Tag(..))


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
                        " </" ++ stringTag ++ "> "
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
                    List.map attrKeyValue attrs |> String.join " "

                formattedChildern =
                    List.map render children |> String.join ""

                stringTag =
                    tag |> DT.toString

                endTag =
                    " </" ++ stringTag ++ "> "
            in
            "<"
                ++ stringTag
                ++ formattedAttributes
                ++ "> "
                ++ formattedChildern
                ++ endTag

        TextElement val ->
            val



-- ++ endTag


attrKeyValue : Attribute msg -> String
attrKeyValue attr =
    let
        v =
            A.toString attr
    in
    " " ++ v.key ++ "=" ++ v.value
