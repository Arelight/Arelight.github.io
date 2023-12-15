<?php
	class User extends DB{
		public function get_user($email = ""){
			if($email == ""){
				$sql = "SELECT * FROM users";
			} else {
				$sql = "SELECT * FROM users WHERE email='$email'";
			}
			$stmt = $this->connect()->query($sql);
			return $stmt;
		}
		public function update_cart_increment($id){
			$sql = "UPDATE `users` SET `cart` = `cart` + 1 WHERE `id`='$id';";
			$this->connect()->query($sql);
		}
		public function update_cart_decrement($id){
			$sql = "UPDATE `users` SET `cart` = `cart` - 1 WHERE `id`='$id';";
			$this->connect()->query($sql);
		}
		public function insert_user($username, $email, $password, $repassword, $admin){
			$conn = $this->connect();
			$errors = array();

			if(empty($username)){
				array_push($errors, 'Заполните поле "Имя"');
			}else if(empty($email)){
				array_push($errors, 'Заполните поле "Email"');
			}else if(empty($password)){
				array_push($errors, 'Заполните поле "Пароль"');
			}else if(empty($repassword)){
				array_push($errors, 'Заполните поле "Подтверждения пароля"');
			}

			$exitsUser = $this->get_user($email);
			if(mysqli_num_rows($exitsUser) != 0){
				array_push($errors, 'Этот Email занят другим аккаунтом');
			}
			if($password != $repassword){
				array_push($errors, 'Пароли не совпадают');
			}
			if(empty($errors)){
				$sql = "INSERT INTO users SET username=?, email=?, password=?, admin=?;";
				$stmt = $conn->prepare($sql);
				$password = password_hash($password, PASSWORD_DEFAULT);
				$stmt->bind_param("sssi", $username, $email, $password, $admin);
				$stmt->execute();
			}
			$_SESSION['sign_message'] = $errors[0];
			if(empty($errors)){
				$_SESSION['sign_message'] = "Аккаунт успешно создан";
			}
			unset($_SESSION['log_message']);
			return $errors;
		}
		public function login($POST){
			$errors = array();

			if(empty($_POST['email']) & empty($_POST['password'])){
				array_push($errors, 'Email and password is required');
			}else if(empty($_POST['email'])){
				array_push($errors, 'Email is required');
			}else if(empty($_POST['password'])){
				array_push($errors, 'Password is required');
			}
			$exitsUser = $this->get_user($_POST['email']);

			if(mysqli_num_rows($exitsUser) === 0){
				array_push($errors, 'Неверно введены email или пароль');
			}else{
				$row = $exitsUser->fetch_assoc();
				$password = $row['password'];
			}
			if(!password_verify($_POST['password'], $password)){
				array_push($errors, 'Неверно введены email или пароль');
			}
			$_SESSION['log_message'] = $errors[0];
			unset($_SESSION['sign_message']);
			return $errors;
		}
		public function delete_user($id){
			$conn = $this->connect();
			$sql = "DELETE FROM users WHERE id=?;";
			$stmt = $conn->prepare($sql);
			$stmt->bind_param("i", $id);
			$stmt->execute();
		}
	}
?>
