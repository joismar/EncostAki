require 'rails_helper'

RSpec.describe "support_requests/edit", type: :view do
  before(:each) do
    @support_request = assign(:support_request, SupportRequest.create!(
      :ano => 1,
      :mes => "Março",
      :processo_numero => "13244584644",
      :solicitacao_descricao => "Problemas no barranco.",
      :solicitacao_regional => "Recife",
      :solicitacao_bairro => "Ouro Preto",
      :solicitacao_localidade => "Ouro Preto",
      :solicitacao_endereco => "Rua Ouriço do mar",
      :solicitacao_roteiro => "teste",
      :rpa_codigo => 1,
      :rpa_nome => "Teste do teste",
      :solicitacao_microrregiao => "teste",
      :solicitacao_plantao => "MyString",
      :solicitacao_origem_chamado => "MyString",
      :latitude => 1.5,
      :longitude => 1.5,
      :solicitacao_vitimas => "MyString",
      :solicitacao_vitimas_fatais => "MyString",
      :processo_tipo => "MyString",
      :processo_origem => "MyString",
      :processo_localizacao => "MyString",
      :processo_status => "MyString"
    ))
  end

  it "renders the edit support_request form" do
    render

    assert_select "form[action=?][method=?]", support_request_path(@support_request), "post" do

      assert_select "input[name=?]", "support_request[ano]"

      assert_select "input[name=?]", "support_request[mes]"

      assert_select "input[name=?]", "support_request[processo_numero]"

      assert_select "input[name=?]", "support_request[solicitacao_descricao]"

      assert_select "input[name=?]", "support_request[solicitacao_regional]"

      assert_select "input[name=?]", "support_request[solicitacao_bairro]"

      assert_select "input[name=?]", "support_request[solicitacao_localidade]"

      assert_select "input[name=?]", "support_request[solicitacao_endereco]"

      assert_select "input[name=?]", "support_request[solicitacao_roteiro]"

      assert_select "input[name=?]", "support_request[rpa_codigo]"

      assert_select "input[name=?]", "support_request[rpa_nome]"

      assert_select "input[name=?]", "support_request[solicitacao_microrregiao]"

      assert_select "input[name=?]", "support_request[solicitacao_plantao]"

      assert_select "input[name=?]", "support_request[solicitacao_origem_chamado]"

      assert_select "input[name=?]", "support_request[latitude]"

      assert_select "input[name=?]", "support_request[longitude]"

      assert_select "input[name=?]", "support_request[solicitacao_vitimas]"

      assert_select "input[name=?]", "support_request[solicitacao_vitimas_fatais]"

      assert_select "input[name=?]", "support_request[processo_tipo]"

      assert_select "input[name=?]", "support_request[processo_origem]"

      assert_select "input[name=?]", "support_request[processo_localizacao]"

      assert_select "input[name=?]", "support_request[processo_status]"
    end
  end
end
