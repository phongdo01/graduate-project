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
// tinh toan so luong con lai trong kho
// dong thoi tinh so luong san pham dang duoc yeu cau
function getWareHouse() {
    $sql = "select p.Name, p.Quantity, p.Price, p.Image1, p.TotalView, coalesce(temp.total, 0) requesting
    from product p left join(
    select od.ProductId, sum(od.Quantity) total
    from order_detail od inner join orders os
    on od.OrderId = os.Id
    where os.Status = 0
    group by od.ProductId) temp on p.Id = temp.ProductId;";
    $query = mysql_query($sql) or die(mysql_error());
    $data = array();
    if (mysql_num_rows($query) > 0) {
        while ($row = mysql_fetch_assoc($query)) {
            $data[] = $row;
        }
        mysql_free_result($query);
    }
    return $data;
// ket thuc
}
?>