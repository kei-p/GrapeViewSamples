json.user do
  json.(@user, :name, :age)
  json.skilss @user.skills, partial: 'jbuilder/skill', as: :skill
end
