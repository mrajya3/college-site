<?php 
include("includes/header.php");


if(isset($_POST['post'])){

	$uploadOk = 1;
	$imageName = $_FILES['fileToUpload']['name'];
	$errorMessage = "";

	if($imageName != "") {
		$targetDir = "assets/images/posts/";
		$imageName = $targetDir . uniqid() . basename($imageName);
		$imageFileType = pathinfo($imageName, PATHINFO_EXTENSION);

		if($_FILES['fileToUpload']['size'] > 100000000) {
			$errorMessage = "Sorry your file is too large";
			$uploadOk = 0;
		}

		if(strtolower($imageFileType) != "jpeg" && strtolower($imageFileType) != "png" && strtolower($imageFileType) != "jpg" && strtolower($imageFileType) != "mp4" && strtolower($imageFileType) != "docx" && strtolower($imageFileType) != "mkv")  {
			$errorMessage = "Sorry, only jpeg, jpg, mp4 and png files are allowed";
			$uploadOk = 0;
		}

		if($uploadOk) {
			if(move_uploaded_file($_FILES['fileToUpload']['tmp_name'], $imageName)) {
				//image uploaded okay
			}
			else {
				//image did not upload
				$uploadOk = 0;
				echo "image didnt upload";
			}
		}

	}

	if($uploadOk) {
		$post = new Post($con, $userLoggedIn);
		$post->submitPost($_POST['post_text'], 'none', $imageName);
	}
	else {
		echo "<div style='text-align:center;' class='alert alert-danger'>
				$errorMessage
			</div>";
	}
	header("Location: index.php");

}


 ?>
	<div class="user_details column">
		<a href="<?php echo $userLoggedIn; ?>">  <img src="<?php echo $user['profile_pic']; ?>"> </a>

		<div class="user_details_left_right">
			<a href="<?php echo $userLoggedIn; ?>">
			<?php 
			echo $user['first_name'] . " " . $user['last_name'];

			 ?>
			</a>
			<br>
			<?php echo "Posts: " . $user['num_posts']. "<br>"; 
			echo "Likes: " . $user['num_likes'];

			?>
		</div>

	</div>

	<div class="main_column column">
		<form class="post_form" action="index.php" method="POST" enctype="multipart/form-data">
			
			<textarea name="post_text" id="post_text" placeholder="Got something to say?"></textarea>
			<input type="submit" name="post" id="post_button" value="Post">
			<input type="file" name="fileToUpload" id="fileToUpload">
			<hr>

		</form>

		<div class="posts_area"></div>
		<!-- <button id="load_more">Load More Posts</button> -->
		<img id="loading" src="assets/images/icons/loading.gif">


	</div>
		<div class="new"><a href="messages.php"> Create New Message</a></div>
	<div class="user_details column">

		<h4>TRENDING NOW</h4>

		<div class="trends">
			<?php 
			$query = mysqli_query($con, "SELECT * FROM trends ORDER BY hits DESC LIMIT 7");

			foreach ($query as $row) {
				
				$trendingword = $row['title'];
				$word_dot = strlen($trendingword) >= 14 ? "..." : "";

				$trimmed_word = str_split($trendingword, 14);
				$trimmed_word = $trimmed_word[0];

				echo "<div style'padding: 1px'>";
				 echo '<i class="fa fa-link" aria-hidden="true"></i>';
				 echo " <a href='trend.php?trendingWord=" . $trendingword . "'>" . $trimmed_word . "</a>";
				echo "<br></div><br>";


			}



			?>
		</div>
		<style type="text/css">

@font-face{
    font-family: 'Bellota-BoldItalic';
    src:url('../fonts/Bellota-BoldItalic.otf');
}

 h4{
 	margin-left: 30px;
    color: #060203;
   font-family: 'Bellota-BoldItalic', sans-serif;
   font-size: 21px;
    margin-bottom: 13px;
 }

</style>

	</div>




	<script>
	var userLoggedIn = '<?php echo $userLoggedIn; ?>';

	$(document).ready(function() {

		$('#loading').show();

		//Original ajax request for loading first posts 
		$.ajax({
			url: "includes/handlers/ajax_load_posts.php",
			type: "POST",
			data: "page=1&userLoggedIn=" + userLoggedIn,
			cache:false,

			success: function(data) {
				$('#loading').hide();
				$('.posts_area').html(data);
			}
		});

		$(window).scroll(function() {
		//$('#load_more').on("click", function() {

			var height = $('.posts_area').height(); //Div containing posts
			var scroll_top = $(this).scrollTop();
			var page = $('.posts_area').find('.nextPage').val();
			var noMorePosts = $('.posts_area').find('.noMorePosts').val();

			if ((document.body.scrollHeight == document.body.scrollTop + window.innerHeight) && noMorePosts == 'false') {
			//if (noMorePosts == 'false') {
				$('#loading').show();

				var ajaxReq = $.ajax({
					url: "includes/handlers/ajax_load_posts.php",
					type: "POST",
					data: "page=" + page + "&userLoggedIn=" + userLoggedIn,
					cache:false,

					success: function(response) {
						$('.posts_area').find('.nextPage').remove(); //Removes current .nextpage 
						$('.posts_area').find('.noMorePosts').remove(); //Removes current .nextpage 
						$('.posts_area').find('.noMorePostsText').remove(); //Removes current .nextpage 

						$('#loading').hide();
						$('.posts_area').append(response);
					}
				});

			} //End if 

			return false;

		}); //End (window).scroll(function())


	});

	</script>




	</div>
</body>
</html>