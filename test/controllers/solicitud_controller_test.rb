require 'test_helper'

class SolicitudControllerTest < ActionDispatch::IntegrationTest
  setup do
    @solicitud = solicitud(:one)
  end

  test "should get index" do
    get solicitud_index_url
    assert_response :success
  end

  test "should get new" do
    get new_solicitud_url
    assert_response :success
  end

  test "should create solicitud" do
    assert_difference('Solicitud.count') do
      post solicitud_index_url, params: { solicitud: { descripcion: @solicitud.descripcion, fecha_recoleccion: @solicitud.fecha_recoleccion, titulo: @solicitud.titulo, usuario_id: @solicitud.usuario_id } }
    end

    assert_redirected_to solicitud_url(Solicitud.last)
  end

  test "should show solicitud" do
    get solicitud_url(@solicitud)
    assert_response :success
  end

  test "should get edit" do
    get edit_solicitud_url(@solicitud)
    assert_response :success
  end

  test "should update solicitud" do
    patch solicitud_url(@solicitud), params: { solicitud: { descripcion: @solicitud.descripcion, fecha_recoleccion: @solicitud.fecha_recoleccion, titulo: @solicitud.titulo, usuario_id: @solicitud.usuario_id } }
    assert_redirected_to solicitud_url(@solicitud)
  end

  test "should destroy solicitud" do
    assert_difference('Solicitud.count', -1) do
      delete solicitud_url(@solicitud)
    end

    assert_redirected_to solicitud_index_url
  end
end
