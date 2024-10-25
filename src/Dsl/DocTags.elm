module Dsl.DocTags exposing (body, head, html, meta, style, title, toString)

import Dsl.Types exposing (DocAttribute, DocTags(..), Node(..), Tag(..))


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

        Style_ ->
            "style"

        Title ->
            "title"


head : List (DocAttribute msg) -> List (Node msg) -> Node msg
head attrs childern =
    DocElement Head attrs childern


title : List (DocAttribute msg) -> List (Node msg) -> Node msg
title attrs childern =
    DocElement Title attrs childern


body : List (DocAttribute msg) -> List (Node msg) -> Node msg
body attrs childern =
    DocElement Body attrs childern


meta : List (DocAttribute msg) -> List (Node msg) -> Node msg
meta attrs childern =
    DocElement Meta attrs childern


html : List (DocAttribute msg) -> List (Node msg) -> Node msg
html attrs childern =
    DocElement Html attrs childern


style : List (DocAttribute msg) -> List (Node msg) -> Node msg
style attrs childern =
    DocElement Style_ attrs childern
