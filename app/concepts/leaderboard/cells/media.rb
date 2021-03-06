class Leaderboard::Cell::Media < Leaderboard::Cell

  def show
    render :media
  end

  def leaderboard_row
    model
  end

  def size
    options[:size]
  end

  def dimensions
    if size == :thumb
      return "100x75"
    end
    if size == :large
      return "800x600"
    end
  end

  def content_type
    return nil if leaderboard_row.media_content_type.nil?

    content_type = leaderboard_row.media_content_type.split('/').first
    content_type = nil if ['video','image'].exclude?(content_type)
    return content_type
  end

  def media_asset
    case content_type
    when nil
      #return "<em></em>".html_safe
      return image_tag(default_image_url, size: dimensions)
    when 'video'
      return video
    when 'image'
      return image
    end
  end

  def image
    if expiring_url.present?
      return image_tag(expiring_url)
    else
      return image_tag(default_image_url)
    end
  end

  def video
    if expiring_url.present?
      return video_tag(expiring_url, size: dimensions)
    else
      if size == :large
        return video_tag(default_image_url, autoplay: false)
      else
        return video_tag(default_image_url, controls: true, autoplay: true, loop: true)
      end
    end
  end

  def expiring_url
    url = S3Service.new(leaderboard_row.media_thumbnail).expiring_url
  end

  def audio
    # TODO requirements to be defined
  end

  def default_image_url
    image_path 'users/avatar-default.png'
  end

end
