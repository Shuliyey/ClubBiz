json.array!(@events) do |event|
  json.extract! event, :id, :name, :description, :when, :maxTickets, :ticketPrice, :memberDiscount
  json.url event_url(event, format: :json)
end
