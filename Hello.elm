module Hello exposing (..)

import Html exposing (text, div, node)
import Html.Attributes exposing (class, rel, href)

css path =
  node "link" [ rel "stylesheet", href path ] []

main = 
    div [] [
        css "styles.css",
        div [class "hello"] [
            div [] [text "My timer"],
            div [] [text "25:00"],
            div [class "button"] [text "Start!"]
        ]
    ]
