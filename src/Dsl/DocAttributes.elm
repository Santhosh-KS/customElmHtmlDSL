module Dsl.DocAttributes exposing
    ( charset
    , content
    , dir
    , http_equiv
    , lang
    , name
    , toString
    , type_
    , xmlnso
    , xmlnsv
    )

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

        Ddir val ->
            { key = "dir", value = val }

        Dxmlnsv val ->
            { key = "xmlns:v", value = val }

        Dxmlnso val ->
            { key = "xmlns:o", value = val }

        Dhttp_equiv val ->
            { key = "http-equiv", value = val }

        Dtype val ->
            { key = "type", value = val }


http_equiv : String -> DocAttribute msg
http_equiv val =
    Dhttp_equiv val


xmlnso : String -> DocAttribute msg
xmlnso val =
    Dxmlnso val


xmlnsv : String -> DocAttribute msg
xmlnsv val =
    Dxmlnsv val


dir : String -> DocAttribute msg
dir val =
    Ddir val


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


type_ : String -> DocAttribute msg
type_ val =
    Dtype val
