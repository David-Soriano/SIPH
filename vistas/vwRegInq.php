<h1 class="text-center">Registro de Inquilinos</h1>
<form>
  <div class="mb-3">
    <label for="name" class="form-label">Nombre</label>
    <input type="text" class="form-control" id="name" required>
  </div>
  <div class="mb-3">
    <label for="email" class="form-label">Email</label>
    <input type="email" class="form-control" id="email" required>
  </div>
  <div class="mb-3">
    <label for="phone" class="form-label">Teléfono</label>
    <input type="tel" class="form-control" id="phone" required>
  </div>
  <div class="mb-3">
    <label for="address" class="form-label">Dirección</label>
    <textarea class="form-control" id="address" rows="3" required></textarea>
  </div>
  <div class="mb-3 form-check">
    <input type="checkbox" class="form-check-input" id="terms" required>
    <label class="form-check-label" for="terms">Acepto los términos y condiciones</label>
  </div>
  <button type="submit" class="btn btn-primary">Registrar</button>
</form>