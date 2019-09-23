require "application_system_test_case"

class AtendentesTest < ApplicationSystemTestCase
  setup do
    @atendente = atendentes(:one)
  end

  test "visiting the index" do
    visit atendentes_url
    assert_selector "h1", text: "Atendentes"
  end

  test "creating a Atendente" do
    visit atendentes_url
    click_on "New Atendente"

    fill_in "Email", with: @atendente.email
    fill_in "Nome", with: @atendente.nome
    fill_in "Senha", with: @atendente.senha
    click_on "Create Atendente"

    assert_text "Atendente was successfully created"
    click_on "Back"
  end

  test "updating a Atendente" do
    visit atendentes_url
    click_on "Edit", match: :first

    fill_in "Email", with: @atendente.email
    fill_in "Nome", with: @atendente.nome
    fill_in "Senha", with: @atendente.senha
    click_on "Update Atendente"

    assert_text "Atendente was successfully updated"
    click_on "Back"
  end

  test "destroying a Atendente" do
    visit atendentes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Atendente was successfully destroyed"
  end
end
