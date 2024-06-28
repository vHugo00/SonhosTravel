<?php

	/**
	 * 
	 * Separei o menu do headar.php para que seja
	 * possível reutilizá-lo em outros arquivos.
	 * 
	 */

?>

<nav class="navbar navbar-expand-sm navbar-dark bg-dark" aria-label="Third navbar example">
	<div class="align-items-end container-fluid flex-column">
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample03" aria-controls="navbarsExample03" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarsExample03">
			<ul class="navbar-nav me-auto mb-2 mb-sm-0">
				<li class="nav-item">
					<a class="nav-link" href="/casais">Encontro de Casais</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="/navegando">Navegando com Elas</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="/passageiros">Passageiros</a>
				</li>
			</ul>
		</div>
	</div>
</nav>