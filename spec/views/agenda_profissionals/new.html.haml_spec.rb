require 'spec_helper'

describe "agenda_profissionals/new" do
  before(:each) do
    assign(:agenda_profissional, stub_model(AgendaProfissional,
      :dia => 1,
      :hora_fim => "MyString",
      :funcionario_id => 1
    ).as_new_record)
  end

  it "renders new agenda_profissional form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => agenda_profissionals_path, :method => "post" do
      assert_select "input#agenda_profissional_dia", :name => "agenda_profissional[dia]"
      assert_select "input#agenda_profissional_hora_fim", :name => "agenda_profissional[hora_fim]"
      assert_select "input#agenda_profissional_funcionario_id", :name => "agenda_profissional[funcionario_id]"
    end
  end
end
