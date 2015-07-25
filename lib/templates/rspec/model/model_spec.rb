require "spec_helper"

<% module_namespacing do -%>

describe <%= class_name %> do

  # ------------------------------------------------------------------------------
  #
  # Unit Tests
  #
  # ------------------------------------------------------------------------------

  describe "unit tests", :unit do

  end # unit


  # ------------------------------------------------------------------------------
  #
  # Integration Tests
  #
  # ------------------------------------------------------------------------------

  describe "integration tests", :integration do

  end # integration

end

<% end -%>
