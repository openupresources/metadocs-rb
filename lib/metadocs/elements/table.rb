# frozen_string_literal: true

require_relative 'element'

module Metadocs
  module Elements
    class Table < Elements::Element
      has_children

      alias_attr :children, :rows

      def initialize(rows: [])
        super()
        self.rows = rows
      end

      def max_column_count
        self.rows.map { |row| row.cells.count }.max
      end
    end
  end
end
