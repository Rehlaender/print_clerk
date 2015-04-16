require 'spec_helper'

describe 'config:' do

  it 'has style default' do
    expect(OfficeClerk.config(:print_styles)).to include "invoice"
  end

  it 'has logo default' do
    expect(OfficeClerk.config(:invoice_logo_path)).not_to be nil
  end
end

