ActiveAdmin.register Post do

    permit_params :title, :note, :tag, :category_id, :book_id
    
    sortable tree: false,
						sorting_attribute: :tag

	index :as => :sortable do
		label :title

		actions
	end

    index do
        selectable_column
        column :id
        column :title
        column :tag
        column :category
        column :note
        
        actions
    end
    
    form do |f|
		f.inputs do
			input :category, label: "category"
			input :title, label: "Title"
			input :note, label: "Note",  as: :wysihtml5, commands: [:bold, :italic, :underline, :ul, :ol, :outdent, :indent, :link, :image, :video, :source ], blocks: [:h1, :h2, :h3, :h4, :h5, :h6, :p]
			
			
		    
		end

		actions
	end


end
