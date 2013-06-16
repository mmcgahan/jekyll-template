module Liquid
    class SidebarBlock < Liquid::Block
        # http://gistflow.com/posts/609-content_for-sidebar-in-jekyll
        alias :super_render :render

        def initialize(tag_name, identifier, tokens)
            super
        end

        def render(context)
            context.environments.first["page"]["sidebar"] = super_render(context)
            ''
        end
    end
end

Liquid::Template.register_tag('sidebar', Liquid::SidebarBlock)
