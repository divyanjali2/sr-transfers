<?php
    if (session_status() == PHP_SESSION_NONE) {
        session_start();
    }

    $currentPage = basename($_SERVER['PHP_SELF']);
?>

<div class="d-flex flex-column flex-shrink-0 p-3 bg-dark text-white">
    <?php if (isset($_SESSION['user_name'])): ?>
        <div class="text-white mb-4 ps-1">
            <i class="bi bi-person-circle me-2"></i>
            Welcome, <strong><?= htmlspecialchars($_SESSION['user_name']) ?></strong>
        </div>
    <?php endif; ?>

    <a href="#" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-white text-decoration-none">
        <img src="assets/img/logo.png" alt="Logo" style="width: 40px; height: 40px; margin-right: 10px;">
        <span class="fs-5 fw-semibold">SR Transfers</span>
    </a>
    <hr>
    <ul class="nav nav-pills flex-column mb-auto">
        <li class="nav-item">
            <a href="dashboard.php" class="nav-link text-white <?= $currentPage === 'dashboard.php' ? 'active' : '' ?>" aria-current="page">
                <i class="bi-journal-check me-2"></i> Dashboard
            </a>
        </li>
        <li class="nav-item">
            <a href="bookings.php" class="nav-link text-white <?= $currentPage === 'bookings.php' ? 'active' : '' ?>" aria-current="page">
                <i class="bi bi-speedometer2 me-2"></i> Bookings
            </a>
        </li>
        <li class="nav-item">
            <a href="contact_messages.php" class="nav-link text-white <?= $currentPage === 'contact_messages.php' ? 'active' : '' ?>" aria-current="page">
                <i class="bi bi-envelope-fill me-2"></i> Contact Messages
            </a>
        </li>
        <li>
            <a href="vehicles.php" class="nav-link text-white <?= $currentPage === 'vehicles.php' ? 'active' : '' ?>">
                <i class="bi bi-truck me-2"></i> Vehicles
            </a>
        </li>
        <li>
            <a href="addons.php" class="nav-link text-white <?= $currentPage === 'addons.php' ? 'active' : '' ?>">
                <i class="bi bi-puzzle me-2"></i> Add-Ons
            </a>
        </li>

        <?php if (isset($_SESSION['user_role']) && $_SESSION['user_role'] === 'admin'): ?>
            <li>
                <a href="users.php" class="nav-link text-white <?= $currentPage === 'users.php' ? 'active' : '' ?>">
                    <i class="bi bi-people me-2"></i> Users
                </a>
            </li>
        <?php endif; ?>
    </ul>
    <hr>
    <div class="mt-auto">
        <a href="logout.php" class="nav-link text-white">
            <i class="bi bi-box-arrow-right me-4"></i> Logout
        </a>
    </div>
</div>
