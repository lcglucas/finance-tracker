# frozen_string_literal: true

class ContainerComponent < ViewComponent::Base
  def initialize(header:)
    @header = header
  end
end
