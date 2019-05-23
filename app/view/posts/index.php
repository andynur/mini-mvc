<?php $this->view('_templates/header.php'); ?>

<div class="row">
	<div class="col-md-12">
		<div class="row">
			<div class="col-md-8">
				<a href="<?= URL . '/posts/create' ?>" class="btn btn-success btn-sm">
					<span class="fa fa-plus"></span> Tambah
				</a>

				<?php 
					if ( !empty($_GET['search']) ) { 
				?>
					<a href="<?= URL . '/posts/index' ?>" class="btn btn-primary btn-sm">
						<span class="fa fa-refresh"></span> Tampilkan Semua
					</a>
				<?php 
					} 
				?>

			</div>
			<div class="col-md-4">
				<form action="">
					<div class="input-group">
						<input type="hidden" name="page" value="posts/index">
						<input type="text" name="search" class="form-control" value="<?= $_GET['search'] ?? '' ?>" placeholder="Pencarian...">
						<div class="input-group-append">
							<button class="btn btn-outline-secondary" type="submit" id="button-addon2" style="border-color: #ccc;">
								<i class="fa fa-search"></i>
							</button>
						</div>
					</div>
				</form>
			</div>
		</div>

		<table class="table table-striped table-bordered" style="margin-top: 10px">
			<tr>
				<th width="50px">No</th>
				<th>Judul</th>
				<th>isi Konten</th>
				<th>Tanggal</th>
				<th>Status</th>
				<th style="text-align: center; width: 100px;">Aksi</th>
			</tr>

			<?php $no = 1; ?>
			<?php foreach ($data->posts as $post) { ?>
				<tr>
					<td><?= $no ?></td>
					<td><?= $post->title ?></td>
					<td><?= substr($post->content, 0, 100) . '...'; ?></td>
					<td><?= date('d/m/Y', strtotime($post->created_at)) ?></td>
					<td>
						<span class="badge badge-<?= $post->is_draft == '0' ? 'success' : 'warning' ?>">
							<?= $post->is_draft == '0' ? 'Publish' : 'Draft' ?>
						</span>
					</td>
					<td style="text-align: center;">
						<a href="<?= URL . '/posts/edit&id='.$post->id ?>" class="btn btn-primary btn-sm">
							<span class="fa fa-edit"></span>
						</a>

						<a onclick="return confirm('Apakah yakin data akan di hapus?')" href="<?= URL . '/posts/delete&id='.$post->id ?>" class="btn btn-danger btn-sm">
							<span class="fa fa-trash"></span>
						</a>
					</td>
				</tr>
				<?php $no++; ?>
			<?php } ?>
		</table>

		<p class="text-muted">Total Data: <b><?php echo $data->amount; ?></b></p>
	</div>
</div>

<?php $this->view('_templates/footer.php'); ?>
