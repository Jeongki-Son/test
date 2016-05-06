ActiveAdmin.register Reply do

    index do
        selectable_column
        id_column
        column :post
        column :content
        column :created_at
        column :updated_at
        actions
    end
    
    permit_params do
    params = [:post, :content, :created_at, :updated_at]
    end


end
