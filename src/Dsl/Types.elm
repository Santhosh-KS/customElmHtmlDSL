module Dsl.Types exposing (Attribute(..), Node(..), Tag(..))


type Node msg
    = -- Element Tag (List ( String, String )) (List Node)
      Element Tag (List (Attribute msg)) (List (Node msg))
    | Text String


type Attribute msg
    = Class String
    | Id String
    | Href String


type Tag
    = H1
    | P
    | A
    | Header
    | Img
