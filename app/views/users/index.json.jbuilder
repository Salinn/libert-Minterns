json.array!(@users) do |user|
  json.extract! user, :id, :first_name, :last_name, :email, :phone_number, :profile_picture, :college_id, :major_id, :department_id
  json.url user_url(user, format: :json)
end
