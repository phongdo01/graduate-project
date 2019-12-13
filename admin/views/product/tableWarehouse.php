<?php
$options = array(
    'where' => ' 1 = 1',
    'order_by' => 'Id DESC'
);
$product_order = get_all('product', $options);
?>
<div class="panel panel-default">
    <div class="panel-heading">
        Sản phẩm trong kho
    </div>
    <div class="panel-body">
        <div class="dataTable_wrapper">
            <table class="table table-striped table-bordered table-hover" id="dataTables-order">
                <thead>
                <tr>
                    <!-- <th>Id</th> -->
                    <th>Tên SP</th>
                    <th>Số lượng</th>
                    <th>Giá Order</th>
                    <!-- <th>Ngày tạo</th> -->
                    <th>Img</th>
                    <th>View</th>
                    <th>Đang yêu cầu</th>
                    <th>Chức năng</th>
                </tr>
                </thead>
                <tbody>
                <?php foreach ($data as $product): ?>
                    <tr class="odd gradeX">
                        <td><?php echo $product['Name'] ?></td>
                        
                        <td>
                           <?php echo $product['Quantity']; ?>
                        </td>
                        <td><?php echo $product ? number_format($product['Price'],0,',','.') : 0; ?></td>
                        <!-- <td class="center"><?php echo $product['Createdate'] ?></td> -->
                        <td class="center"><?php echo '<image src="public/upload/product/' . $product['Image1'] . '?time=' . time() . '" style="max-width:50px;" />'; ?></a></td>
                        <td class="center"><?php echo $product['TotalView'] ?></td>
                        <td class="center"><?php echo $product['requesting'] ?></td>
                        <td>
                            <a href="admin.php?controller=product&amp;action=edit&amp;pid=<?php echo $product['Id']; ?>"
                               class="text-danger"><i class="glyphicon glyphicon-edit"></i></a>
                            <a href="admin.php?controller=product&amp;action=delete&amp;pid=<?php echo $product['Id']; ?>&amp;org=orderproduct"
                               class="text-danger deleteitem"><i class="glyphicon glyphicon-remove"></i></a>
                        </td>
                    </tr>
                <?php endforeach; ?>
                </tbody>
            </table>
        </div>
    </div>
</div>
<script>
    $(document).ready(function () {
        $('#dataTables-order').DataTable({
            responsive: true,  "order":[[0, 'desc']]
        });
    });
</script>