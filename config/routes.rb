# frozen_string_literal: true

Discourse::Application.routes.draw do
  match '/*path', to: redirect { |params, request| "http://othersite.com/#{params[:path]}" }, via: [:get, :post]
end
