ActiveAdmin.register Page do
    permit_params :body, :is_published, :menu_display, :order, :title, :section_id, :featured 
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



index do
    # column :id
    column :title, :sortable => :title
    column :section, :sortable => :section
    column :created_at, :sortable => :created_at
    column :order
    column :featured
    column "Published", :is_published
    column :menu_display
    actions
end

form do |f|
    f.inputs "Details" do
        f.input :title, :label => "Title"
        f.input :section, :label => "Section"
        f.input :body, :label => "Body"
        render "partials/editor"
        f.input :order, :label => "Order"
        f.input :featured, :label => "Featured"
        f.input :is_published, :label => "Published"
        f.input :menu_display, :label => "Display In Menu"
        f.actions
    end
end


end
