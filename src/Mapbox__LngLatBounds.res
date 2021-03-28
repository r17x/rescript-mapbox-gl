module LngLat = Mapbox__LngLat;
module LngLatLike= Mapbox__LngLatLike;
module LngLatBoundsLike = Mapbox__LngLatBoundsLike
type t = {
  _ne: LngLat.t,
  _sw: LngLat.t,
}
// note : official mapbox-gl-js use LngLatLike for make LngLatBounds but for here
// we use LngLat.t and if you want use LngLatLike.t so you need use LngLatLike.t->LngLat.convert
@module("mapbox-gl") @new external make: (LngLat.t, LngLat.t) => t = "LngLatBonds"
// static method
@module("mapbox-gl") @scope("LngLatBounds")
external convert: LngLatBoundsLike.t => t = "convert"
// instance method
@send external contains: (t, LngLatLike.t) => bool = "contains"
// TODO {extends(obj)}
@send external getCenter: t => LngLat.t = "getCenter"
@send external getEast: t => float = "getEast"
@send external getNorth: t => float = "getNorth"
@send external getNorthEast: t => float = "getNorthEast"
@send external getNorthWest: t => float = "getNorthWest"
@send external getSouth: t => float = "getSouth"
@send external getSouthEast: t => float = "getSouthEast"
@send external getSouthWest: t => float = "getSouthWest"
@send external getWest: t => float = "getWest"
@send external isEmpty: t => bool = "isEmpty"
@send external setNorthEast: (t, LngLatLike.t) => t = "setNorthEast"
@send external setSouthWest: (t, LngLatLike.t) => t = "setSouthWest"
include Mapbox__Common.Impl({ type nonrec t = t})
