class FavoriteMailer < ApplicationMailer
  default from: "thomasjacobjr@gmail.com"

  def new_comment(user, post, comment)

    headers["Message-ID"] = "<comments/#{comment.id}@morning-coast-89898.herokuapp.com>"
    headers["In-Reply-To"] = "<post/#{post.id}@morning-coast-89898.herokuapp.com>"
    headers["References"] = "<post/#{post.id}@morning-coast-89898.herokuapp.com>"

    @user = user
    @post = post
    @comment = comment

    mail(to: user.email, subject: "New comment on #{post.title}")
  end
end
