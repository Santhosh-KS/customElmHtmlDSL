module Dsl.Attributes exposing (attrToHtmlAttr, class, href, id, toString)

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


stringToBool : String -> Bool
stringToBool val =
    if String.toUpper val == "TRUE" then
        True

    else
        False


stringToInt : String -> Int
stringToInt vals =
    case String.toInt vals of
        Just val ->
            val

        Nothing ->
            0


attrToHtmlAttr : Attribute msg -> Html.Attribute msg
attrToHtmlAttr attr =
    case attr of
        AcceptCharset vals ->
            Attr.acceptCharset vals

        Accept vals ->
            Attr.accept vals

        Accesskey _ ->
            -- TODO: Fixme pass the char value instead of default 'K'
            Attr.accesskey 'K'

        Action vals ->
            Attr.action vals

        Align vals ->
            Attr.align vals

        Alt vals ->
            Attr.alt vals

        {- Attribute vals ->
           Attr.attribute vals
        -}
        Autocomplete vals ->
            Attr.autocomplete (stringToBool vals)

        Autofocus vals ->
            Attr.autofocus (stringToBool vals)

        Autoplay vals ->
            Attr.autoplay (stringToBool vals)

        Checked vals ->
            Attr.checked (stringToBool vals)

        Cite_ vals ->
            Attr.cite vals

        Class vals ->
            Attr.class vals

        Colspan vals ->
            Attr.colspan (stringToInt vals)

        Cols vals ->
            Attr.cols (stringToInt vals)

        Contenteditable vals ->
            Attr.contenteditable (stringToBool vals)

        Contextmenu vals ->
            Attr.contextmenu vals

        Controls vals ->
            Attr.controls (stringToBool vals)

        Coords vals ->
            Attr.coords vals

        Datetime vals ->
            Attr.datetime vals

        Default vals ->
            Attr.default (stringToBool vals)

        Dir vals ->
            Attr.dir vals

        Disabled vals ->
            Attr.disabled (stringToBool vals)

        Download vals ->
            Attr.download vals

        Draggable vals ->
            Attr.draggable vals

        Dropzone vals ->
            Attr.dropzone vals

        Enctype vals ->
            Attr.enctype vals

        Form_ vals ->
            Attr.form vals

        For vals ->
            Attr.for vals

        Headers vals ->
            Attr.headers vals

        Height vals ->
            Attr.height (stringToInt vals)

        Hidden vals ->
            Attr.hidden (stringToBool vals)

        Hreflang vals ->
            Attr.hreflang vals

        Href vals ->
            Attr.href vals

        Id vals ->
            Attr.id vals

        Itemprop vals ->
            Attr.itemprop vals

        Kind vals ->
            Attr.kind vals

        Lang vals ->
            Attr.lang vals

        List vals ->
            Attr.list vals

        Loop vals ->
            Attr.loop (stringToBool vals)

        Manifest vals ->
            Attr.manifest vals

        Maxlength vals ->
            Attr.maxlength (stringToInt vals)

        Max vals ->
            Attr.max vals

        Media vals ->
            Attr.media vals

        Method vals ->
            Attr.method vals

        Minlength vals ->
            Attr.minlength (stringToInt vals)

        Min vals ->
            Attr.min vals

        Multiple vals ->
            Attr.multiple (stringToBool vals)

        Name vals ->
            Attr.name vals

        Novalidate vals ->
            Attr.novalidate (stringToBool vals)

        Pattern vals ->
            Attr.pattern vals

        Ping vals ->
            Attr.ping vals

        Placeholder vals ->
            Attr.placeholder vals

        Poster vals ->
            Attr.poster vals

        Preload vals ->
            Attr.preload vals

        {- Property vals ->
           Attr.property vals
        -}
        Pubdate vals ->
            Attr.pubdate vals

        Readonly vals ->
            Attr.readonly (stringToBool vals)

        Rel vals ->
            Attr.rel vals

        Required vals ->
            Attr.required (stringToBool vals)

        Reversed vals ->
            Attr.reversed (stringToBool vals)

        Rowspan vals ->
            Attr.rowspan (stringToInt vals)

        Rows vals ->
            Attr.rows (stringToInt vals)

        Sandbox vals ->
            Attr.sandbox vals

        Scope vals ->
            Attr.scope vals

        Selected vals ->
            Attr.selected (stringToBool vals)

        Shape vals ->
            Attr.shape vals

        Size vals ->
            Attr.size (stringToInt vals)

        Spellcheck vals ->
            Attr.spellcheck (stringToBool vals)

        Srcdoc vals ->
            Attr.srcdoc vals

        Srclang vals ->
            Attr.srclang vals

        Src vals ->
            Attr.src vals

        Start vals ->
            Attr.start (stringToInt vals)

        Step vals ->
            Attr.step vals

        Style vals ->
            Attr.style "style" vals

        Tabindex vals ->
            Attr.tabindex (stringToInt vals)

        Target vals ->
            Attr.target vals

        Title vals ->
            Attr.title vals

        Type vals ->
            Attr.type_ vals

        Value vals ->
            Attr.value vals

        Width vals ->
            Attr.width (stringToInt vals)

        Wrap vals ->
            Attr.wrap vals


toString : Attribute msg -> { key : String, value : String }
toString attr =
    case attr of
        AcceptCharset vals ->
            { key = "acceptcharset", value = vals }

        Accept vals ->
            { key = "accept", value = vals }

        Accesskey vals ->
            { key = "accesskey", value = vals }

        Action vals ->
            { key = "action", value = vals }

        Align vals ->
            { key = "align", value = vals }

        Alt vals ->
            { key = "alt", value = vals }

        Autocomplete vals ->
            { key = "autocomplete", value = vals }

        Autofocus vals ->
            { key = "autofocus", value = vals }

        Autoplay vals ->
            { key = "autoplay", value = vals }

        Checked vals ->
            { key = "checked", value = vals }

        Cite_ vals ->
            { key = "cite", value = vals }

        Class vals ->
            { key = "class", value = vals }

        Colspan vals ->
            { key = "colspan", value = vals }

        Cols vals ->
            { key = "cols", value = vals }

        Contenteditable vals ->
            { key = "contenteditable", value = vals }

        Contextmenu vals ->
            { key = "contextmenu", value = vals }

        Controls vals ->
            { key = "controls", value = vals }

        Coords vals ->
            { key = "coords", value = vals }

        Datetime vals ->
            { key = "datetime", value = vals }

        Default vals ->
            { key = "default", value = vals }

        Dir vals ->
            { key = "dir", value = vals }

        Disabled vals ->
            { key = "disabled", value = vals }

        Download vals ->
            { key = "download", value = vals }

        Draggable vals ->
            { key = "draggable", value = vals }

        Dropzone vals ->
            { key = "dropzone", value = vals }

        Enctype vals ->
            { key = "enctype", value = vals }

        Form_ vals ->
            { key = "form", value = vals }

        For vals ->
            { key = "for", value = vals }

        Headers vals ->
            { key = "headers", value = vals }

        Height vals ->
            { key = "height", value = vals }

        Hidden vals ->
            { key = "hidden", value = vals }

        Hreflang vals ->
            { key = "hreflang", value = vals }

        Href vals ->
            { key = "href", value = vals }

        Id vals ->
            { key = "id", value = vals }

        Itemprop vals ->
            { key = "itemprop", value = vals }

        Kind vals ->
            { key = "kind", value = vals }

        Lang vals ->
            { key = "lang", value = vals }

        List vals ->
            { key = "list", value = vals }

        Loop vals ->
            { key = "loop", value = vals }

        Manifest vals ->
            { key = "manifest", value = vals }

        Maxlength vals ->
            { key = "maxlength", value = vals }

        Max vals ->
            { key = "max", value = vals }

        Media vals ->
            { key = "media", value = vals }

        Method vals ->
            { key = "method", value = vals }

        Minlength vals ->
            { key = "minlength", value = vals }

        Min vals ->
            { key = "min", value = vals }

        Multiple vals ->
            { key = "multiple", value = vals }

        Name vals ->
            { key = "name", value = vals }

        Novalidate vals ->
            { key = "novalidate", value = vals }

        Pattern vals ->
            { key = "pattern", value = vals }

        Ping vals ->
            { key = "ping", value = vals }

        Placeholder vals ->
            { key = "placeholder", value = vals }

        Poster vals ->
            { key = "poster", value = vals }

        Preload vals ->
            { key = "preload", value = vals }

        Pubdate vals ->
            { key = "pubdate", value = vals }

        Readonly vals ->
            { key = "readonly", value = vals }

        Rel vals ->
            { key = "rel", value = vals }

        Required vals ->
            { key = "required", value = vals }

        Reversed vals ->
            { key = "reversed", value = vals }

        Rowspan vals ->
            { key = "rowspan", value = vals }

        Rows vals ->
            { key = "rows", value = vals }

        Sandbox vals ->
            { key = "sandbox", value = vals }

        Scope vals ->
            { key = "scope", value = vals }

        Selected vals ->
            { key = "selected", value = vals }

        Shape vals ->
            { key = "shape", value = vals }

        Size vals ->
            { key = "size", value = vals }

        Spellcheck vals ->
            { key = "spellcheck", value = vals }

        Srcdoc vals ->
            { key = "srcdoc", value = vals }

        Srclang vals ->
            { key = "srclang", value = vals }

        Src vals ->
            { key = "src", value = vals }

        Start vals ->
            { key = "start", value = vals }

        Step vals ->
            { key = "step", value = vals }

        Style vals ->
            { key = "style", value = vals }

        Tabindex vals ->
            { key = "tabindex", value = vals }

        Target vals ->
            { key = "target", value = vals }

        Title vals ->
            { key = "title", value = vals }

        Type vals ->
            { key = "type", value = vals }

        Value vals ->
            { key = "value", value = vals }

        Width vals ->
            { key = "width", value = vals }

        Wrap vals ->
            { key = "wrap", value = vals }
