module Dsl.DocTags exposing (body, head, html, meta, title, toString)

import Dsl.Types exposing (Attribute, DocTags(..), Node(..), Tag(..))


toString : DocTags -> String
toString t =
    case t of
        Body ->
            "body"

        Head ->
            "head"

        Html ->
            "html"

        Meta ->
            "meta"

        Title ->
            "title"


head : List (Attribute msg) -> List (Node msg) -> Node msg
head attrs childern =
    DocElement Head attrs childern


title : List (Attribute msg) -> List (Node msg) -> Node msg
title attrs childern =
    DocElement Title attrs childern


body : List (Attribute msg) -> List (Node msg) -> Node msg
body attrs childern =
    DocElement Body attrs childern


meta : List (Attribute msg) -> List (Node msg) -> Node msg
meta attrs childern =
    DocElement Meta attrs childern


html : List (Attribute msg) -> List (Node msg) -> Node msg
html attrs childern =
    DocElement Html attrs childern
