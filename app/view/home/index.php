<?php $this->view('_templates/header.php'); ?>

<h1><?php echo $data->hello ?></h1>
<h3>You are in the View: <code>app/view/home/index.php</code></h3>
<h4>(everything in the box comes from this file)</h4>
<p>In a real application this could be the homepage.</p>

<?php $this->view('_templates/footer.php'); ?>