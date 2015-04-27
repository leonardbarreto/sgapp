require 'spec_helper'

describe "agenda_profissionals/edit" do
  before(:each) do
    @agenda_profissional = assign(:agenda_profissional, stub_model(AgendaProfissional,
      :dia => 1,
      :hora_fim => "MyString",
      :funcionario_id => 1
    ))
  end

  it "renders the edit agenda_profissional form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => agenda_profissionals_path(@agenda_profissional), :method => "post" do
      assert_select "input#agenda_profissional_dia", :name => "agenda_profissional[dia]"
      assert_select "input#agenda_profissional_hora_fim", :name => "agenda_profissional[hora_fim]"
      assert_select "input#agenda_profissional_funcionario_id", :name => "agenda_profissional[funcionario_id]"
    end
  end
end
