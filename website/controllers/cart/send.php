<?php
if (!empty($_POST)) {
	
	$order = array(
		'Id' => 0,
		'Customer' => escape($_POST['name']),
		'Address' => escape($_POST['address']),
		'Phone' => escape($_POST['phone']),
        'Cart_total'=> $_POST['cart_total'],
		'Createtime' => gmdate('Y-m-d H:i:s', time()+7*3600)
	);
	$order_id = save('orders', $order);

	$cart = cart_list();
	foreach ($cart as $product) {
		$order_detail = array(
			'Id' => 0,
			'OrderId' => $order_id,
			'ProductId' => $product['id'],
			'Quantity' => $product['number'],
            'Price' => $product['price']
		);
		save('order_detail', $order_detail);
	}
	
		$to = $_POST['email'];  //khai báo địa chỉ mail người nhận
		$name = $_POST['name'];
$subject = 'Mua hàng thành công'; // chủ đề của mail
// Đây là nội dung mail cần gửi. Để xuống dòng , chèn \n vào cuối dòng
$message = "Xin chào quý khách ".$name." đã đặt hàng thành công.";
// Khai báo thông tin mail người gửi. Cách dòng bằng \r\n
$headers = "From: webmaster@example.com\r\nReply-To: webmaster@example.com";
 //Gửi mail
$mail_sent = @mail( $to, $subject, $message, $headers );

$to1 = 'phong.do@fssc.com.vn';
$subject1 = 'Đơn đặt hàng mới';
$message1 = 'Thông báo có đơn đặt hàng của khách hàng: '.$name;
$mail_sent1 = @mail( $to1, $subject1, $message1, $header);
	cart_destroy();
	//data
	$title = 'Đặt hàng thành công';
	//load view
    header( "refresh:5;url=http://localhost:8080/ShopOnline/home" );
    echo '<div style="text-align: center;padding: 20px 10px;">Cảm ơn bạn đã đặt hàng của shop. Shop sẽ confirm lại với bạn trong thời gian sớm nhất để xác nhận đơn hàng.<br>
                    Trình duyệt sẽ tự động chuyển về trang chủ sau 5s, hoặc bạn có thể click <a href="http://localhost:8080/ShopOnline/home">here</a>.</div>';
} else {
	header('location:.');
}

