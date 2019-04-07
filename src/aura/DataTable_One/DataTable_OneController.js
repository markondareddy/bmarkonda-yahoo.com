({
	show : function(component, event, helper) {
        var columns=[{label:'Account Name',fieldName:'Name',type:'text'},
                     {label:'Account Phone',fieldName:'Phone',type:'text'},
                     {label:'Industry',fieldName:'Industry',type:'text'},
                     {label:'Rating',fieldName:'Rating',type:'text'}
                    ];
        component.set("v.mycolumns",columns);
       var action=component.get("c.getAccounts");
       action.setCallback(this,function(response){
           var state=response.getState();
           if(state==='SUCCESS'){
               var result =response.getReturnValue()
               component.set("v.myAccounts",result);
           }
       });   
       $A.enqueueAction(action);
	}
})