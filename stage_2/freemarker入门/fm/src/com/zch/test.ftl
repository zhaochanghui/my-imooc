${name}

<div>------------------------------</div>

<#list lists as v>
${v_index} ----${v} 

</#list>

<div>--------------------->map</div>

<#list maps?keys as key>
	${key}---${maps[key].name}---${maps[key].price?string("0.00")}
</#list>