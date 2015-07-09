module PostsHelper
  def posts_tree_for(posts)
    posts.map do |post, nested_posts|
      render(post) +
          (nested_posts.size > 0 ? content_tag(:div, posts_tree_for(nested_posts), class: "replies") : nil)
    end.join.html_safe
  end
end