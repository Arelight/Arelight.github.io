<?php
    session_start();
    include 'includes/order.inc.php';
?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
	<head>
		<meta charset="utf-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.7.2/css/all.min.css"  />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/checkout.css">
		<title>M&K autohaven | Проверка</title>
	</head>
	<body>
		<div class="all">
			<div class="nav">
				<a href="cart.php"><i class="fas fa-angle-double-left"></i></a><h1>M&K autohaven</h1>
			</div>
			<div class="container">
				<h2> Проверка </h2>
				<div class="checkout-info">
					<div id="checkout-flex" class="checkout-form">
						<h3>Информация о клиенте</h3>
						<form action="checkout.php" method="post">
							<input type="hidden" name="user_id" value="<?php echo $_SESSION['id']; ?>"><br>
							<input type="text" name="address" placeholder="Адресс..."><br>
							<input type="text" name="city" placeholder="Город..."><br>
							<input type="text" name="phone" placeholder="Телефон..."><br>
							<input type="text" name="postal_code" placeholder="Почтовый индекс..."><br>
							<button type="submit" name="order-submit" class="order-submit-btn"> Оформить заказ</button><br>
						</form>
					</div>
					<div id="checkout-flex" class="checkout-details">
						<h3 style="margin-bottom: 35px;">Проверка</h3>
						<h4>Общая: ₽ <?php echo $total; ?></h4>
						<h4>Всего товаров: <?php echo $count; ?></h4>
					</div>
				</div>
			</div>
		</div>
		<footer>
			<div class="social">
			  <h2>Наши соц сети</h2>
			  <a href="#"> <i class="fab fa-facebook"> <span></span> </i> </a>
			  <a href="#"> <i class="fab fa-instagram"> <span></span> </i> </a>
			  <a href="#"> <i class="fab fa-twitter"> <span></span> </i> </a>
			  <a href="#"> <i class="fab fa-youtube"> <span></span> </i> </a>
		  </div>
		  <div class="credit">
		  	<h1>M&K autohaven | Сделано ktronin777</h1>
		  </div>
		</footer>
	</body>
</html>
