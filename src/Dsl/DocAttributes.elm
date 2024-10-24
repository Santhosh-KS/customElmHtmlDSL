module Dsl.DocAttributes exposing (charset, content, lang, name, toString)

import Dsl.Types exposing (..)


toString : DocAttribute msg -> { key : String, value : String }
toString attr =
    case attr of
        Dcharset val ->
            { key = "charset", value = val }

        Dname val ->
            { key = "name", value = val }

        Dcontent val ->
            { key = "content", value = val }

        Dlang val ->
            { key = "lang", value = val }


charset : String -> DocAttribute msg
charset val =
    Dcharset val


name : String -> DocAttribute msg
name val =
    Dname val


content : String -> DocAttribute msg
content val =
    Dcontent val


lang : String -> DocAttribute msg
lang val =
    Dcontent val
