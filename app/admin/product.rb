ActiveAdmin.register Product do
  index do
    selectable_column
    column :name
    column :title
    column :category
    column :price_cents, sortable: :price_cents do |product|
      number_to_currency product.price
    end
    column :description
    column :note
    column :image
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

  permit_params :name, :price_cents, :description, :title, :size_id, :category_id, :note, :image

end
