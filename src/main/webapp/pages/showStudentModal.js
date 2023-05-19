var showStudentModal = document.getElementById("showStudentModal");

var courseLists = [...document.querySelectorAll(".course_item")];

courseLists.forEach((v) => {
	v.addEventListener("click", (e) => {
		e.preventDefault();
		const student_list = v.nextElementSibling;
		if([...student_list.classList].includes('h-[250px]')) {
			student_list.classList.remove('h-[250px]');
			student_list.classList.add('h-[0px]');
		}
		else {
			student_list.classList.add('h-[250px]');
			student_list.classList.remove('h-[0px]');
		}
	});
});

//var invisible_student_list = [...document.querySelectorAll('.invisible_student_list')];

/*invisible_student_list.forEach(v => {
	v.addEventListener('click', e => {
		
		e.target.parentElement.parentElement.parentElement.parentElement.parentElement.classList.add('h-[0px]');
		e.target.parentElement.parentElement.parentElement.parentElement.parentElement.classList.remove('h-[250px]');
	})
})*/

let span2 = document.getElementsByClassName("close-showStudentModal")[0];
console.log(span2);

span2.onclick = () => {
	showStudentModal.style.display = "none";
};

window.onclick = function (event) {
	if (event.target == showStudentModal) {
		showStudentModal.style.display = "none";
	}
};
