module Dsl.Mso exposing
    ( msoComment
    , msoContent
    , msoSettings
    , msoTableBorderIssueFixBegin
    , msoTableBorderIssueFixEnd
    , pixelContent
    , preHeaderMSOIssueTrick
    , styleContent
    )

import Components.StyleHelpers as CS
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
</noscript>
"""


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
    }
</style>
 
"""


msoTableBorderIssueFixBegin : String
msoTableBorderIssueFixBegin =
    """
<!--[if mso]>
    <table width="600" align="center"
        style="border-spacing:0; border-collapse: collapse; color : #3d3d3d;"
        role="presentation">
    <tr>
    <td>
<![endif]--> 

"""


msoTableBorderIssueFixEnd : String
msoTableBorderIssueFixEnd =
    """
<!--[if mso]>
    </td>
    </tr>
    </table>
<![endif]-->

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



-- "font-size:0; color: #fafdfe; mso-line-height-rule:exactly; line-height: 0; display:none; max-width: 0; max-width: 0; opacity: 0; overflow: hidden;mso-hide:all;"


preHeaderMSOIssueTrick : String
preHeaderMSOIssueTrick =
    CS.new { name = "preHeaderMSOIssueTrick " }
        |> CS.withFontSize CS.None 0
        |> CS.withColor "#fafdfe"
        |> CS.withMsoLineHeightRule "exactly"
        |> CS.withLineHeight CS.None 0
        |> CS.withDisplay CS.D_None
        |> CS.withMaxWidth CS.None 0
        |> CS.withOpacity 0
        |> CS.withOverflow CS.Hidden
        |> CS.withMsoHide "all"
        |> CS.toString
