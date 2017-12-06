module Helpers.ConvertToMin exposing (..)


convertToMin : Int -> String
convertToMin number =
    let
        minutes =
            number // 60

        seconds =
            number % 60
    in
    toString minutes ++ " minutes " ++ toString seconds ++ " seconds"
