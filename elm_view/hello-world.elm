import Html exposing (..)
import Html.Events exposing (..)
import Random



main =
  Html.program
    { init = init
    , view = view
    , update = update
    , subscriptions = subscriptions
    }



-- MODEL


type alias Model =
  { message : String
  }


init : (Model, Cmd Msg)
init =
  ( Model "Hello World!"
  , Cmd.none)



-- UPDATE


type Msg
  = ChangeMessage String


update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    ChangeMessage (newMessage) ->
      (Model newMessage, Cmd.none)



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
  Sub.none



-- VIEW


--view : Model -> Html Msg
view model =
  div []
    [ h1 [] [ text (toString model.message) ]
    , button [ onClick (ChangeMessage "asdf") ] [ text "ChangeMessage" ]
    ]
