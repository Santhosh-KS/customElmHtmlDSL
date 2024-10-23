module Dsl.Attributes exposing (attrToHtmlAttr, class, href, id, key, value)

import Dsl.Types exposing (Attribute(..))
import Html
import Html.Attributes as Attr


id : String -> Attribute msg
id val =
    Id val


class : String -> Attribute msg
class val =
    Class val


href : String -> Attribute msg
href val =
    Href val


attrToHtmlAttr : Attribute msg -> Html.Attribute msg
attrToHtmlAttr attr =
    case attr of
        Class vals ->
            Attr.class vals

        Href vals ->
            Attr.href vals

        Id vals ->
            Attr.id vals


toString : Attribute msg -> String
toString atr =
    case atr of
        Class _ ->
            "class"

        Id _ ->
            "id"

        Href _ ->
            "href"


key : Attribute msg -> String
key attr =
    toString attr


value : Attribute msg -> String
value atr =
    case atr of
        Class val ->
            val

        Id val ->
            val

        Href val ->
            val
