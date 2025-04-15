.class public Landroid/taobao/windvane/extra/performance2/WVFSPManager;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/windvane/extra/performance2/WVFSPManager$FSPCallback;,
        Landroid/taobao/windvane/extra/performance2/WVFSPManager$CompletionHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FSP"

.field public static final WV_FSP_STATE_Initialize:I = 0x0

.field public static final WV_FSP_STATE_NavigationDidEnd:I = 0x2

.field public static final WV_FSP_STATE_NavigationDidStart:I = 0x1

.field public static final WV_FSP_STATE_UnitFinished:I = 0x3


# instance fields
.field private fspCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/taobao/windvane/extra/performance2/WVFSPManager$FSPCallback;",
            ">;"
        }
    .end annotation
.end field

.field private startTime:J

.field private state:I

.field private time:J

.field public time_H5Pages:J

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private commitStat()V
    .locals 6

    .line 1
    invoke-static {}, Landroid/taobao/windvane/WVPerformanceManager;->getInstance()Landroid/taobao/windvane/WVPerformanceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/WVPerformanceManager;->getConfig()Landroid/taobao/windvane/WVPerformanceConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/WVPerformanceConfig;->isOpenFSP()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getPerformanceMonitor()Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getPerformanceMonitor()Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface;

    move-result-object v0

    iget-object v1, p0, Landroid/taobao/windvane/extra/performance2/WVFSPManager;->url:Ljava/lang/String;

    iget-wide v2, p0, Landroid/taobao/windvane/extra/performance2/WVFSPManager;->time:J

    iget-wide v4, p0, Landroid/taobao/windvane/extra/performance2/WVFSPManager;->startTime:J

    sub-long/2addr v2, v4

    invoke-interface {v0, v1, v2, v3}, Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface;->didPageStartInFSP(Ljava/lang/String;J)V

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FSP_URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/taobao/windvane/extra/performance2/WVFSPManager;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nFSP_Time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/taobao/windvane/extra/performance2/WVFSPManager;->time:J

    iget-wide v3, p0, Landroid/taobao/windvane/extra/performance2/WVFSPManager;->startTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FSP"

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public eventForFSPStop()Ljava/lang/String;
    .locals 1

    const-string v0, "Event_FSP_Stop"

    return-object v0
.end method

.method public jsCodeForFSP()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Landroid/taobao/windvane/WVPerformanceManager;->getInstance()Landroid/taobao/windvane/WVPerformanceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/WVPerformanceManager;->getConfig()Landroid/taobao/windvane/WVPerformanceConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/WVPerformanceConfig;->isOpenFSP()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const-string/jumbo v0, "windvane-AIT-badcase-metaname"

    .line 2
    invoke-static {}, Landroid/taobao/windvane/WVPerformanceManager;->getInstance()Landroid/taobao/windvane/WVPerformanceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/taobao/windvane/WVPerformanceManager;->getConfig()Landroid/taobao/windvane/WVPerformanceConfig;

    move-result-object v1

    invoke-virtual {v1}, Landroid/taobao/windvane/WVPerformanceConfig;->getfSPFilterAnimation()Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "(function(){var badCaseMetaName=undefined;var classNames={};var ids={};var plainTextLabels={\'SPAN\':1,\'I\':1};var badCaseDOMName=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "data-observe-windvane-FSP-badcase-domname"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\";var previousTime=0;var callback=function(records){if(badCaseMetaName==undefined){if(document.querySelector(\'meta[name=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\"]\')){badCaseMetaName=document.querySelector(\'meta[name=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"]\').getAttribute(\'content\');if(badCaseMetaName){var metaNames=[];metaNames=badCaseMetaName.split(\'|\');for(var i=0;i<metaNames.length;i++){var metaName=metaNames[i].substring(1,metaNames[i].length);if(metaNames[i].substring(0,1)==\'.\'){classNames[metaName]=true}else if(metaNames[i].substring(0,1)==\'#\'){ids[metaName]=true}}}}}var visibleTop=0;var visibleBottom=document.documentElement.clientHeight;var visibleLeft=0;var visibleRight=document.documentElement.clientWidth;var isAlreadySendMessage=false;var show=undefined;var hasBadCase=undefined;for(var record of records){var domNode=record.target;if(domNode==undefined){continue}if(record.addedNodes.length==0){continue}if(domNode.nodeType==1){}else if(domNode.nodeType==3){var parentNode=domNode.parentElement;if(parentNode.nodeType==1){domNode=parentNode}else{continue}}else{continue}var isPlainText=true;for(var i=0;i<record.addedNodes.length;i++){var addedDom=record.addedNodes[i];if(addedDom.nodeType==1&&plainTextLabels[addedDom.tagName]!=1){isPlainText=false;break}}if(isPlainText){continue}if(show==undefined){var domNodeTop=domNode.getBoundingClientRect().top;var domNodeBottom=domNode.getBoundingClientRect().bottom;var domNodeLeft=domNode.getBoundingClientRect().left;var domNodeRight=domNode.getBoundingClientRect().right;show=domNodeTop<visibleBottom&&domNodeBottom>visibleTop&&domNodeLeft<visibleRight&&domNodeRight>visibleLeft;if(record.addedNodes.length>0){var firstAddedDom=record.addedNodes[0];if(firstAddedDom.nodeType==1){var addedDomNodeTop=firstAddedDom.getBoundingClientRect().top;var addedDomNodeBottom=firstAddedDom.getBoundingClientRect().bottom;var addedDomNodeLeft=firstAddedDom.getBoundingClientRect().left;var addedDomNodeRight=firstAddedDom.getBoundingClientRect().right;show=addedDomNodeTop<visibleBottom&&addedDomNodeBottom>visibleTop&&addedDomNodeLeft<visibleRight&&addedDomNodeRight>visibleLeft}}}var filter=domNode.tagName!=\'HTML\'&&domNode.tagName!=\'BODY\'&&domNode.tagName!=\'HEAD\'&&domNode.tagName!=\'SCRIPT\'&&domNode.tagName!=\'STYLE\';if(!show&&filter){break}if(show&&filter){if(window.getComputedStyle&&"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "){var domNodeCssStyle=window.getComputedStyle(domNode,null);if((domNodeCssStyle.getPropertyValue(\"transform\")!=\"\"&&domNodeCssStyle.getPropertyValue(\"transform\")!=\"none\")||(domNodeCssStyle.getPropertyValue(\"animation-name\")!=\"\"&&domNodeCssStyle.getPropertyValue(\"animation-name\")!=\"none\")){continue}var allHasAnimation=true;for(var i=0;i<record.addedNodes.length;i++){var addedDom=record.addedNodes[i];var addedDomCssStyle=window.getComputedStyle(addedDom,null);if(addedDom.nodeType==1){if((addedDomCssStyle.getPropertyValue(\"transform\")!=\"\"&&addedDomCssStyle.getPropertyValue(\"transform\")!=\"none\")||(addedDomCssStyle.getPropertyValue(\"animation-name\")!=\"\"&&addedDomCssStyle.getPropertyValue(\"animation-name\")!=\"none\")){}else{allHasAnimation=false;break}}}if(allHasAnimation==true){continue}}if(badCaseMetaName==undefined){var currentTime=(new Date()).getTime();if(currentTime-previousTime>10){console.log(\'hybrid://WVPerformance:FSP/receiveFSPTime?{\"time\":\'+currentTime+\'}\');previousTime=currentTime}break}var isInIds=ids[domNode.id]==true;var isInClassNames=false;for(var i=0;i<domNode.classList.length;i++){if(classNames[domNode.classList[i]]==true){isInClassNames=true;break}}if(isInClassNames||isInIds){domNode.setAttribute(badCaseDOMName,\'true\');hasBadCase=true;continue}if(domNode.parentNode!=document){if(domNode.parentNode.getAttribute(badCaseDOMName)==\'true\'){domNode.setAttribute(badCaseDOMName,\'true\');hasBadCase=true;continue}}if(hasBadCase==undefined&&isAlreadySendMessage==false){var currentTime=(new Date()).getTime();if(currentTime-previousTime>10){console.log(\'hybrid://WVPerformance:FSP/receiveFSPTime?{\"time\":\'+currentTime+\'}\');previousTime=currentTime;isAlreadySendMessage=true}}}}};var mo=new MutationObserver(callback);var options={\'childList\':true,\'subtree\':true};mo.observe(document.body,options);document.addEventListener(\'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/taobao/windvane/extra/performance2/WVFSPManager;->eventForFSPStop()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\',function(){mo.disconnect();mo.takeRecords()})})()"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public navigationDidFinishWithURL(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/taobao/windvane/WVPerformanceManager;->getInstance()Landroid/taobao/windvane/WVPerformanceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/WVPerformanceManager;->getConfig()Landroid/taobao/windvane/WVPerformanceConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/WVPerformanceConfig;->isOpenFSP()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Landroid/taobao/windvane/extra/performance2/WVFSPManager;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/taobao/windvane/extra/performance2/WVFSPManager;->time:J

    .line 4
    iput-wide v0, p0, Landroid/taobao/windvane/extra/performance2/WVFSPManager;->time_H5Pages:J

    .line 5
    iput-object p1, p0, Landroid/taobao/windvane/extra/performance2/WVFSPManager;->url:Ljava/lang/String;

    const/4 v0, 0x2

    .line 6
    iput v0, p0, Landroid/taobao/windvane/extra/performance2/WVFSPManager;->state:I

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "navigationDidFinishWithURL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FSP"

    invoke-static {v0, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public navigationDidStart()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/taobao/windvane/WVPerformanceManager;->getInstance()Landroid/taobao/windvane/WVPerformanceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/WVPerformanceManager;->getConfig()Landroid/taobao/windvane/WVPerformanceConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/WVPerformanceConfig;->isOpenFSP()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Landroid/taobao/windvane/extra/performance2/WVFSPManager;->state:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 3
    iput v0, p0, Landroid/taobao/windvane/extra/performance2/WVFSPManager;->state:I

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/taobao/windvane/extra/performance2/WVFSPManager;->startTime:J

    const-string v0, "FSP"

    const-string/jumbo v1, "navigationDidStart"

    .line 5
    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public receiveJSMessage(J)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/taobao/windvane/WVPerformanceManager;->getInstance()Landroid/taobao/windvane/WVPerformanceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/WVPerformanceManager;->getConfig()Landroid/taobao/windvane/WVPerformanceConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/WVPerformanceConfig;->isOpenFSP()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-wide p1, p0, Landroid/taobao/windvane/extra/performance2/WVFSPManager;->time:J

    .line 3
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVFSPManager;->fspCallbacks:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/taobao/windvane/extra/performance2/WVFSPManager$FSPCallback;

    .line 5
    invoke-interface {v1, p1, p2}, Landroid/taobao/windvane/extra/performance2/WVFSPManager$FSPCallback;->onFSPBack(J)V

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FSP"

    invoke-static {p2, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFspCallback(Landroid/taobao/windvane/extra/performance2/WVFSPManager$FSPCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVFSPManager;->fspCallbacks:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVFSPManager;->fspCallbacks:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVFSPManager;->fspCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVFSPManager;->fspCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public unitDidFinish(Landroid/taobao/windvane/extra/performance2/WVFSPManager$CompletionHandler;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/taobao/windvane/WVPerformanceManager;->getInstance()Landroid/taobao/windvane/WVPerformanceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/WVPerformanceManager;->getConfig()Landroid/taobao/windvane/WVPerformanceConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/WVPerformanceConfig;->isOpenFSP()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Landroid/taobao/windvane/extra/performance2/WVFSPManager;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    .line 3
    iput v0, p0, Landroid/taobao/windvane/extra/performance2/WVFSPManager;->state:I

    .line 4
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVFSPManager;->commitStat()V

    const-string v0, "FSP"

    const-string/jumbo v1, "unitDidFinish"

    .line 5
    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-interface {p1}, Landroid/taobao/windvane/extra/performance2/WVFSPManager$CompletionHandler;->stopObserving()V

    .line 7
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVFSPManager;->url:Ljava/lang/String;

    iget-wide v1, p0, Landroid/taobao/windvane/extra/performance2/WVFSPManager;->time:J

    invoke-interface {p1, v0, v1, v2}, Landroid/taobao/windvane/extra/performance2/WVFSPManager$CompletionHandler;->uploadFSPInfo(Ljava/lang/String;J)V

    .line 8
    iget-wide v0, p0, Landroid/taobao/windvane/extra/performance2/WVFSPManager;->time:J

    iput-wide v0, p0, Landroid/taobao/windvane/extra/performance2/WVFSPManager;->time_H5Pages:J

    :cond_1
    :goto_0
    return-void
.end method
