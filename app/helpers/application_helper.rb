module ApplicationHelper

  def toastr_flash
    flash.each_with_object([]) do |(type, message), flash_messages|
      type = 'success' if type == 'notice'
      type = 'error' if type == 'alert'
      text = "<script>toastr.#{type}('#{message}', '', { closeButton: true, progressBar: true })</script>"
      flash_messages << text.html_safe if message
    end.join("\n").html_safe
  end

  def profile_picture account, width
    image_path = account.avatar.present? ? account.avatar.url : 'profile.jpg'
    image_tag(image_path, width: width, height: width, class: 'rounded')
  end

end
