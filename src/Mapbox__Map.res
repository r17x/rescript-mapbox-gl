module LngLatLike = Mapbox__LngLatLike
module Control = Mapbox__Control
type t
type options
type container
external id: string => container = "%identity"
external element: Dom.element => container = "%identity"
@obj
external makeOptions: (
  ~container: container=?,
  ~center: LngLatLike.t=?,
  ~zoom: float=?,
  ~minZoom: float=?,
  ~maxZoom: float=?,
  ~pitch: float=?,
  ~minPitch: float=?,
  ~maxPitch: float=?,
  ~style: string=?,
  ~accessToken: string=?,
  ~collectResourceTiming: bool=?,
  ~fadeDuration: float=?,
  ~crossSourceCollisions: bool=?,
  ~localFontFamily: string=?,
  // default: 'sans-serif'
  ~localIdeographFamily: string=?,
  ~maxTileCacheSize: float=?,
  ~renderWorldCopies: bool=?,
  ~optimizeForTerrain: bool=?,
  // TODO {LngLatBonds}
  // ~bounds =
  // ~fitBounds
  ~testMode: bool=?,
  unit,
) => options = ""
@module("mapbox-gl") @new external make: unit => t = "Map"
@module("mapbox-gl") @new external makeWithOptions: options => t = "Map"
// instance member
@send external remove: (t, unit) => unit = "remove"
@send external addControl: (t, Control.t) => t = "addControl"
@send external addControlWithOptions: (t, Control.t, Control.position) => t = "addControl"
