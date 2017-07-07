function send_id(id) {
  var coordinates = id.split(', ')
  document.getElementById('x-axis').value = coordinates[0]
  document.getElementById('y-axis').value = coordinates[1]
  document.getElementById('grid-choice').submit()
}
