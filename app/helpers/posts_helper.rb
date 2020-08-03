module PostsHelper
  
    def create_post_btn
      out = ''
      if member_signed_in?
        out << link_to('Create Post', new_post_path, class: 'float-right mr-2 btn btn-outline-secondary')
      end
      out.html_safe
    end

    def show_author_name(post)
        out = ''
        if member_signed_in?
            out << "<small><em>by #{post.member.name} </em></small>"
        end
        out.html_safe
    end
end
