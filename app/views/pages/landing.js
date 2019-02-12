// used in client side to generate jwt to authenticate further front end calls for info to server api
let http = new XMLHttpRequest();
let url = "/api/v1/user_token";
let params = "auth[email]=msousa@mlrcbsousa.com&auth[password]=password";
http.open("POST", url, true);

// Send the proper header information along with the request
http.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

http.onreadystatechange = () => {// Call a function when the state changes,
  if (http.readyState == 4 && http.status == 201) {
    console.log(http.responseText);
  }
}

http.send(params);
// {"jwt":"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTAwODIwMDMsInN1YiI6MX0.uYB99O_IOIFfM5mTNZEwJQUdBPuvUceHaD9kt6zVCRo"}

// window.atob('eyJleHAiOjE1NTAwODIwMDMsInN1YiI6MX0')
// "{"exp":1550082003,"sub":1}"
