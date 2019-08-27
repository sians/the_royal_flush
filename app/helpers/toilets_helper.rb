module ToiletsHelper
  def photo_or_placeholder(toilet)
    if toilet.photo.present?
      cl_image_path toilet.photo
    else
      'https://www.theflavorbender.com/wp-content/uploads/2017/07/Magical-Color-Changing-Cocktails-The-Flavor-Bender-8.jpg'
    end
  end

end
