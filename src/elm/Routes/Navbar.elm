module Routes.Navbar exposing (..)

import Html.Events exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Model exposing (..)


navbar : Model -> Html Msg
navbar model =
    div [ class <| "dn topnav overflow-hidden" ]
        [ ul [ class "dib ma0 bg-green w-100 pa2 topnav" ]
            (navbarContent ++ (navbarMenu model))
        ]


navbarLink : ( String, String ) -> Html Msg
navbarLink ( linkStr, name ) =
    li [ class "nav-link dib ma3" ]
        [ a
            [ class " link dim white b"
            , href ("/#" ++ linkStr)
            ]
            [ text name ]
        ]


navbarMenu : Model -> List (Html Msg)
navbarMenu model =
    [ li [ class "nav-menu dib ma3" ]
        [ a
            [ class <| " link dim white b icon" ++ responsiveMenu model
            , onClick ToggleMenu
            ]
            [ text "menu" ]
        ]
    ]


navbarContent : List (Html Msg)
navbarContent =
    List.map navbarLink [ ( "home", "Home" ), ( "previousVisitsPage", "Previous visits" ) ]


responsiveMenu : Model -> String
responsiveMenu model =
    if model.isMenuOpen then
        " responsive"
    else
        " topnav"
