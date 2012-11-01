# Require any additional compass plugins here.
project_type = :rails

require 'sassy-math'
require 'modular-scale'
require "zurb-foundation"
require 'bootstrap-sass'

if environment != :production
    sass_options = {:debug_info => true}
end