class Message
  extend ActiveModel::Naming
  include ActiveModel::Conversion

  attr_accessor :to, :content

  def initialize(params = {})
    self.to = params[:to] if params[:to].present?
    self.content = params[:content] if params[:content].present?
  end

  def persisted?
    false
  end

end
