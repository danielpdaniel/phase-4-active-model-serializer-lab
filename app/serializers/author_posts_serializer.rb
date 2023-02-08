class AuthorPostsSerializer < ActiveModel::Serializer
  attributes :title, :tags, :short_content

  def short_content
    short_content = "#{self.object.content[0..39]}..."
    return short_content
  end
end
