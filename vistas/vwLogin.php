<div class="row bx-login">
    <div class="col-4 bx-login_mrc">
        <h4>Iniciar Sesión</h4>
        <form action="models/control.php" method="POST">
            <label for="">Usuario</label>
            <input type="text" name="usu" id="" placeholder="Número de Documento" required>
            <label for="">Contraseña</label>
            <input type="password" name="pass" id="" placeholder="Tú Contraseña" required>
            <?php
				$err = isset($_GET['err']) ? $_GET['err']:NULL;
				if($err=='oK') echo "<span class='dtinv'>Datos inválidos o usuario desactivado.</span>";
			?>
            <div class="col bx-login_btns">
                <input type="submit" value="Entrar">
                <a href="#">¿Olvido su contraseña?</a>
            </div>
        </form>
    </div>
</div>