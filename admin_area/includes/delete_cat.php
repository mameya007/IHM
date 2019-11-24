<?php include '../../core/init.php';

if (isset($_GET['cat_id'])) {
    $cat_id = $_GET['cat_id'];

    $sql = "DELETE FROM categories WHERE cat_id = :cat_id";
    $stmt = $pdo->prepare($sql);
    $stmt->bindParam(":cat_id", $cat_id);
    if ($stmt->execute()) {
        $_SESSION['delete_cat_msg'] = "Catagory has been Deleted Successfully";
        header('Location: ../index.php?view_cats');
    }

}
