module Dsl.Attributes exposing
    ( accept
    , acceptCharset
    , accesskey
    , action
    , align
    , alt
    , attrToHtmlAttr
    , autocomplete
    , autofocus
    , autoplay
    , checked
    , cite_
    , class
    , cols
    , colspan
    , contenteditable
    , contextmenu
    , controls
    , coords
    , datetime
    , default
    , dir
    , disabled
    , download
    , draggable
    , dropzone
    , enctype
    , for
    , form_
    , headers
    , height
    , hidden
    , href
    , hreflang
    , id
    , itemprop
    , kind
    , lang
    , list
    , loop
    , manifest
    , max
    , maxlength
    , media
    , method
    , min
    , minlength
    , multiple
    , name
    , novalidate
    , pattern
    , ping
    , placeholder
    , poster
    , preload
    , pubdate
    , readonly
    , rel
    , required
    , reversed
    , role
    , rows
    , rowspan
    , sandbox
    , scope
    , selected
    , shape
    , size
    , spellcheck
    , src
    , srcdoc
    , srclang
    , start
    , step
    , style
    , tabindex
    , target
    , title
    , toString
    , type_
    , value
    , width
    , wrap
    )

import Dsl.Types exposing (Attribute(..))
import Html
import Html.Attributes as Attr


acceptCharset : String -> Attribute msg
acceptCharset val =
    AcceptCharset val


accept : String -> Attribute msg
accept val =
    Accept val


accesskey : String -> Attribute msg
accesskey val =
    Accesskey val


action : String -> Attribute msg
action val =
    Action val


align : String -> Attribute msg
align val =
    Align val


alt : String -> Attribute msg
alt val =
    Alt val


autocomplete : String -> Attribute msg
autocomplete val =
    Autocomplete val


autofocus : String -> Attribute msg
autofocus val =
    Autofocus val


autoplay : String -> Attribute msg
autoplay val =
    Autoplay val


checked : String -> Attribute msg
checked val =
    Checked val


cite_ : String -> Attribute msg
cite_ val =
    Cite_ val


class : String -> Attribute msg
class val =
    Class val


colspan : String -> Attribute msg
colspan val =
    Colspan val


cols : String -> Attribute msg
cols val =
    Cols val


contenteditable : String -> Attribute msg
contenteditable val =
    Contenteditable val


contextmenu : String -> Attribute msg
contextmenu val =
    Contextmenu val


controls : String -> Attribute msg
controls val =
    Controls val


coords : String -> Attribute msg
coords val =
    Coords val


datetime : String -> Attribute msg
datetime val =
    Datetime val


default : String -> Attribute msg
default val =
    Default val


dir : String -> Attribute msg
dir val =
    Dir val


disabled : String -> Attribute msg
disabled val =
    Disabled val


download : String -> Attribute msg
download val =
    Download val


draggable : String -> Attribute msg
draggable val =
    Draggable val


dropzone : String -> Attribute msg
dropzone val =
    Dropzone val


enctype : String -> Attribute msg
enctype val =
    Enctype val


form_ : String -> Attribute msg
form_ val =
    Form_ val


for : String -> Attribute msg
for val =
    For val


headers : String -> Attribute msg
headers val =
    Headers val


height : String -> Attribute msg
height val =
    Height val


hidden : String -> Attribute msg
hidden val =
    Hidden val


hreflang : String -> Attribute msg
hreflang val =
    Hreflang val


href : String -> Attribute msg
href val =
    Href val


id : String -> Attribute msg
id val =
    Id val


itemprop : String -> Attribute msg
itemprop val =
    Itemprop val


kind : String -> Attribute msg
kind val =
    Kind val


lang : String -> Attribute msg
lang val =
    Lang val


list : String -> Attribute msg
list val =
    List val


loop : String -> Attribute msg
loop val =
    Loop val


manifest : String -> Attribute msg
manifest val =
    Manifest val


maxlength : String -> Attribute msg
maxlength val =
    Maxlength val


max : String -> Attribute msg
max val =
    Max val


media : String -> Attribute msg
media val =
    Media val


method : String -> Attribute msg
method val =
    Method val


minlength : String -> Attribute msg
minlength val =
    Minlength val


min : String -> Attribute msg
min val =
    Min val


multiple : String -> Attribute msg
multiple val =
    Multiple val


name : String -> Attribute msg
name val =
    Name val


novalidate : String -> Attribute msg
novalidate val =
    Novalidate val


pattern : String -> Attribute msg
pattern val =
    Pattern val


ping : String -> Attribute msg
ping val =
    Ping val


placeholder : String -> Attribute msg
placeholder val =
    Placeholder val


poster : String -> Attribute msg
poster val =
    Poster val


preload : String -> Attribute msg
preload val =
    Preload val


pubdate : String -> Attribute msg
pubdate val =
    Pubdate val


readonly : String -> Attribute msg
readonly val =
    Readonly val


rel : String -> Attribute msg
rel val =
    Rel val


required : String -> Attribute msg
required val =
    Required val


reversed : String -> Attribute msg
reversed val =
    Reversed val


rowspan : String -> Attribute msg
rowspan val =
    Rowspan val


role : String -> Attribute msg
role val =
    Role val


rows : String -> Attribute msg
rows val =
    Rows val


sandbox : String -> Attribute msg
sandbox val =
    Sandbox val


scope : String -> Attribute msg
scope val =
    Scope val


selected : String -> Attribute msg
selected val =
    Selected val


shape : String -> Attribute msg
shape val =
    Shape val


size : String -> Attribute msg
size val =
    Size val


spellcheck : String -> Attribute msg
spellcheck val =
    Spellcheck val


srcdoc : String -> Attribute msg
srcdoc val =
    Srcdoc val


srclang : String -> Attribute msg
srclang val =
    Srclang val


src : String -> Attribute msg
src val =
    Src val


start : String -> Attribute msg
start val =
    Start val


step : String -> Attribute msg
step val =
    Step val


style : String -> Attribute msg
style val =
    Style val


tabindex : String -> Attribute msg
tabindex val =
    Tabindex val


target : String -> Attribute msg
target val =
    Target val


title : String -> Attribute msg
title val =
    Title_ val


type_ : String -> Attribute msg
type_ val =
    Type val


value : String -> Attribute msg
value val =
    Value val


width : String -> Attribute msg
width val =
    Width val


wrap : String -> Attribute msg
wrap val =
    Wrap val


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

        Role vals ->
            Attr.dir vals

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

        Title_ vals ->
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

        Role vals ->
            { key = "role", value = vals }

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

        Title_ vals ->
            { key = "title", value = vals }

        Type vals ->
            { key = "type", value = vals }

        Value vals ->
            { key = "value", value = vals }

        Width vals ->
            { key = "width", value = vals }

        Wrap vals ->
            { key = "wrap", value = vals }
