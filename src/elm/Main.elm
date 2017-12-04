module Main exposing (..)

-- My Elm Files

import Model exposing (..)
import Navigation
import Subscriptions exposing (..)
import Update exposing (..)
import View exposing (..)


main : Program Never Model Msg
main =
    Navigation.program UrlChange
        { init = always ( initModel, Cmd.none )
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
