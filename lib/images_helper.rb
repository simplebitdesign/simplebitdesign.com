# Acts as a thin wrapper for image_tag and generates an srcset attribute for regular image tags
# for usage with responsive images polyfills like picturefill.js, supports asset pipeline path helpers.
#
# image_set_tag 'pic_1980.jpg', { 'pic_640.jpg' => '640w', 'pic_1024.jpg' => '1024w', 'pic_1980.jpg' => '1980w' }, sizes: '100vw', class: 'my-image'
# 
# => <img src="//ants_1980.jpg" srcset="//pic_640.jpg 640w, //pic_1024.jpg 1024w, //pic_1980.jpg 1980w" sizes="100vw" class="my-image">
#
def image_set_tag(source, srcset = {}, options = {})
  srcset = srcset.map { |src, size| "#{image_path(src)} #{size}" }.join(', ')
  image_tag(source, options.merge(srcset: srcset))
end
