module Components.ResetPassword exposing (heading, topBannerLockImage, topBannerLogo, topBorder)

import Components.StyleHelpers as CS
import Dsl.Attributes as A
import Dsl.Helpers exposing (nonDisplayCharSet)
import Dsl.Mso exposing (preHeaderMSOIssueTrick)
import Dsl.Tags exposing (a, div, h1, h2, img, p, td, text, tr)
import Dsl.Types exposing (Node)


topBorder : Node msg
topBorder =
    tr []
        [ td
            [ A.height "8"
            , A.style "background-color: #d5f3f4"
            ]
            [ div [ A.style preHeaderMSOIssueTrick ]
                [ text (String.repeat 2 nonDisplayCharSet)
                ]
            ]
        ]


topBannerLogo : Node msg
topBannerLogo =
    tr []
        [ td
            [ A.style topBannerLogoStyle
            ]
            [ a
                [ A.href "https://example.com"
                ]
                [ img
                    [ A.src topBannerLogoSrc
                    , A.alt "Logo"
                    , A.width "190" -- Required for the images to showup without any scaling issues in outlook
                    ]
                    []
                ]
            ]
        ]


topBannerLogoStyle : String
topBannerLogoStyle =
    CS.new { name = "topBannerLogoStyle" }
        |> CS.withPaddingStr "14px 0 10px 0"
        |> CS.withTextAlign CS.Center
        |> CS.toString


topBannerLogoSrc : String
topBannerLogoSrc =
    "\n   https://mcusercontent.com/474f5b70c3b324277323d4c42/images/8c6d35c2-2b66-5af9-d40f-1eec9d2dcaf3.png"


topBannerLogoCss : String
topBannerLogoCss =
    CS.new { name = "topBannerLogoCss " }
        |> CS.withWidth CS.Pixel 190
        |> CS.toString


topBannerLockImage : Node msg
topBannerLockImage =
    tr []
        [ td
            [ A.style topBannerImageStyleCss
            ]
            [ a
                [ A.href "https://example.com/1"
                , A.target "_blank"
                ]
                [ img
                    [ A.src topBannerLockImageSrc
                    , A.alt "Password Reset Banner"
                    , A.width "600" -- Required for the images to showup without any scaling issues in outlook
                    , A.style topBannerImageStyleImageCss
                    ]
                    []
                ]
            ]
        ]


topBannerImageStyleCss : String
topBannerImageStyleCss =
    CS.new { name = "topBannerImageStyleCss" }
        |> CS.withPaddingStr "0 0 20px 0"
        |> CS.toString


topBannerLockImageSrc : String
topBannerLockImageSrc =
    "https://mcusercontent.com/474f5b70c3b324277323d4c42/images/80657041-e007-7e23-37ed-2e10ac4f5cac.jpg"


topBannerImageStyleImageCss : String
topBannerImageStyleImageCss =
    CS.new { name = "topBannerImageStyleImageCss" }
        |> CS.withWidth CS.Percent 100
        |> CS.withBorder CS.None 0
        |> CS.toString


heading : Node msg
heading =
    tr []
        [ td [ A.style headingStyleCss ]
            [ h1 [ A.style headingH1StyleCss ] [ text "Forgot your Password?" ]
            , h2 [ A.style headingH2StyleCss ] [ text "No Problem!" ]
            , p [ A.style headingPstyleCss ] [ text ("Hi" ++ "<placeholder_name") ]
            , p [ A.style headingPstyleCss ] [ text "There was a request to change your password!" ]
            , p [ A.style headingPstyleCss ] [ text "If you did not make this request, just ignore this email. \n            Otherwise, please click the button below to change your password" ]
            ]
        ]


headingStyleCss : String
headingStyleCss =
    CS.new { name = "headingStyleCss" }
        |> CS.withPaddingStr "5px 25px 5 px 25px"
        |> CS.withTextAlign CS.Center
        |> CS.toString


headingH1StyleCss : String
headingH1StyleCss =
    CS.new { name = "headingH1StyleCss" }
        |> CS.withFontSize CS.Pixel 24
        |> CS.toString


headingH2StyleCss : String
headingH2StyleCss =
    CS.new { name = "headingH1StyleCss" }
        |> CS.withFontSize CS.Pixel 20
        |> CS.toString


headingPstyleCss : String
headingPstyleCss =
    CS.new { name = "headingPstyleCss" }
        |> CS.withFontSize CS.Pixel 16
        |> CS.withLineHeight CS.Pixel 20
        |> CS.toString


resetButton : Node msg
resetButton =
    tr []
        [ td [ A.style resetButtonCss ]
            [ a
                [ A.href "https://example.com/3"
                , A.target "_blank"
                ]
                [ img
                    [ A.src resetButtonSrc
                    , A.alt "Reset your Password"
                    , A.title "Reset your password"
                    , A.width "160"
                    , A.style resetButtonImageCss
                    ]
                    []
                ]
            ]
        ]


resetButtonSrc : String
resetButtonSrc =
    "https://mcusercontent.com/474f5b70c3b324277323d4c42/images/0f63e7e6-d834-2e03-a0f8-17b043f7763e.png"


resetButtonCss : String
resetButtonCss =
    CS.new { name = "resetButtonCss" }
        |> CS.withPaddingStr "10px 0 30px 0"
        |> CS.withTextAlign CS.Center
        |> CS.toString


resetButtonImageCss : String
resetButtonImageCss =
    CS.new { name = "resetButtonCss" }
        |> CS.withBorder CS.None 0
        |> CS.toString



{- <!-- Image Links:
   https://i.ibb.co/1fN4jNV/w3newbie.png
   https://mcusercontent.com/474f5b70c3b324277323d4c42/images/8c6d35c2-2b66-5af9-d40f-1eec9d2dcaf3.png
   https://raw.githubusercontent.com/w3newbie/html-email-mastery-images/main/basic-template/w3newbie.png

   https://i.ibb.co/djwMPKK/lock-banner.jpg
   https://mcusercontent.com/474f5b70c3b324277323d4c42/images/80657041-e007-7e23-37ed-2e10ac4f5cac.jpg
   https://raw.githubusercontent.com/w3newbie/html-email-mastery-images/main/basic-template/lock-banner.jpg

   https://i.ibb.co/84RF9Vc/button.png
   https://mcusercontent.com/474f5b70c3b324277323d4c42/images/0f63e7e6-d834-2e03-a0f8-17b043f7763e.png
   https://raw.githubusercontent.com/w3newbie/html-email-mastery-images/main/basic-template/button.png
   -->
-}
