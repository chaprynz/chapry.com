ActiveAdmin.register Bookpost do

    permit_params :title, :note, :tag, :header, :book_id
 
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
            column :book
            column :header
            actions
        end
        
        form do |f|
    		f.inputs do
    			input :book, label: "book"
    			input :title, label: "Title"
    			input :note, label: "Note",  as: :wysihtml5, commands: [:bold, :italic, :underline, :ul, :ol, :outdent, :indent, :link, :image, :video, :source ], blocks: [:h1, :h2, :h3, :h4, :h5, :h6, :p]
    			input :header, label: "header"
    			
    		    
    		end
    
    		actions
    	end
end
