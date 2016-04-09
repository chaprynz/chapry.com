ActiveAdmin.register Book do

    permit_params :name, :content, :image

    index do
            selectable_column
            column :id
            column :name
            column :tag
            column :book
            actions
        end
    show do |t|
		attributes_table do
			row :name
			row :image do
				book.image? ? image_tag(book.image.url, height: '100') : content_tag(:span, "No photo yet")
			end
			
		end
	end

	form :html => { :enctype => "multipart/form-data" } do |f|
		f.inputs do
			f.input :name
			f.input :content, as: :wysihtml5, commands: [:bold, :italic, :underline, :ul, :ol, :outdent, :indent, :link, :image, :video, :source ], blocks: [:h1, :h2, :h3, :h4, :h5, :h6, :p]
			f.input :image, hint: f.book.image? ? image_tag(book.image.url, height: '100') : content_tag(:span, "Upload JPG/PNG/GIF image")
		end
		f.actions
	end

end
