require "application_system_test_case"

class PedidoPrdoutosTest < ApplicationSystemTestCase
  setup do
    @pedido_prdouto = pedido_prdoutos(:one)
  end

  test "visiting the index" do
    visit pedido_prdoutos_url
    assert_selector "h1", text: "Pedido Prdoutos"
  end

  test "creating a Pedido prdouto" do
    visit pedido_prdoutos_url
    click_on "New Pedido Prdouto"

    fill_in "Pedido", with: @pedido_prdouto.pedido_id
    fill_in "Produto", with: @pedido_prdouto.produto_id
    click_on "Create Pedido prdouto"

    assert_text "Pedido prdouto was successfully created"
    click_on "Back"
  end

  test "updating a Pedido prdouto" do
    visit pedido_prdoutos_url
    click_on "Edit", match: :first

    fill_in "Pedido", with: @pedido_prdouto.pedido_id
    fill_in "Produto", with: @pedido_prdouto.produto_id
    click_on "Update Pedido prdouto"

    assert_text "Pedido prdouto was successfully updated"
    click_on "Back"
  end

  test "destroying a Pedido prdouto" do
    visit pedido_prdoutos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pedido prdouto was successfully destroyed"
  end
end
