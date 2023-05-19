<%@ page import="java.sql.*" %>

<section
			id="content"
			class="min-h-[96vh] bg-[#373F6E] py-[50px] px-[200px]"
		>
			<div class=" mb-8">
				<button
					type="submit"
					class="px-8 py-2 border-b-4 border-white text-white font-bold text-center text-base uppercase"
				>
					Registered Courses
				</button>
			</div>

			<!-- table for course list  -->
			<div class="flex flex-wrap gap-4 items-stretch mb-8">
					<% try {
						 String id = String.valueOf(session.getAttribute("id"));
						 System.out.println(id);
						 Class.forName("com.mysql.jdbc.Driver");
						 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/coursemanagement","root","Arnob420");
						 PreparedStatement pst = con.prepareStatement("SELECT c.course_id, c.course_name, c.course_code, c.course_teacher FROM takes AS t JOIN courses AS c ON t.course_id = c.course_id WHERE t.student_id = ?");
						 pst.setString(1, id);
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

			<div class=" mb-8">
				<button
					type="submit"
					class="px-8 py-2 border-b-4 border-white text-white font-bold text-center text-base uppercase"
				>
					Available Courses
				</button>
			</div>

			<div class="flex flex-wrap gap-4 items-stretch mb-8">
					<% try {
						 String id = String.valueOf(session.getAttribute("id"));
						 Class.forName("com.mysql.jdbc.Driver");
						 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/coursemanagement","root","Arnob420");
						 PreparedStatement pst = con.prepareStatement("SELECT c.course_id, c.course_name, c.course_code, c.course_teacher FROM courses AS c LEFT JOIN takes AS t ON c.course_id = t.course_id AND t.student_id = ? WHERE t.student_id IS NULL;");
						 pst.setString(1, id);
						 ResultSet rs = pst.executeQuery();
						 while(rs.next()) { %>
						 <div class="basis-[300px] bg-[#1D2A5F] shadow-md text-white rounded-md overflow-hidden">
					        <div class="" style="min-width: 300px;">
					          <div class="px-6 py-4">
					            <div class="font-bold text-xl mb-2 text-white"><%= rs.getString("course_name") %></div>
					            <p class="text-gray-600 text-base text-white"><%= rs.getString("course_code") %></p>
					            <p class="text-gray-600 text-base text-white"><%= rs.getString("course_teacher") %></p>
					            <p class="mt-4">
					            	<a href="/premiumCourse/registerCourse?course_id=<%=rs.getString("course_id")%>&student_id=<%=id%>" class="bg-primary font-bold text-white rounded px-2 py-1">Register</a>
					            </p>
					          </div>
					        </div>
					      </div>						 
						 <% }
						 } catch(Exception e) {
								e.printStackTrace();
							}
						 %>
			</div>
		</section>

		<!-- modal code  -->
		<div id="myModal" class="modal">
			<!-- Modal content -->
			<div class="modal-content">
				<span
					class="close-modal font-bold text-primary text-[35px] block w-max ml-auto text-right cursor-pointer px-5"
					>&times;</span
				>

				<div class="form-content px-[90px]">
					<form action="" method="post">
						<label for="courseName" class="block text-primary"
							>Course Name</label
						>
						<input
							type="text"
							name="courseName"
							id="courseName"
							class="block border-2 border-transparent bg-slate-200 w-full rounded mx-auto px-4 py-2 mb-8 focus:outline-none focus:border-primary"
						/>

						<label for="courseTeacher" class="block text-primary"
							>Course Teacher</label
						>
						<input
							type="text"
							name="courseTeacher"
							id="courseTeacher"
							class="block border-2 border-transparent bg-slate-200 w-full rounded mx-auto px-4 py-2 mb-8 focus:outline-none focus:border-primary"
						/>

						<div class="add-new text-right mx-auto max-w-[700px] pb-10">
							<button
								class="px-8 py-2 bg-primary text-white font-bold rounded text-center"
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