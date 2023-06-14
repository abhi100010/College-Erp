<!---------------- Session starts form here ----------------------->
<?php  
	session_start();
	if (!$_SESSION["LoginAdmin"])
	{
		header('location:../login/login.php');
	}
		require_once "../connection/connection.php";
		$_SESSION['LoginTeacher']="";
	?>
<!---------------- Session Ends form here ------------------------>

<!--*********************** PHP code starts from here for data insertion into database ******************************* -->
<?php  
 	if (isset($_POST['btn_save'])) {

 		$department=$_POST["department"];

		$designation=$_POST["designation"];

 		$appointment_type=$_POST["appointment_type"];

 		$employee_name=$_POST["employee_name"];

		$father_name=$_POST["father_name"];

		$hq=$_POST["hq"];

		$employee_role=$_POST["employee_role"];

 		$employee_code=$_POST["employee_code"];

     	$doj=$_POST["doj"];

 		$dob=$_POST["dob"];

		$gender=$_POST["gender"];

		$marital_status=$_POST["marital_status"];

 		$email=$_POST["email"];
 		
 		$phone_no=$_POST["phone_no"];
 		
 		$teacher_status=$_POST["teacher_status"];
 		
		$address=$_POST["address"]; 		
 			
		$city=$_POST["city"];
		
        $state=$_POST["state"];
		
		$country=$_POST["country"];

        $teacher_status=$_POST["teacher_status"];

		$unet=$_POST["unet"];

 		$date=date("d-m-y");

 		$password=$_POST['password'];

 		$role=$_POST['role'];

		
// *****************************************Images upload code starts here********************************************************** 
 		$profile_image = $_FILES['profile_image']['name'];$tmp_name=$_FILES['profile_image']['tmp_name'];$path = "images/".$profile_image;move_uploaded_file($tmp_name, $path);

// *****************************************Images upload code end here********************************************************** 


 		$query="Insert into teacher_info(department,designation,appointment_type,employee_name,father_name,hq,employee_role,employee_code,doj,dob,gender,marital_status,email,phone_no,profile_image,address,city,state,country,teacher_status,unet,hire_date)values('$department','$designation','$appointment_type','$employee_name','$father_name','$hq','$employee_role','$employee_code','$doj','$dob','$gender','$marital_status','$email','$phone_no','$profile_image','$address','$city','$state','$country','$teacher_status','$unet','$date')";
 		$run=mysqli_query($con, $query);
 		if ($run) {
 			echo "Your Data has been submitted";
 		}
 		else {
 			echo "Your Data has not been submitted";
 		}
 		$query2="insert into login(user_id,Password,Role)values('$email','$password','$role')";
 		$run2=mysqli_query($con, $query2);
 		if ($run2) {
 			echo "Your Data has been submitted into login";
 		}
 		else {
 			echo "Your Data has not been submitted into login";
 		}
 	}
?>


<?php  
	if (isset($_POST['btn_save2'])) {
		$course_code=$_POST['course_code'];

		$semester=$_POST['semester'];

		$teacher_id=$_POST['teacher_id'];

		$subject_code=$_POST['subject_code'];

		$total_classes=$_POST['total_classes'];

		$date=date("d-m-y");

		$query3="insert into teacher_courses(course_code,semester,teacher_id,subject_code,assign_date,total_classes)values('$course_code','$semester','$teacher_id','$subject_code','$date','$total_classes')";
		$run3=mysqli_query($con,$query3);
		if ($run3) {
 			echo "Your Data has been submitted";
 		}
 		else {
 			echo "Your Data has not been submitted";
 		}


	}
?>
<!--*********************** PHP code end from here for data insertion into database ******************************* -->
 

<!doctype html>
<html lang="en">
	<head>
		<title>Admin - Register Teacher</title>
	</head>
	<body>
		<?php include('../common/common-header.php') ?>
		<?php include('../common/admin-sidebar.php') ?>
		<main role="main" class="col-xl-10 col-lg-9 col-md-8 ml-sm-auto px-md-4 mb-2 w-100">
			<div class="sub-main">
				<div class="text-center d-flex flex-wrap flex-md-nowrap pt-3 pb-2 mb-3 text-white admin-dashboard pl-3">
					<div class="d-flex">
						<h4 class="mr-5">Teacher Management System </h4>
						<button type="button" class="btn btn-primary ml-5" data-toggle="modal" data-target=".bd-example-modal-lg">Add Teacher</button>
					</div>
				</div>
				<div class="row w-100">
					<div class=" col-lg-6 col-md-6 col-sm-12 mt-1 ">
						<div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
							<div class="modal-dialog modal-lg">
								<div class="modal-content">
									<div class="modal-header bg-info text-white">
										<h4 class="modal-title text-center">Add New Teacher</h4>
									</div>
									<div class="modal-body">
										<form action="teacher.php" method="post" enctype="multipart/form-data">
										<div class="row mt-3">
												<div class="col-md-4">
													<div class="form-group">
														<label for="exampleInputPassword1">Department Name: </label>
														<select class="browser-default custom-select" name="department">
                                                        <option>Select </option>
															<option value="Agriculture">Agriculture</option>
															<option value="Applied_Science_Chemistry">AppliedScience(Chemistry)</option>
															<option value="Applied_Science_Physics">AppliedScience(Physics)</option>
															<option value="Computer_Application">Computer Application</option>
															<option value="Civil_Engg">Civil Engg</option>
															<option value="Computer_Science_&_Engg">Computer Science & Engg</option>
															<option value="Electronics_&_Communication_Engg">Electronics & Communication Engg</option>
															<option value="Electrical_Engg">Electrical Engg</option>
															<option value="Fashion_Design">Fashion Design</option>
															<option value="Hotel_Management">Hotel Management</option>
															<option value="Law">Law</option>
															<option value="Mechanical_Engg">Mechanical Engg</option>
															<option value="Management_Studies">Management Studies</option>
															<option value="Pharamacy">Pharamacy</option>
															<option value="Training_Placement_Cell">Training Placement Cell</option>
                                                         </select>													
				                                    </div>
                                                </div>
										    <div class="col-md-4">
												 <div class="form-group">
														<label for="exampleInputPassword1">Designation: </label>
														<select class="browser-default custom-select" name="designation">
                                                        <option>Select </option>
															<option value="professor">Professor</option>
															<option value="associate_professor">Associate professor</option>
															<option value="assestant_professor">Assestant professor</option>
															<option value="instructor">Instructor</option>
															<option value="data_entry_operator">Data Entry Operator</option>
															<option value="attendant">Attendant</option>

													    </select>
												  </div>
                                            </div>
											<div class="col-md-4">
													<div class="formp">
														<label for="exampleInputPassword1">Appointment Type:</label>
														<select class="browser-default custom-select" name="appointment_type">
															<option>Select </option>
															<option value="Regular">Regular</option>
															<option value="Contract">Contract</option>
															<option value="Adhoc">Adhoc</option>

														</select>
													</div>
											</div>
                                        </div>
										<div class="row">
											<div class="col-md-4">
												<div class="form-group">
														<label for="exampleInputEmail1">Employee Name: </label>
														<input type="text" name="employee_name" class="form-control" required="" placeholder="Employee Name">
												</div>
                                            </div>
											<div class="col-md-4">
												<div class="form-group">
														<label for="exampleInputEmail1">Father's Name: </label>
														<input type="text" name="father_name" class="form-control" required="" placeholder="Father Name">
												</div>
                                            </div>
											<div class="col-md-4">
													<div class="formp">
														<label for="exampleInputPassword1">Highest Qualification:</label>
														<select class="browser-default custom-select" name="hq">
															<option>Select Status</option>
															<option value="m.tech">M.Tech</option>
															<option value="mca">MCA</option>
															<option value="mba">MBA</option>
															<option value="m.pharma">M.Pharma</option>
                                                            <option value="b.tech">B.Tech</option>
														</select>
													</div>
											</div>
                                        </div>
										<div class="row">
                                            <div class="col-md-4">
													<div class="formp">
														<label for="exampleInputPassword1">Employee Role:</label>
														<select class="browser-default custom-select" name="employee_role">
															<option>Select </option>
															<option value="head">Head</option>
                                                            <option value="faculty">Faculty</option>
															<option value="staff">Staff</option>
														</select>
													</div>
											</div>
											<div class="col-md-4">
												<div class="form-group">
														<label for="exampleInputEmail1">Employee Code: </label>
														<input type="text" name="employee_code" class="form-control" required="" placeholder="Employee Code">
												</div>
                                            </div>
											<div class="col-md-4">
													<div class="form-group">
														<label for="exampleInputEmail1">Date of Joining: </label>
														<input type="date" name="doj" class="form-control">
													</div>
											</div>
                                        </div>	   
										<div class="row">
												<div class="col-md-4">
													<div class="form-group">
														<label for="exampleInputEmail1">Date of Birth: </label>
														<input type="date" name="dob" class="form-control">
													</div>
												</div>
												<div class="col-md-4">
													<div class="formp">
														<label for="exampleInputPassword1">Gender:</label>
														<select class="browser-default custom-select" name="gender">
															<option selected>Select Gender</option>
															<option value="Male">Male</option>
															<option value="Female">Female</option>
														</select>
													</div>
												</div>
												<div class="col-md-4">
													<div class="formp">
														<label for="exampleInputPassword1">Marital Status:</label>
														<select class="browser-default custom-select" name="marital_status">
															<option selected>Select Status</option>
															<option value="Married">Married</option>
															<option value="Unmarried">Unmarried</option>
														</select>
													</div>
												</div>
											</div>		
									    <div class="row">
												<div class="col-md-4">
													<div class="formp">
														<label for="exampleInputPassword1"> Email Address:</label>
														<input type="text" name="email" class="form-control" required="" placeholder="Enter Email">
													</div>
												</div>
												<div class="col-md-4">
													<div class="formp">
														<label for="exampleInputPassword1">Mobile No</label>
														<input type="number" name="phone_no" class="form-control"placeholder="Enter Mobile Number">
													</div>
												</div>
												<div class="col-md-4">
													<div class="formp">
														<label for="exampleInputPassword1">Select Your Profile </label>
														<input type="file" name="profile_image" class="form-control">
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-md-4">
													<div class="form-group">
														<label for="exampleInputEmail1">Address: </label>
														<input type="text" name="address" class="form-control" placeholder="Enter Address">
													</div>
												</div>
                                            </div>
											<div class="row">
                                                <div class="col-md-4">
												    <div class="formp">
														<label for="exampleInputPassword1">City:</label>
														<input type="text" name="city" class="form-control" placeholder="Enter city">
												    </div>
											    </div>
                                            
											<div class="col-md-4">
												<div class="formp">
														<label for="exampleInputPassword1">State:</label>
														<select class="browser-default custom-select" name="state">
                                                        <option>Select </option>
															<option value="Bihar">Bihar</option>
															<option value="Punjab">Punjab</option>
															<option value="Delhi">Delhi</option>
															<option value="Jammu">Jammu</option>
															<option value="Jharkhand">jharkhand</option>
															<option value="Uttar Pardesh">Uttar Pardesh</option>
															<option value="Utrakhand">Utrakhand</option>
															<option value="Haryana">Haryana</option>
															<option value="Bangal">Bangal</option>
															<option value="Maharastra">Maharatra</option>
															<option value="Gujrat">Gujrat</option>
															<option value="Anurachal Pardesh">Anurachal Pardesh</option>
															<option value="Madhya pardesh">Madhya Pardesh</option>
															<option value="Sikkim">Sikkim</option>
															<option value="Rajsthan">Rajsthan</option>
                                                         </select>													
														
												</div>
											</div>
												<div class="col-md-4">
													<div class="form-group">
														<label for="exampleInputEmail1">Country: </label>
														<select class="browser-default custom-select" name="country">
                                                        <option>Select </option>
															<option value="India">India</option>
															<option value="Nepal">Nepal</option>
															<option value="Bhutan">Bhutan</option>
															<option value="Myamar">Myamar</option>
															<option value="America">America</option>
                                                        </select>
													</div>
												</div>
                                            </div>  	
											<div class="row">
												<div class="col-md-4">
													<div class="form-group">
														<label for="exampleInputEmail1">Teacher Status: </label>
														<select class="browser-default custom-select" name="teacher_status">
															<option selected>Select Status</option>
															<option value="Permanent">Permanent</option>
															<option value="Contract">Contract</option>
														</select>
													</div>
                                                </div>
											
												<div class="col-md-4">
													<div class="formp">
														<label for="exampleInputPassword1">UGC/NET Qualified:</label>
														<select class="browser-default custom-select" name="unet">
															<option>Select Status</option>
															<option value="Yes">Yes</option>
															<option value="No">No</option>
														</select>
													</div>
												</div>
                                             </div>	

												
											
												
											<!-- _________________________________________________________________________________
																				Hidden Values are here
											_________________________________________________________________________________ -->
											<div>
												<input type="hidden" name="password" value="teacher123*">
												<input type="hidden" name="role" value="Teacher">
											</div>
											<!-- _________________________________________________________________________________
																				Hidden Values are end here
											_________________________________________________________________________________ -->
											<div class="modal-footer">
												<input type="submit" class="btn btn-primary" name="btn_save" value="Save Data">
												<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row w-100">
					<div class="col-md-12 ml-2">
						<section class="mt-3">
							<div class="row">
								<div class="col-md-3 offset-9 pt-5 mb-2">
									<!-- Large modal -->
									<button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bd-example-modal-lg1">Assign Subjects</button>
									<div class="modal fade bd-example-modal-lg1" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
									<div class="modal-dialog modal-lg">
											<div class="modal-content">
												<div class="modal-header bg-info text-white">
													<h4 class="modal-title text-center">Assign Subjects To Teachers</h4>
												</div>
												<div class="modal-body">
													<form action="teacher.php" method="POST" enctype="multipart/form-data">
														<div class="row mt-3">
															<div class="col-md-6">
																<div class="form-group">
																	<label for="exampleInputEmail1">Select Course:*</label>
																	<select class="browser-default custom-select" name="course_code" required="">
																		<option >Select Course</option>
																		<?php
																			$query="select distinct(course_code) from time_table";
																			$run=mysqli_query($con,$query);
																			while($row=mysqli_fetch_array($run)) {
																			echo	"<option value=".$row['course_code'].">".$row['course_code']."</option>";
																			}
																		?>
																	</select>
																</div>
															</div>
															<div class="col-md-6">
																<div class="form-group">
																	<label for="exampleInputPassword1" required>Enter Semester:*</label>
																	<input type="text" name="semester" class="form-control">
																</div>
															</div>
														</div>
														<div class="row">
															<div class="col-md-6">
																<div class="form-group">
																	<label for="exampleInputPassword1">Enter Teacher Id:*</label>
																	<input type="text" name="teacher_id" class="form-control" required>
																</div>
															</div>
															<div class="col-md-6">
																<div class="form-group">
																	<label for="exampleInputPassword1">Please Select Subject:*</label>
																	<select class="browser-default custom-select" name="subject_code" required="">
																		<option >Select Subject</option>
																		<?php
																			$query="select subject_code from time_table";
																			$run=mysqli_query($con,$query);
																			while($row=mysqli_fetch_array($run)) {
																			echo	"<option value=".$row['subject_code'].">".$row['subject_code']."</option>";
																			}
																		?>
																	</select>
																</div>
															</div>
														</div>
														<div class="row">
															<div class="col-md-6">
																<div class="form-group">
																	<label for="exampleInputPassword1">Enter Total Classes:*</label>
																	<input type="text" name="total_classes" class="form-control" required>
																</div>
															</div>
														</div>
														<div class="modal-footer">
															<input type="submit" class="btn btn-primary" name="btn_save2">
															<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
														</div>
													</form>
												</div>
											</div>
									</div>
									</div>
								</div>
							</div>
							<table class="w-100 table-elements mb-5 table-three-tr" cellpadding="10">
								<tr class="table-tr-head table-three text-white">
									<th>Teacher ID</th>
									<th>Teacher Name</th>
									<th>Current Address</th>
									<th>Hire Date</th>
									<th>Email</th>
									<th>Operations</th>
								</tr>
								<?php 
								$query="select teacher_id,employee_name,address,hire_date,email from teacher_info";
								$run=mysqli_query($con,$query);
								while($row=mysqli_fetch_array($run)) {
									echo "<tr>";
									echo "<td>".$row["teacher_id"]."</td>";
									echo "<td>".$row["employee_name"]." </td>";
									echo "<td>".$row["address"]."</td>";
									echo "<td>".$row["hire_date"]."</td>";
									echo "<td>".$row["email"]."</td>";
									echo	"<td width='170'><a class='btn btn-primary' href=display-teacher.php?teacher_id=".$row['teacher_id'].">Profile</a> <a class='btn btn-danger' href=delete-function.php?teacher_id=".$row['teacher_id'].">Delete</a></td>";
									echo "</tr>";
								}
								?>
							</table>				
						</section>
					</div>
				</div>	 	
			</div>
		</main>
		<script type="text/javascript" src="../bootstrap/js/jquery.min.js"></script>
		<script type="text/javascript" src="../bootstrap/js/bootstrap.min.js"></script>
	</body>
</html>


