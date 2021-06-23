module UsersHelper
  def profile_picture(user, width = 100)
    image_path = user.image.present? ? user.image.url : 'default_avatar.jpg'
    image_tag image_path, width: width, class: "img-circle"
  end

  def can_edit_profile?(profile_id)
    user_signed_in? && current_user.id == profile_id
  end

  def trim_url(url)
    return url.sub(%r{^(https|http)?:(//|\\\\)(www\.)?}i, '') if url.start_with?('http')
    url
  end
end
