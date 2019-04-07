<aura:application extends="force:slds" >
    <aura:attribute name="selTabId" type="String" default="tab1" />
    <div aura:id="data-entry">
        <lightning:tabset variant="default" selectedTabId="{!v.selTabId}" >
            <lightning:tab label="Mobile"  tabindex="1" id="tab1" title="Mobile">
                <p>Apple</p>
                <p>Samsung</p>
                <p>Lenovo</p>
            </lightning:tab>
             
            <lightning:tab label="Laptop"  tabindex="2" id="tab2" title="Laptop">
                <p>Apple</p>
                <p>Lenovo</p>
                <p>Dell</p>
            </lightning:tab>  
             
            <lightning:tab label="Tablet" tabindex="3" id="tab3" title="Tablet">
                <p>Apple</p>
                <p>Lenovo</p>
                <p>Dell</p>
            </lightning:tab> 
        </lightning:tabset>
    </div>
     
    <div class="slds-clearfix">
        <div class="slds-float_left">
            <!--disabled the back button on first Tab-->   
            <lightning:button disabled="{!v.selTabId == 'tab1'}" variant="neutral" label="Back" onclick="{!c.back}" />
        </div>
        <div class="slds-float_right">
            <!--disabled the back button on last Tab-->
            <lightning:button variant="brand" disabled="{!v.selTabId == 'tab3'}" label="Next" onclick="{!c.next}" />
        </div>
    </div>
	
</aura:application>