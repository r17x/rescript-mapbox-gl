module Map = Mapbox__Map
module LngLatLike = Mapbox__LngLatLike
type t
@module("mapbox-gl") @new external make: unit => t = "Marker"
@send external addTo: (t, Map.t) => t = "addTo"
@send external setLngLat: (t, LngLatLike.t) => t = "setLngLat"
