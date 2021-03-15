<?php
namespace App\clases;

class Existencia {
  // Properties
  public $codigo;
  public $nombre;
  public $wscode;
  public $existencia;
  public $comprometido;
  public $pedido;
  public $disponible;

  // Methods
  function set_codigo($codigo) {
    $this->codigo = $codigo;
  }
  function get_codigo() {
    return $this->codigo;
  }


  function set_nombre($nombre) {
    $this->nombre = $nombre;
  }
  function get_nombre() {
    return $this->nombre;
  }

  function set_wscode($wscode) {
    $this->wscode = $wscode;
  }
  function get_wscode() {
    return $this->wscode;
  }

  function set_existencia($existencia) {
    $this->existencia = $existencia;
  }
  function get_existencia() {
    return $this->existencia;
  }

  function set_comprometido($comprometido) {
    $this->comprometido = $comprometido;
  }
  function get_comprometido() {
    return $this->comprometido;
  }

  function set_pedido($pedido) {
    $this->pedido = $pedido;
  }
  function get_pedido() {
    return $this->pedido;
  }

  function set_disponible($disponible) {
    $this->disponible = $disponible;
  }
  function get_disponible() {
    return $this->disponible;
  }

}
?> 