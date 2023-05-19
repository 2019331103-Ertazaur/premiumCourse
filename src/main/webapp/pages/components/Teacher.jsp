<%@ page import="java.sql.*" %>

<section
			id="content"
			class="min-h-[95vh] bg-[#373F6E] py-[50px] px-[200px]"
		>
			<div class="text-left mb-8">
				<button
					type="submit"
					class="px-4 py-2 rounded border-blue-500 text-white font-bold text-xl uppercase"
				>
					Assigned Courses
				</button>
			</div>

			<!-- course list -->
			<div class="course-list">
				<ul class="flex flex-wrap gap-4 items-stretch mb-8" id="courseList">
					<% try {
						 String name = String.valueOf(session.getAttribute("name"));
						 Class.forName("com.mysql.jdbc.Driver");
						 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/coursemanagement","root","Arnob420");
						 PreparedStatement pst = con.prepareStatement("SELECT * from courses where course_teacher = ?");
						 pst.setString(1, name);
						 ResultSet rs = pst.executeQuery();
						 while(rs.next()) { %>
							 <div class="flex flex-col gap-4 flex-wrap">
								 <div class="bg-[#1D2A5F] shadow-md rounded-md course_item cursor-pointer">
							        <div class="" style="min-width: 300px;">
							          <div class="px-6 py-4">
							            <div class="font-bold text-xl mb-2 text-white"><%= rs.getString("course_name") %></div>
							            <p class="text-white text-base"><%= rs.getString("course_code") %></p>
							          </div>
							        </div>
							      </div>
							 	
								<div class="student-list h-[0px] transition-all duration-[600ms] overflow-y-scroll scrollbar-hidden">
									<table
										class=" min-w-[300px] text-center table-auto border-collapse course-table"
									>
										<thead>
											<tr class="bg-[#1D2A5F] text-white">
												<th class="bg-[#1D2A5F] text-white">
												<span>Name</span>
												<!-- <span class="invisible_student_list cursor-pointer absolute right-2 top-1/2 -translate-y-[50%] font-bold text-white text-[30px] block w-max ml-auto text-right cursor-pointer px-5"
												>&times;</span> --> 
												</th>
												<th class="bg-[#1D2A5F] text-white">Email</th>
												<th class="bg-[#1D2A5F] text-white">Dept.</th>
											</tr>
										</thead>
										<tbody>
										<% try {
											 String course_id = rs.getString("course_id");
											 Class.forName("com.mysql.jdbc.Driver");
											 Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/coursemanagement","root","Arnob420");
											 PreparedStatement pst1 = con1.prepareStatement("SELECT u.* FROM users AS u JOIN takes AS t ON u.id = t.student_id WHERE t.course_id = ?;");
											 pst1.setString(1, course_id);
											 ResultSet rs1 = pst1.executeQuery();
											 while(rs1.next()) { %>
												<tr class="even:bg-[#141B41] odd:bg-[#2E3857] text-white">
													<td><%= rs1.getString("name") %></td>
													<td><%= rs1.getString("email") %></td>
													<td><%= rs1.getString("contact") %></td>
												</tr>
											<% }
											 } catch(Exception e1) {
													e1.printStackTrace();
												}
											 %>
											 <tr class="even:bg-[#141B41] odd:bg-[#2E3857] text-white">
													<td colspan="3">No more Students</td>
												</tr>
										</tbody>
									</table>
								</div>
							</div>
						
						 							 
						 <% }
						 } catch(Exception e) {
								e.printStackTrace();
							}
						 %>
				</ul>
			</div>
		</section>

		<!-- modal code  -->
		<div id="showStudentModal" class="modal">
			<!-- Modal content -->
			<div class="modal-content">
				<span
					class="close-showStudentModal font-bold text-primary text-[35px] block w-max ml-auto text-right cursor-pointer px-5"
					>&times;</span
				>

				<div class="student-list">
					<table
						class="min-w-[400px] text-center table-auto border-collapse border border-slate-300 mx-auto course-table mb-8"
					>
						<thead>
							<tr class="bg-primary text-white">
								<th class="text-center">Name</th>
							</tr>
						</thead>
						<tbody>
							<tr class="even:bg-amber-100 odd:bg-blue-100">
								<td>Md. Ariful Islam</td>
							</tr>
							<tr class="even:bg-amber-100 odd:bg-blue-100">
								<td>Majedul Islam</td>
							</tr>
							<tr class="even:bg-amber-100 odd:bg-blue-100">
								<td>Sourov Kumar Das</td>
							</tr>
							<tr class="even:bg-amber-100 odd:bg-blue-100">
								<td>Rahat Sarkar Rony</td>
							</tr>
							<tr class="even:bg-amber-100 odd:bg-blue-100">
								<td>Shahrear Jahan</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		
		