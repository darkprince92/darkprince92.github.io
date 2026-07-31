# Treat missing dates as "latest" when sorting/grouping publications:
# an entry with no month sorts as month 13 (newest within its year), and an
# entry with no year sorts/groups as year 9999 (top of the page, shown as
# "To appear"). Stock jekyll-scholar does the opposite — missing fields
# compare as empty and sink to the bottom under descending order.

require "jekyll/scholar"
require "bibtex"

module SortMissingDatesAsLatest
  MISSING_YEAR_SENTINEL = "9999".freeze
  MISSING_YEAR_LABEL = "To appear".freeze

  def resolve_sort_value(entry, key)
    case key.to_s
    when "year"
      BibTeX::Value.new(entry[:year].to_s[/\d{4}/] || MISSING_YEAR_SENTINEL)
    when "month_numeric"
      month = entry.respond_to?(:month_numeric) ? entry.month_numeric : nil
      BibTeX::Value.new(format("%02d", month || 13))
    else
      super
    end
  end

  def group_value(key, item)
    value = super
    return MISSING_YEAR_SENTINEL if %w[year date].include?(key.to_s) && value.to_s.strip.empty?

    value
  end

  def group_name(key, value)
    return MISSING_YEAR_LABEL if %w[year date].include?(key.to_s) && value.to_s == MISSING_YEAR_SENTINEL

    super
  end
end

Jekyll::Scholar::Utilities.prepend(SortMissingDatesAsLatest)
