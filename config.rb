# Require any additional compass plugins here.
dir = File.dirname(__FILE__) # path to this file
root_dir = File.expand_path('..', dir); #path to parent

# Set this to the root of your project when deployed:
http_path = "/"

css_dir = "css"
sass_dir = "_sass"
images_dir = "images"
javascripts_dir = "includes"

require File.join(dir, sass_dir, 'lib', 'custom-extensions.rb')

# You can select your preferred output style here (can be overridden via the command line):
# output_style = :expanded or :nested or :compact or :compressed
output_style    = :expanded

# To enable relative paths to assets via compass helper functions. Uncomment:
# relative_assets = true

# To disable debugging comments that display the original location of your selectors. Uncomment:
line_comments = true

# If you prefer the indented syntax, you might want to regenerate this
# project again passing --syntax sass, or you can uncomment this:
# preferred_syntax = :sass
# and then run:
# sass-convert -R --from scss --to sass sass scss && rm -rf sass && mv scss sass

# Printing stuff to the command line
# printf('commandline print')

asset_cache_buster :none

compilation_date = Time.now.getutc.to_i.to_s

# Make a copy of sprites with a name that has no uniqueness of the hash, optimize that png.
on_sprite_saved do |filename|
    if File.exists?(filename)
        FileUtils.cp filename, filename.gsub(%r{-s[a-z0-9]{10}\.png$}, '.png')
    end
end



# Replace in stylesheets generated references to sprites
# by their counterparts without the hash uniqueness.
on_stylesheet_saved do |filename|
    if File.exists?(filename)
        css = File.read filename
        File.open(filename, 'w+') do |f|

            # Re-write the CSS
            f << css.gsub(%r{-s[a-z0-9]{10}\.png}, '.png?' + compilation_date)

            # Delete the hashed sprite files as we don't need them.
            sprite_names = css.scan(/\(([""'])(.*-s[a-z0-9]{10}\.png)\1/)

            #puts "found sprites: " + sprite_names.length.to_s
            sprite_names.each { |sprite|
                sprite.each { |file|
                    filepath =  root_dir + file.to_s

                    if File.exists?(filepath)
                        FileUtils.rm filepath
                    end
                }
            }
        end
    end
end
