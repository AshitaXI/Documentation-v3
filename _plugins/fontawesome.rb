##
# The MIT License (MIT)
# 
# Copyright (c) 2014 Ryan Morrissey
# Copyright (c) 2018 atom0s
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.
# 
# 
# Font Awesome Icons Liquid Tag
# Documentation can be found at http://fontawesome.io/
#
# Example:
#    {% icon fa fa-camera-retro %}
#    {% icon fa fa-camera-retro fa-lg %}
#    {% icon fa fa-spinner fa-spin %}
#    {% icon fa fa-shield fa-rotate-90 %}
#    {% icon fab fa-discord %}

module Jekyll
    class FontAwesomeTag < Liquid::Tag
        def render(context)
            if tag_contents = determine_arguments(@markup.strip)
                icon_class, icon_name, icon_extra = tag_contents[0], tag_contents[1], tag_contents[2]
                icon_tag(icon_class, icon_name, icon_extra)
            else
                raise ArgumentError.new <<-eos
Syntax error in tag 'faicon' while parsing the following markup:

#{@markup}

eos
            end
        end

        private

        def determine_arguments(input)
            matched = input.match(/\A(\S+) (\S+) ?(\S+)?\Z/)
            [matched[1].to_s.strip, matched[2].to_s.strip, matched[3].to_s.strip] if matched && matched.length >= 3
        end

        def icon_tag(icon_class, icon_name, icon_extra = nil)
            if icon_extra.empty?
                "<i class=\"#{icon_class} #{icon_name}\"></i>"
            else
                "<i class=\"#{icon_class} #{icon_name} #{icon_extra}\"></i>"
            end
        end
    end
end

Liquid::Template.register_tag('icon', Jekyll::FontAwesomeTag)