require 'spec_helper'

describe "taxons" do
  # Regression test for #1192
  let!(:taxon) { Factory(:taxon) }

  it "doesn't show filtering form if there are no filters" do
    visit spree.nested_taxons_path(taxon.permalink)
    page!
  end
end
