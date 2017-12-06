port module Subscriptions exposing (..)

import Model exposing (..)
import Time


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.batch
        [ if model.timerRunning then
            Time.every Time.second (always IncrementTimer)
          else
            Sub.none
        , audioUrl RecieveAudio
        ]


port recordStart : () -> Cmd msg


port recordStop : () -> Cmd msg


port audioUrl : (String -> msg) -> Sub msg
