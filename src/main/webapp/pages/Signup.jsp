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
        <h1 class="text-xl font-bold mb-4 text-white">Register</h1>
        <form action="register" method="post">
          <div class="mb-4">
            <label
              class="block text-white text-sm font-bold mb-2"
              for="name"
            >
              Name
            </label>
            <input
              class="shadow appearance-none border rounded w-full py-2 px-3 leading-tight focus:outline-none focus:shadow-outline"
              id="name"
              name="name"
              type="text"
              placeholder="Your Name"
            />
          </div>
          <div class="mb-4">
            <label
              class="block text-white text-sm font-bold mb-2"
              for="email"
            >
              Email
            </label>
            <input
              class="shadow appearance-none border rounded w-full py-2 px-3 leading-tight focus:outline-none focus:shadow-outline"
              id="email"
              name="email"
              type="email"
              placeholder="Your Email"
            />
          </div>
          <div class="mb-4">
            <label
              class="block text-white text-sm font-bold mb-2"
              for="dept"
            >
              Select an option
            </label>
            <select
              class="shadow appearance-none border rounded w-full py-2 px-3 text-black leading-tight focus:outline-none focus:shadow-outline"
              id="dept"
              name="department"
            >
              <option selected>Choose an Department</option>
              <option value="cse">Computer Science and Engineering</option>
              <option value="eee">
                Electrical and Electronics Engineering
              </option>
              <option value="swe">Software Engineering</option>
              <option value="fet">Food Engineering and Tea Technology</option>
            </select>
          </div>
          <div class="mb-4">
            <label
              class="block text-white text-sm font-bold mb-2"
              for="countries"
            >
              Select an Type
            </label>
            <select
              class="shadow appearance-none border rounded w-full py-2 px-3  text-black leading-tight focus:outline-none focus:shadow-outline"
              id="countries"
              name="type"
            >
              <option selected>Choose a type</option>
              <option value="student">Student</option>
              <option value="teacher">Teacher</option>
            </select>
          </div>
          <div class="mb-4">
            <label
              class="block text-white text-sm font-bold mb-2"
              for="password"
            >
              Password
            </label>
            <input
              class="shadow appearance-none border rounded w-full py-2 px-3 leading-tight focus:outline-none focus:shadow-outline"
              id="password"
              name="password"
              type="password"
              placeholder="Your Password"
            />
          </div>
          <div class="mb-4">
            <label
              class="block text-white text-sm font-bold mb-2"
              for="re-password"
            >
              Re-Password
            </label>
            <input
              class="shadow appearance-none border rounded w-full py-2 px-3 leading-tight focus:outline-none focus:shadow-outline"
              id="re-password"
              name="re-password"
              type="password"
              placeholder="Your re-password"
            />
          </div>
          <div class="flex items-center justify-between flex-col gap-4">
            <button
              class="bg-[#373F6E] hover:bg-blue-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline"
              type="submit"
            >
              Sign up
            </button>
            <a
              class="inline-block align-baseline font-bold text-sm text-blue-500 hover:text-blue-800 block"
              href="/premiumCourse/login"
            >
              Or, Login to your account
            </a>
          </div>
        </form>
      </div>
    </div>
	</body>
</html>