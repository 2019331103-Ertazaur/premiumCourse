<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
 <!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<title>Login</title>
		<!-- css animator -->
		<link
			rel="stylesheet"
			href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"
		/>
		<!-- tailwind with config  -->
		<script src="https://cdn.tailwindcss.com"></script>
		<script>
			tailwind.config = {
				theme: {
					extend: {
						colors: {
							primary: "#6339dc",
						},
					},
				},
			};
		</script>
		<!-- custom css  -->
		<link rel="stylesheet" href="./assets/styles/style.css" />
	</head>
	<body>
	<div class="bg-[#373F6E] flex items-center justify-center h-screen">
		<div class="bg-[#1D2A5F] p-8 rounded shadow-md">
        <h1 class="text-white text-xl font-bold mb-4">Login</h1>
        <form action="profile" method="post">
          <div class="mb-4">
            <label class="block text-white font-bold mb-2" for="username">
              email
            </label>
            <input
              class="appearance-none border rounded w-full py-2 px-3 leading-tight focus:outline-none focus:shadow-outline"
              id="email"
              name="email"
              type="email"
              placeholder="Email"
            />
          </div>
          <div class="mb-6">
            <label class="block text-white font-bold mb-2" for="password">
              Password
            </label>
            <input
              class="appearance-none border rounded w-full py-2 px-3  leading-tight focus:outline-none focus:shadow-outline"
              id="password"
              name="password"
              type="password"
              placeholder="Password"
            />
          </div>
          <div class="flex items-center justify-between flex-col gap-4">
            <button
              class="bg-[#373F6E] hover:bg-blue-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline"
              type="submit"
            >
              Log In
            </button>
            <a
              class="inline-block align-baseline font-bold text-sm text-blue-500 hover:text-blue-800 block"
              href="/premiumCourse/signup"
            >
              Or, Create new Account
            </a>
          </div>
        </form>
      </div>
    </div>
	</body>
</html>