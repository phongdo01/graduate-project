<div class="panel panel-default">
    <div class="panel-heading text-center in-line">
        <b>Doanh thu cửa hàng tuần từ </b>
        <input type="date" id="startDate" class="form-control" style="width: 15%; display: inline;">
        <b> đến </b>
        <input type="date" id="endDate" class="form-control" style="width: 15%; display: inline;">
        <button class="btn btn-primary" id='checkRevenue'>Xem</button>
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
                            <td><?php echo $data['ProcessingTime'];?></td>
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
        let startDate;
        let endDate;
        // lay queryparam
        var getUrlParameter = function getUrlParameter(sParam) {
            var sPageURL = window.location.search.substring(1),
            sURLVariables = sPageURL.split('&'),
            sParameterName,
            i;

            for (i = 0; i < sURLVariables.length; i++) {
                sParameterName = sURLVariables[i].split('=');

                if (sParameterName[0] === sParam) {
                    return sParameterName[1] === undefined ? true : decodeURIComponent(sParameterName[1]);
                }
            }
        };
        $('#dataTables-order_complete').DataTable({
            responsive: true,"order":[[2, 'desc']]
        });
        // console.log( getUrlParameter('startDate'));
        if (getUrlParameter('startDate')!= undefined) {
            $('#startDate').val(getUrlParameter('startDate'))
        }
        if (getUrlParameter('endDate')!= undefined) {
            $('#endDate').val(getUrlParameter('endDate'))
        }
        $('input').change(function(){
            startDate = $('#startDate').val();
            endDate = $('#endDate').val();
            // console.log(startDate+'   '+endDate);
            
            
        })
        $('#checkRevenue').click(function(){
            console.log('startDate', startDate)
            console.log('endDate', endDate)
            if (startDate!='' && endDate!='') {
                window.location.href = './admin.php?controller=revenue&startDate='+startDate+'&endDate='+endDate;
            }
        })
        
    });
</script>
