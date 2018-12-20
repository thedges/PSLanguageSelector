({
	onInit : function(component, event, helper) {
        var action = component.get("c.getUserLanguage");
        
        action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                var lang = response.getReturnValue();
                console.log('language=' + lang);

                component.set("v.lang", lang);
            }
        });
        $A.enqueueAction(action);
    },
    onLanguageSelect : function(component, event, helper) {
        console.log('onLanguageSelect()...');
        
        var lang = component.get('v.lang');
        console.log('language=' + lang);
        
        var action = component.get("c.changeLanguage");
        action.setParams({
            "lang": lang
        });
        
        action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                console.log('response=' + response.getReturnValue());

                location.reload();    
                //$A.get('e.force:refreshView').fire();
            }
        });
        $A.enqueueAction(action);
        
	}
})