module Model exposing (..)

import Navigation


-- Model


initModel : Model
initModel =
    { route = HomeRoute
    , timerLength = 0
    , previousFeedback = []
    , feedback = Feedback "" "" 0
    , isMenuOpen = False
    , timerRunning = False
    }


type Route
    = HomeRoute
    | StartVisitRoute
    | StopVisitRoute
    | AudioMessageRoute
    | TextMessageRoute
    | PreviousVisitsRoute
    | NotFoundRoute


type alias Feedback =
    { text : String
    , audio : String
    , lengthOfVisit : Int
    }


type alias Model =
    { route : Route
    , timerLength : Int
    , previousFeedback : List Feedback
    , feedback : Feedback
    , isMenuOpen : Bool
    , timerRunning : Bool
    }



-- Update


type Msg
    = UrlChange Navigation.Location
    | ToggleMenu
    | IncrementTimer
    | StartVisit
    | StopVisit
    | RecieveAudio String
    | StartAudio
