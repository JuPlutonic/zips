# frozen_string_literal: true

json.extract! zip, :id, :city, :state, :population, :created_at, :updated_at
json.url zip_url(zip, format: :json)
