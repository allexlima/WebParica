<div class="row">
	<ol class="breadcrumb">
		<li><a href="#"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
		<li class="active">Matrícula</li>
	</ol>
</div>

<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">Matrícula do Aluno</h1>
	</div>
</div>


<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">Dados do Aluno</div>
			<div class="panel-body">
				<div class="col-md-12">
					<form role="form">

						<div class="form-group col-md-12">
							<label>Nome do aluno</label>
							<input name="nome_aluno" class="form-control" type="text">
						</div>

						<div class="form-group col-md-3">
							<label>CPF</label>
							<input name="cpf" class="form-control" type="text">
						</div>

						<div class="form-group col-md-3">
							<label>RG</label>
							<input name="rg" class="form-control" type="text">
						</div>

						<div class="form-group col-md-3">
							<label>Orgão Expedidor</label>
							<input name="orgao_exp" class="form-control" type="text">
						</div>

						<div class="form-group col-md-3">
							<label>Data de Nascimento</label>
							<input name="data_nasc" class="form-control" type="date">
						</div>

						<div class="form-group col-md-4">
							<label>Estado Civil</label>
							<select name="estado_civ" class="form-control">
								<option value="" disabled selected>Selecione</option>
								<option value="0">Solteiro</option>
								<option value="1">Casado</option>
								<option value="2">Divorciado</option>
								<option value="3">Viúvo</option>
								<option value="4">Estável</option>
							</select>
						</div>

						<div class="form-group col-md-8">
							<label>Certidão de Nascimento</label>
							<input name="certidao_nasc" class="form-control" type="text">
						</div>

						<div class="form-group col-md-4">
							<label>E-mail</label>
							<input name="email" class="form-control" type="email">
						</div>

						<div class="form-group col-md-4">
							<label>Telefone <i style="font-size: 13px">(incluir DDD)</i></label>
							<input name="telefone" class="form-control" type="tel">
						</div>

						<div class="form-group col-md-4">
							<label>PcD</label>
							<select name="pcd" class="form-control">
								<option value="" disabled selected>Selecione</option>
								<option value="0">Sim</option>
								<option value="1">Não</option>
							</select>
						</div>

						<div class="form-group col-md-4">
							<label>Endereço</label>
							<input name="endereco" class="form-control" type="text">
						</div>

						<div class="form-group col-md-2">
							<label>Nº</label>
							<input name="num_casa" class="form-control" type="number">
						</div>

						<div class="form-group col-md-3">
							<label>Bairro</label>
							<input name="bairro" class="form-control" type="text">
						</div>

						<div class="form-group col-md-3">
							<label>Estado</label>
							<select name="estado" class="form-control">
								<option value="" disabled selected>Selecione</option>
								<option value="AC">Acre</option>
								<option value="AL">Alagoas</option>
								<option value="AP">Amapá</option>
								<option value="AM">Amazonas</option>
								<option value="BA">Bahia</option>
								<option value="CE">Ceará</option>
								<option value="DF">Distrito Federal</option>
								<option value="ES">Espírito Santo</option>
								<option value="GO">Goiás</option>
								<option value="MA">Maranhão</option>
								<option value="MT">Mato Grosso</option>
								<option value="MS">Mato Grosso do Sul</option>
								<option value="MG">Minas Gerais</option>
								<option value="PA">Pará</option>
								<option value="PB">Paraíba</option>
								<option value="PR">Paraná</option>
								<option value="PE">Pernambuco</option>
								<option value="PI">Piauí</option>
								<option value="RJ">Rio de Janeiro</option>
								<option value="RN">Rio Grande do Norte</option>
								<option value="RS">Rio Grande do Sul</option>
								<option value="RO">Rondônia</option>
								<option value="RR">Roraima</option>
								<option value="SC">Santa Catarina</option>
								<option value="SP">São Paulo</option>
								<option value="SE">Sergipe</option>
								<option value="TO">Tocantins</option>
							</select>
						</div>

						<div class="form-group col-md-12">
							<label>Observação</label>
							<textarea name="obeservacao" class="form-control" rows="5"></textarea>
						</div>
					</form>
				</div>

			</div>
		</div>
		<div class="panel panel-default">
			<div class="panel-heading">Dados do Responsável</div>
			<div class="panel-body">
				<div class="col-md-12">
					<form role="form">

						<div class="form-group col-md-4">
							<label>Nome</label>
							<input name="nome_mae" class="form-control" type="text">
						</div>

						<div class="form-group col-md-4">
							<label>CPF</label>
							<input name="cpf_mae" class="form-control" type="text">
						</div>

						<div class="form-group col-md-4">
							<label>Gradu de Parentesco</label>
							<select class="form-control">
								<option>Selecione</option>
								<option>Mãe</option>
								<option>Pai</option>
								<option>Avó/Avô</option>
								<option>Tia/Tio</option>
							</select>
						</div>

						<div class="form-group col-md-4">
							<label>Nome</label>
							<input name="nome_pai" class="form-control" type="text">
						</div>

						<div class="form-group col-md-4">
							<label>CPF</label>
							<input name="cpf_pai" class="form-control" type="text">
						</div>

						<div class="form-group col-md-4">
							<label>Grau de Parentesco</label>
							<select class="form-control">
								<option>Selecione</option>
								<option>Mãe</option>
								<option>Pai</option>
								<option>Avó/Avô</option>
								<option>Tia/Tio</option>
							</select>
						</div>
					</form>
				</div>

			</div>
		</div>
		<div class="panel panel-default">
			<div class="panel-heading">Dados Acadêmicos</div>
			<div class="panel-body">
				<div class="col-md-12">
					<form role="form">

						<div class="form-group col-md-4">
							<label>Turma</label>
							<input name="turma" class="form-control" type="text">
						</div>

						<div class="form-group col-md-4">
							<label>Turno</label>
							<input name="turno" class="form-control" type="text">
						</div>

						<div class="form-group col-md-4">
							<label>Ano/Serie</label>
							<select name="ano_serie" class="form-control">
								<option value="" disabled selected>Selecione</option>
								<option value="0">1º Ano</option>
								<option value="1">2º Ano</option>
								<option value="2">3º Ano</option>
								<option value="3">4º Ano</option>
								<option value="4">5º Ano</option>
								<option value="5">6º Ano</option>
								<option value="6">7º Ano</option>
								<option value="7">8º Ano</option>
								<option value="8">9º Ano</option>
								<option value="9">1º Ano/Médio</option>
								<option value="10">2º Ano/Médio</option>
								<option value="11">3º Ano/Médio</option>
							</select>
						</div>

						<div class="form-group col-md-6">
							<label>Escola</label>
							<input name="escola" disabled selected value="ESCOLA PROFESSOR CICERO MONTEIRO" class="form-control" type="text">
						</div>

						<div class="form-group col-md-6">
							<label>Situação</label>
							<div name="situacao" class="radio">
								<label>
									<input value="0" type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>  Novo
								</label>

								<label>
									<input value="1" type="radio" name="optionsRadios" id="optionsRadios2" value="option2">  Transferido
								</label>

								<label>
									<input value="2" type="radio" name="optionsRadios" id="optionsRadios3" value="option3">  Desistente
								</label>

								<label>
									<input value="3" type="radio" name="optionsRadios" id="optionsRadios3" value="option3">  Repetente
								</label>
							</div>
						</div>

						<div class="form-group col-md-12">
							<label>Observação</label>
							<textarea name="observacao_doiss" class="form-control" rows="5"></textarea>
						</div>

						<button type="submit" class="btn btn-primary">Confirmar</button>
						<button type="reset" class="btn btn-default">Desfazer</button>
					</form>
				</div>

			</div>
		</div>
	</div>
</div>