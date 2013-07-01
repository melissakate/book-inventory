require 'spec_helper'

describe "Products" do
  subject {page}

  describe "products page" do
    before {visit products_path}
      it { should have_selector('h1', text: "List of Products")} 
      it { should have_selector('title', text: "BookInventory")}
    end
  end
