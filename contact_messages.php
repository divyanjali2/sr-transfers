<?php
session_start();

$conn = include __DIR__ . '/assets/includes/db_connect.php';

// Handle deletion
if (isset($_GET['delete_id'])) {
    $deleteId = (int)$_GET['delete_id'];

    $stmt = $conn->prepare("DELETE FROM contact_messages WHERE id = ?");
    $stmt->execute([$deleteId]);

    header("Location: contact_messages.php");
    exit;
}

// Fetch all contact messages
$stmt = $conn->query("SELECT * FROM contact_messages ORDER BY id DESC");
$messages = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="icon" type="image/png" href="assets/img/logo.png">
    <title>SR Transfers | Contact Messages</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/2.1.2/css/dataTables.bootstrap5.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">

    <style>
        body { background: #f4f6f8; font-family: "Cambria", sans-serif; font-size: 12px; }
        .container { max-width: 95%; }
        .card { padding: 20px; border-radius: 12px; margin-top: 40px; box-shadow: 0 4px 15px rgba(0,0,0,0.08); }
        table thead tr th { background-color: #000; color: #fff; }
        .message-cell { max-width: 350px; white-space: normal; }
    </style>
</head>

<body>
    <div class="d-flex">
        <?php include __DIR__ . '/assets/includes/sidebar.php'; ?>

        <div class="flex-grow-1">
            <div class="container">
                <div class="card">
                    <h2 class="text-center fw-bold mb-4">📩 Contact Messages</h2>

                    <div class="table-responsive">
                        <table id="messagesTable" class="table table-bordered table-striped">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Name</th>
                                    <th>Email</th>
                                    <th>Phone</th>
                                    <th>Subject</th>
                                    <th>Message</th>
                                    <th>Date</th>
                                    <th>Actions</th>
                                </tr>
                            </thead>

                            <tbody>
                                <?php foreach ($messages as $i => $m): ?>
                                    <tr>
                                        <td><?= $i + 1 ?></td>
                                        <td><?= htmlspecialchars($m['name']) ?></td>
                                        <td>
                                            <a href="mailto:<?= htmlspecialchars($m['email']) ?>">
                                                <?= htmlspecialchars($m['email']) ?>
                                            </a>
                                        </td>
                                        <td>
                                            <a href="tel:<?= htmlspecialchars($m['phone']) ?>">
                                                <?= htmlspecialchars($m['phone']) ?>
                                            </a>
                                        </td>
                                        <td><?= htmlspecialchars($m['subject']) ?></td>
                                        <td class="message-cell"><?= nl2br(htmlspecialchars($m['message'])) ?></td>
                                        <td><?= htmlspecialchars($m['created_at']) ?></td>
                                        <td>
                                            <a href="mailto:<?= htmlspecialchars($m['email']) ?>?subject=Re: <?= urlencode($m['subject']) ?>" class="btn btn-sm btn-primary">
                                                Reply
                                            </a>

                                            <?php if (isset($_SESSION['user_role']) && $_SESSION['user_role'] === 'admin'): ?>
                                                <a href="contact_messages.php?delete_id=<?= $m['id'] ?>" 
                                                   class="btn btn-sm btn-danger"
                                                   onclick="return confirm('Are you sure you want to delete this message?');">
                                                    Delete
                                                </a>
                                            <?php endif; ?>
                                        </td>
                                    </tr>
                                <?php endforeach; ?>
                            </tbody>

                        </table>
                    </div>

                </div>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <script src="https://cdn.datatables.net/2.1.2/js/dataTables.js"></script>
    <script src="https://cdn.datatables.net/2.1.2/js/dataTables.bootstrap5.js"></script>

    <script>
        $(document).ready(function () {
            $('#messagesTable').DataTable({
                pageLength: 10,
                lengthMenu: [5, 10, 25, 50],
                order: [[0, 'desc']],
                responsive: true
            });
        });
    </script>
</body>
</html>