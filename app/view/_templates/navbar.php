<nav class="navbar navbar-expand-md navbar-dark bg-dark mb-4">
    <a class="navbar-brand" href="#">CND Blog</a>
    
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item <?= $this->checkUri(2) == '' ? 'active' : ''; ?>">
                <a class="nav-link" href="<?= URL; ?>">Home</a>
            </li>
            <li class="nav-item <?= $this->checkUri(2) == 'home' && $this->checkUri(3) == 'exampleone' ? 'active' : ''; ?>">
                <a class="nav-link" href="<?= URL; ?>home/exampleone">Example One</a>
            </li>
            <li class="nav-item <?= $this->checkUri(2) == 'home' && $this->checkUri(3) == 'exampletwo' ? 'active' : ''; ?>">
                <a class="nav-link" href="<?= URL; ?>home/exampletwo"">Example Two</a>
            </li>
            <li class="nav-item <?= $this->checkUri(2) == 'posts' ? 'active' : ''; ?>">
                <a class="nav-link" href="<?= URL; ?>posts">Posts</a>
            </li>
            <li class="nav-item <?= $this->checkUri(2) == 'songs' ? 'active' : ''; ?>">
                <a class="nav-link" href="<?= URL; ?>songs">Songs</a>
            </li>
        </ul>
    </div>
</nav>