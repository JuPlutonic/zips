# frozen_string_literal: true

module ZipsHelper
  def to_zip(value)
    # change value to a Zip if not already a Zip
    value.is_a?(Zip) ? value : Zip.new(value)
  end
end
