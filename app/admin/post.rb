ActiveAdmin.register Post do

    index do
        selectable_column
        id_column
        column :title
        column :content
        actions
    end
    
    permit_params do
    params = [:title, :content]
    end

end
