<?php
function products_delete($id) {
    $id = intval($id);
    $product = get_a_record('product', $id);
    $image = 'public/upload/product/'.$product['Image'];
    if (is_file($image)) {
        unlink($image);
    }
    $sql = "DELETE FROM product WHERE id=$id";
    $sqlUpdate = "update product set TypeId = 0 where Id=".$id;
    echo "$sqlUpdate";
    mysql_query($sqlUpdate) or die(mysql_error());
}