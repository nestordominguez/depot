Product.delete_all
Product.create(:title => 'saco largo',
  :description => 
    %{<p>
        <em>saco tejido a mano con lana marron
      </p>},
  :image_url =>   'images.jpg',    
  :price => 42.95)
# . . .
Product.create(:title => 'otro saco',
  :description =>
    %{<p>
        tejido a mano
      </p>},
  :image_url => 'images_002.jpg',
  :price => 49.50)
# . . .

Product.create(:title => 'mas sacos',
  :description => 
    %{<p>
        <em>lindo saquito
      </p>},
  :image_url => 'images_003.jpg',
  :price => 43.75)