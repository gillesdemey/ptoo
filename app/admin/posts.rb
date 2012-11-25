ActiveAdmin.register Post do

  form do |f|
    f.inputs "Details" do
      f.input :title
      f.input :admin_user
    end
    f.inputs "Content" do
      f.input :content
    end
    f.buttons
  end

end