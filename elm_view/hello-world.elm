import Html exposing (..)
import Html.Events exposing (..)
import Html.Attributes exposing (..)
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
  { username : String
  , password : String
  --, usernameErrors : String
  --, passwordErrors : String
  }


init : (Model, Cmd Msg)
init =
  ( Model "" ""
  , Cmd.none)



-- UPDATE


type Msg
  = Login
  | ChangeUsername String
  | ChangePassword String


update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    Login ->
      (model, Cmd.none)

    ChangeUsername newUsername ->
      ( { model | username = newUsername }, Cmd.none )

    ChangePassword newPassword ->
      ( { model | password = newPassword }, Cmd.none )





-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
  Sub.none



-- VIEW


--view : Model -> Html Msg
--view model =
--  div []
--    [ h1 [] [ text (toString model.message) ]
--    , button [ onClick (Login "asdf" "asdf") ] [ text "Login Button" ]
--    ]

view : Model -> Html Msg
view model = 
  div []
  [ h1 [] [text "Login Form"]
  , Html.input [ type_ "text", name "username", onInput ChangeUsername] []
  , div [] []
  --, div [] [ text model.usernameErrors ]
  , Html.input [ type_ "password", name "password", onInput ChangePassword] []
  , div [] []
  --, div [] [ text model.passwordErrors ]
  , div [onClick Login] [text "Push me to Login!"]
  ]
