module Dsl.Tags exposing
    ( a
    , h1
    , header
    , nodeToHtml
    , p
    , tagToHtml
    , toString
    )

import Dsl.Attributes exposing (attrToHtmlAttr)
import Dsl.Types exposing (Attribute, Node(..), Tag(..))
import Html exposing (Html)


header : List (Attribute msg) -> List (Node msg) -> Node msg
header attrs childern =
    Element Header attrs childern


h1 : List (Attribute msg) -> List (Node msg) -> Node msg
h1 attrs childern =
    Element H1 attrs childern


p : List (Attribute msg) -> List (Node msg) -> Node msg
p attrs childern =
    Element P attrs childern


a : List (Attribute msg) -> List (Node msg) -> Node msg
a attrs childern =
    Element A attrs childern


toString : Tag -> String
toString tag =
    case tag of
        H1 ->
            "h1"

        P ->
            "p"

        A ->
            "a"

        Img ->
            "img"

        Header ->
            "header"


tagToHtml : Tag -> List (Attribute msg) -> List (Node msg) -> Html msg
tagToHtml tag attrs children =
    case tag of
        H1 ->
            Html.h1 (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        A ->
            Html.a (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        P ->
            Html.p (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Img ->
            Html.img (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Header ->
            Html.header (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)


nodeToHtml : Node msg -> Html msg
nodeToHtml node =
    case node of
        Element tag attrs childlren ->
            tagToHtml tag attrs childlren

        Text val ->
            Html.text val
