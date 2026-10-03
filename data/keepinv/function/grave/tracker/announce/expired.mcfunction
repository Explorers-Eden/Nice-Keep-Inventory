data modify storage eden:temp keepinv.entry merge value {type:"expired",flag:"notified"}
function keepinv:grave/tracker/announce/send with storage eden:temp keepinv.entry
