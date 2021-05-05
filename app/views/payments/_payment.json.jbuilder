json.extract! payment, :id, :Payment_id, :Payment_Date, :Amount, :created_at, :updated_at
json.url payment_url(payment, format: :json)
