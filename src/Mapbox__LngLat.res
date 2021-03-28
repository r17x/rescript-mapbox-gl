module LngLatLike = Mapbox__LngLatLike

type t = {
  lng: float,
  lat: float,
}

@module("mapbox-gl") @new external make: (float, float) => t = "LngLat"
// static method
@module("mapbox-gl") @scope("LngLat") external convert: LngLatLike.t => t = "convert"
// instance method
@send external distanceTo: (t, t) => float = "distanceTo"
@send external wrap: t => t = "wrap"
// need LngLatBonds
// @send external toBounds: (t, float) => "toBounds"
include Mapbox__Common.Impl({ type nonrec t = t})
