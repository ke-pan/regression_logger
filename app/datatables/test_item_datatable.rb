class TestItemDatatable < AjaxDatatablesRails::Base
  # uncomment the appropriate paginator module,
  # depending on gems available in your project.
  include AjaxDatatablesRails::Extensions::Kaminari
  # include AjaxDatatablesRails::Extensions::WillPaginate
  # include AjaxDatatablesRails::Extensions::SimplePaginator

  def sortable_columns
    # list columns inside the Array in string dot notation.
    # Example: 'users.email'
    @sortable_columns ||= ['test_items.vectorname', 'test_items.status', 'test_items.frame_number']
  end

  def searchable_columns
    # list columns inside the Array in string dot notation.
    # Example: 'users.email'
    @searchable_columns ||= ['test_items.vectorname', 'test_items.status']
  end

  private

  def data
    records.map do |record|
      [
        # comma separated list of the values for each cell of a table row
        # example: record.attribute,
        record.vectorname,
        record.status,
        record.frame_number
      ]
    end
  end

  def get_raw_records
    # regression = Regression.find params[:id]
    records = TestItem.where(regression_id: params[:id])
    records
    # require pry; binding.pry
  end

  # ==== Insert 'presenter'-like methods below if necessary
end
