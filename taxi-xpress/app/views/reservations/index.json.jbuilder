json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :reserved_at, :car_type, :status, :user_id, :origin, :destination 
  json.url reservation_url(reservation, format: :json)
end
