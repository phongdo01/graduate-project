<div class="panel panel-default">
    <div class="panel-heading text-center in-line">
        <b>Doanh thu cửa hàng tuần từ </b>
        <input type="date" id="startDate" class="form-control">
        <b> đến </b>
        <input type="date" id="endDate" class="form-control">
    </div>
    <div class="panel-body">
        <div class="dataTable_wrapper">
            <!-- <input type='numer' id='month'/> -->
            <table class="table table-striped table-bordered table-hover" id="dataTables-order_complete">
                <thead>
                    <tr>
                        <th>Mã đơn hàng</th>
                        <th>Tên nhân viên</th>
                        <th>Ngày giao hàng</th>
                        <th>Giá trị</th>
                        <!-- <th>Chức năng</th> -->
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($datas as $data): ?>
                        <tr>
                            <td><?php echo $data['Id'];?></td>
                            <td><?php echo $data['Name'];?></td>
                            <td><?php echo $data['Createtime'];?></td>
                            <td><?php echo $data['Cart_total'];?></td>
                        <!-- <td>
                            <a href="admin.php?controller=order&amp;action=view&amp;oid=<?php echo $order['Id']; ?>"
                               class="text-danger"><i class="glyphicon glyphicon-edit"></i></a>
                            <a href="admin.php?controller=order&amp;action=delete&amp;oid=<?php echo $order['Id']; ?>&amp;org=complete"
                               class="text-danger"
                               ><i class="glyphicon glyphicon-remove"></i></a>
                           </td> -->
                       </tr>
                   <?php endforeach; ?>
               </tbody>
           </table>
       </div>
   </div>
</div>
<script>
    $(document).ready(function () {
        $('#dataTables-order_complete').DataTable({
            responsive: true,"order":[[2, 'desc']]
        });
        $('input').change(function(){
            let startDate = $('#startDate').val();
            let endDate = $('#endDate').val();
            console.log(startDate+'   '+endDate)
        })
        
    });
</script>