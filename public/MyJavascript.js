function quit_func()
{
	var x;
	if (confirm("Are You Sure You Want To Quit ? ") == true) {
		x = "You pressed To Quit The Program !";
	} else {
		x = "You Canceled !";
	}
	document.getElementById("quit_header").innerHTML = x;
}
