ActiveAdmin.register Survey do
  permit_params :name, :version, :public_to_all_users, :description, :definition
  menu priority: 7

  index do
    selectable_column
    id_column
    column :name
    column :version
    column :public_to_all_users
    column :description
    column :studies do |q|
      q.studies.all.map {|a| a.name.inspect}.join(', ').gsub /"/, ''
    end
   
    actions
  end

  filter :name
  filter :version


  show do 
     attributes_table do 
      row :id 
      row :version
      row :description
      row :definition
      row :created_at 
      row :updated_at
      bool_row :public_to_all_users

    end
    active_admin_comments
  end 

  form do |f|
    f.inputs "Survey Details" do
      f.input :name
      f.input :version 
      f.input :description
      f.input :public_to_all_users, as: :boolean
      f.input :definition, as: :text, validates: true, size: nil
    end
  f.actions
  end
end 