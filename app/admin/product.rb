ActiveAdmin.register Product do
  index do
    selectable_column
    column :name
    column :title
    column :category
    column :price, sortable: :price do |product|
      number_to_currency product.price
    end
    column :description
    actions
  end
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

  permit_params :name, :price, :description, :title, :size_id, :category_id

end
