<?php
$options = array(
    'where' => 'Status = 3',
    'order_by' => 'Id DESC'
);
$order_inprocess = get_all('orders', $options);
$status = array(
    0 => 'Chưa xử lý',
    1 => 'Đã xử lý',
    2 => 'Từ chối',
    3 => 'Đã giao hàng'
);
?>
<div class="panel panel-default">
    <div class="panel-heading text-center">
        <b>Danh sách các đơn hàng đã giao</b>
    </div>
    <div class="panel-body">
        <div class="dataTable_wrapper">
            <table class="table table-striped table-bordered table-hover" id="dataTables-order_inprocess">
                <thead>
                <tr>
                    <th>Id</th>
                    <th>Khách hàng</th>
                    <th>Thời gian</th>
                    <th>Trạng thái</th>
                    <th>Chức năng</th>
                </tr>
                </thead>
                <tbody>
                <?php foreach ($order_inprocess as $order): ?>
                    <tr>
                        <td><?php echo $order['Id'];?></td>
                        <td><a href="admin.php?controller=order&amp;action=view&amp;oid=<?php echo $order['Id'];?>"><?php echo $order['Customer'];?></a></td>
                        <td><?php echo $order['Createtime'];?></td>
                        <td><?php echo $status[$order['Status']];?></td>
                        <td>
                            <a href="admin.php?controller=order&amp;action=view&amp;oid=<?php echo $order['Id']; ?>"
                               class="text-danger"><i class="glyphicon glyphicon-edit"></i></a>
                            <a href="admin.php?controller=order&amp;action=delete&amp;oid=<?php echo $order['Id']; ?>&amp;org=process"
                               class="text-danger"><i class="glyphicon glyphicon-remove"></i></a>
                               
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
        $('#dataTables-order_inprocess').DataTable({
            responsive: true,"order":[[0, 'desc']]
        });
    });
</script>