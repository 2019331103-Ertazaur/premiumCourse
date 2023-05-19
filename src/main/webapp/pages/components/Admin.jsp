<%@ page import="java.sql.*" %>

<section
			id="content"
			class="min-h-[95vh] bg-[#373F6E] py-[50px] px-[100px]"
		>
			<div class="text-left mb-8">
				<button
					type="submit"
					class="px-4 py-2 border-b-4 text-white font-bold text-base uppercase"
				>
					Current Courses
				</button>
			</div>

			<div class="flex flex-wrap gap-4 items-stretch mb-8">
				<% try {
						 Class.forName("com.mysql.jdbc.Driver");
						 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/coursemanagement","root","Arnob420");
						 PreparedStatement pst = con.prepareStatement("select * from courses;");
						 
						 ResultSet rs = pst.executeQuery();
						 while(rs.next()) { %>
						  
						 <div class="basis-[300px] bg-[#1D2A5F] shadow-md text-white rounded-md overflow-hidden">
					        <div class="" style="min-width: 300px;">
					          <div class="px-6 py-4">
					            <div class="font-bold text-xl mb-2 text-white"><%= rs.getString("course_name") %></div>
					            <p class="text-gray-600 text-base text-white"><%= rs.getString("course_code") %></p>
					            <p class="text-gray-600 text-base text-white"><%= rs.getString("course_teacher") %></p>
					          </div>
					        </div>
					      </div>							 
					<% }
						 } catch(Exception e) {
								e.printStackTrace();
							}
				    %>
			</div>
			

			<div class="add-new text-right mx-auto max-w-[90%]">
				<button
					class="px-2 py-2 w-20 h-20 bg-[#1D2A5F] text-white font-bold rounded-full text-center shadow-lg"
					id="addCourse"
				>
					Add
				</button>
			</div>
		</section>

		<!-- modal code  -->
		<div id="myModal" class="modal rounded">
			<!-- Modal content -->
			<div class="modal-content rounded-lg">
				<span
					class="close-modal hidden font-bold text-blue-500 text-[35px] block w-max ml-auto text-right cursor-pointer px-5"
					>&times;</span
				>
				<div class="bg-[#1D2A5F] rounded-md shadow-lg p-8">
					<form action="create-course" method="post">
						<div class="mb-4">
				          <label class="block font-bold mb-2 text-white" for="courseName">Course Name</label>
				          <input class="border-0 p-2 w-full text-white bg-[#373F6E]" type="text" name="courseName" id="courseName" placeholder="">
				        </div>
				        <div class="mb-4">
				          <label class="block font-bold mb-2 text-white" for="courseCode">Course Code</label>
				          <input class="border-0 p-2 w-full text-white bg-[#373F6E]" type="text" name="courseCode" id="courseCode" placeholder="">
				        </div>
				        <div class="mb-4">
				          <label class="block font-bold mb-2 text-white" for="courseTeacher">Course Teacher</label>
				          <input class="border-0 p-2 w-full text-white bg-[#373F6E]" type="text" name="courseTeacher" id="courseTeacher" placeholder="">
				        </div>

						<div class="add-new text-right mx-auto max-w-[700px] pb-10">
							<button
							class="px-2 py-2 w-20 h-20 bg-[#373F6E] text-white font-bold rounded-full text-center"
							id="addCourse"
							type="submit"
							>
							Add
							</button>
						</div>
					</form>
				</div>
			</div>
		</div>