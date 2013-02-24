module ApplicationHelper
  def title(*parts)
    unless parts.empty?
      content_for :title do
        (parts << "Ticketee").join(" - ")
      end
    end
  end

  def admins_only(&block)
    yield if current_user.try(:admin?)
  		#appending results directly to output directly compiled by erb
		#block.call will yield block called by admins_only block
		#duplicate because of concat; change to yield

  end

  def authorized?(permission, thing, &block)
    block.call if can?(permission.to_sym, thing) || current_user.try(:admin?)
  end
end
