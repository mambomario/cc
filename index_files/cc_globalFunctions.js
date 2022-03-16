function iframeLoaded_Generic(iFrameId) {
    var iFrameID = document.getElementById(iFrameId);
    if (iFrameID) {
        iFrameID.height = iFrameID.height;
        iFrameID.height = (iFrameID.contentWindow.document.body.scrollHeight + 20) + "px";
    }
}

function iframeFirstLoad_Generic(iframeId, divFrameId) {
    $("#" + iframeId).removeClass("displayNone");
    $("#" + divFrameId).removeClass("holds-the-iframe");

    // After we finish loading the contents of the iframe .. we do a little workaround to hide the iframe in case of no relation data.
    // In case there is something to show .. it's enough to set the class without minimum height parameter.
    
    if (divFrameId == 'divFrameDetailPeopleWrapper') {
        $("#" + divFrameId).removeClass("iframeWrapperSmall");   
        $("#" + divFrameId).addClass("iframeWrapperSmallWithoutHeight");   
    }
    

    iframeLoaded_Generic(iframeId);
}

function ShowDetail(imgPlus, imgMinus, imgWaiting, tableId, hdFirstCall, UpdatePanelId, parentIframeID) {
    if (hdFirstCall != "") {
        var hd = document.getElementById(hdFirstCall);
        if (hd.value == "false") {
            hd.value = "true";
            $(document.getElementById(imgWaiting)).show();
            LoadData(UpdatePanelId, '');
        }
    }
    $(document.getElementById(imgPlus)).hide();
    $(document.getElementById(imgMinus)).show();
    $(document.getElementById(tableId)).show();
    parent.iframeLoaded_Generic(parentIframeID);
}

function HideDetail(imgPlus, imgMinus, table, parentIframeID) {
    $(document.getElementById(imgMinus)).hide();
    $(document.getElementById(table)).hide();
    $(document.getElementById(imgPlus)).show();
    parent.iframeLoaded_Generic(parentIframeID);
}

function LoadData(UpdatePanelId, Tag) {
    __doPostBack(UpdatePanelId, Tag);
}

