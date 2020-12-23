function toggle_body(d){
	var Target = document.getElementById('body'+d);
	if(!Target){return;}
	var CurrClass = Target.getAttribute("class")||Target.getAttribute("className");
	var CurrStyle = Target.style.display;
	if (CurrStyle == 'none' || CurrClass.indexOf('toggle_hidden', 0)>=0) {
		Target.style.display = 'block';
		var SetClass = CurrClass.replace(/toggle_hidden/, '');
		Target.setAttribute("class", SetClass, 0)||Target.setAttribute("className", SetClass, 0);
	} else {
		Target.style.display = 'none';
	}
}