module Dsl.Mso exposing (msoComment, msoContent, msoSettings, pixelContent, styleContent)

import Dsl.Types exposing (Node(..))


pixelContent : String
pixelContent =
    """ 
<noscript>
  <xml>
      <o:OfficeDocumentSettings>
          <o:PixelsPerInch> 96 </o:PixelsPerInch>
      </o:OfficeDocumentSettings>
  </xml> 
</noscript> """


styleContent : String
styleContent =
    """ 
<style type="text/css">
    body {
        background-color: #dde0e1 !important
    }

    body,
    table,
    td,
    p,
    a {
        font-family: Arial, Helvetica !important;
    }

    table {
        border-spacing: 0 !important;
        border-collapse: collapse !important;
        line-height: 100% !important;
        mso-table-lspace: 0pt !important;
        mso-table-rspace: 0pt !important;
        mso-line-height-rule: exactly !important;
    }``
</style> 
"""


msoSettings : String -> String
msoSettings content =
    msoContent content


msoContent : String -> String
msoContent content =
    "<!-- [if mso]>" ++ content ++ "<![endif]-->"


msoComment : String -> Node msg
msoComment val =
    MsoComments val
