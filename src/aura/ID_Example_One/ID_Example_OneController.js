({
	show : function(component, event, helper) {
		var name=component.find("name").get("v.value");
        component.find("myName").set("v.value",name);
	}
})