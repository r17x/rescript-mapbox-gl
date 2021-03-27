open Mapbox

let map = Map.make()

let mapWithOpt = Map.makeOptions(~container=Map.id("app-hash-in-dom"), ())->Map.makeWithOption

Js.log2(map, mapWithOpt)
