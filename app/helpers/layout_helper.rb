module LayoutHelper

  def bootstrap_version
    # Choose the Bootstrap version you would like to use from the CDN
    "3.3.6"
  end

  def active?(path)
    current_page?(path) ? 'active' : ''
  end

end