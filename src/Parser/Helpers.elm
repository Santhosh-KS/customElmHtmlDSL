module Parser.Helpers exposing (render)

import Parser.Attributes exposing (key, value)
import Parser.Tags exposing (toString)
import Parser.Types exposing (Attribute, Node(..), Tag(..))


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
                    tag |> toString

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

        Text val ->
            val



-- ++ endTag


attrKeyValue : Attribute msg -> String
attrKeyValue attr =
    " " ++ key attr ++ "=" ++ value attr
