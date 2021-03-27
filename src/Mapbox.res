module Map = {
  type t
  type options
  type container
  external id: string => container = "%identity"
  external element: Dom.element => container = "%identity"
  @obj
  external makeOptions: (
    ~container: container=?,
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
  external makeWithOption: options => t = "Map"
}
