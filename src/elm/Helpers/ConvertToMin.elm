module Helpers.ConvertToMin exposing (..)


convertToMin : Int -> String
convertToMin number =
    let
        minutes =
            number // 60

        seconds =
            number % 60

        formatMin =
            if minutes < 10 then
                "0" ++ toString minutes
            else
                toString minutes

        formatSec =
            if seconds < 10 then
                "0" ++ toString seconds
            else
                toString seconds
    in
    formatMin ++ ":" ++ formatSec
