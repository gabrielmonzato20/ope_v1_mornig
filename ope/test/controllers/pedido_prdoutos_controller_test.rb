require 'test_helper'

class PedidoPrdoutosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pedido_prdouto = pedido_prdoutos(:one)
  end

  test "should get index" do
    get pedido_prdoutos_url
    assert_response :success
  end

  test "should get new" do
    get new_pedido_prdouto_url
    assert_response :success
  end

  test "should create pedido_prdouto" do
    assert_difference('PedidoPrdouto.count') do
      post pedido_prdoutos_url, params: { pedido_prdouto: { pedido_id: @pedido_prdouto.pedido_id, produto_id: @pedido_prdouto.produto_id } }
    end

    assert_redirected_to pedido_prdouto_url(PedidoPrdouto.last)
  end

  test "should show pedido_prdouto" do
    get pedido_prdouto_url(@pedido_prdouto)
    assert_response :success
  end

  test "should get edit" do
    get edit_pedido_prdouto_url(@pedido_prdouto)
    assert_response :success
  end

  test "should update pedido_prdouto" do
    patch pedido_prdouto_url(@pedido_prdouto), params: { pedido_prdouto: { pedido_id: @pedido_prdouto.pedido_id, produto_id: @pedido_prdouto.produto_id } }
    assert_redirected_to pedido_prdouto_url(@pedido_prdouto)
  end

  test "should destroy pedido_prdouto" do
    assert_difference('PedidoPrdouto.count', -1) do
      delete pedido_prdouto_url(@pedido_prdouto)
    end

    assert_redirected_to pedido_prdoutos_url
  end
end
