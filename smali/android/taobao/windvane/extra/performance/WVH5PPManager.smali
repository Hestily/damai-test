.class public Landroid/taobao/windvane/extra/performance/WVH5PPManager;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5PP"

.field public static final WV_H5PP_ZCache_State_Hit:I = 0x2

.field public static final WV_H5PP_ZCache_State_NotHit:I = 0x1

.field public static final WV_H5PP_ZCache_State_NotUse:I

.field private static identify:I


# instance fields
.field private errorCode:Ljava/lang/String;

.field private errorMessage:Ljava/lang/String;

.field private h5_PP_T1:J

.field private h5_PP_T1_uptime:J

.field private h5_PP_TTI:J

.field private h5_PP_initEnd:J

.field private h5_PP_initEnd_uptime:J

.field private h5_PP_initStart:J

.field private h5_PP_initStart_uptime:J

.field private h5_PP_loadRequest:J

.field private h5_PP_loadRequest_uptime:J

.field private h5_PP_startLoad:J

.field private h5_PP_startLoad_uptime:J

.field private htmlUrl:Ljava/lang/String;

.field private htmlZCacheState:I

.field private pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

.field private webView:Landroid/taobao/windvane/webview/IWVWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/taobao/windvane/webview/IWVWebView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->webView:Landroid/taobao/windvane/webview/IWVWebView;

    return-void
.end method

.method static synthetic access$000(Landroid/taobao/windvane/extra/performance/WVH5PPManager;)Landroid/taobao/windvane/extra/performance/WVPagePerformance;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    return-object p0
.end method

.method static synthetic access$100(Landroid/taobao/windvane/extra/performance/WVH5PPManager;)Landroid/taobao/windvane/webview/IWVWebView;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->webView:Landroid/taobao/windvane/webview/IWVWebView;

    return-object p0
.end method

.method private checkNonZeroStage(Landroid/taobao/windvane/fullspan/SpanWrapper;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 5

    .line 1
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 2
    invoke-static {p1, p2, p3}, Landroid/taobao/windvane/util/FullTraceUtils;->addStage(Landroid/taobao/windvane/fullspan/SpanWrapper;Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    return-void
.end method

.method private checkNonZeroStage(Lcom/taobao/monitor/procedure/IProcedure;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 5

    .line 3
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 4
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p1, p2, v0, v1}, Lcom/taobao/monitor/procedure/IProcedure;->stage(Ljava/lang/String;J)Lcom/taobao/monitor/procedure/IProcedure;

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "stage="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " time="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "H5PP"

    invoke-static {p2, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private takeW3CPP()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x7
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->webView:Landroid/taobao/windvane/webview/IWVWebView;

    new-instance v1, Landroid/taobao/windvane/extra/performance/WVH5PPManager$1;

    invoke-direct {v1, p0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager$1;-><init>(Landroid/taobao/windvane/extra/performance/WVH5PPManager;)V

    const-string v2, "(function(performance){var timing=performance&&performance.timing;return timing&&JSON.stringify({ns:timing.navigationStart,fs:timing.fetchStart,rs:timing.requestStart,re:timing.responseEnd,dl:timing.domLoading,dc:timing.domComplete,ds:timing.domContentLoadedEventStart,ls:timing.loadEventStart,le:timing.loadEventEnd})})(window.performance)"

    invoke-interface {v0, v2, v1}, Landroid/taobao/windvane/webview/IWVWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method private uploadToFullTrace(Landroid/view/View;)V
    .locals 4

    .line 1
    instance-of v0, p1, Landroid/taobao/windvane/webview/IFullTrace;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Landroid/taobao/windvane/webview/IFullTrace;

    invoke-interface {p1}, Landroid/taobao/windvane/webview/IFullTrace;->getSpanWrapper()Landroid/taobao/windvane/fullspan/SpanWrapper;

    move-result-object p1

    .line 3
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5_URL"

    invoke-virtual {p1, v1, v0}, Landroid/taobao/windvane/fullspan/SpanWrapper;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v0, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    invoke-static {v0}, Landroid/taobao/windvane/util/CommonUtils;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5_process"

    invoke-virtual {p1, v1, v0}, Landroid/taobao/windvane/fullspan/SpanWrapper;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_isFinished()Z

    move-result v0

    const-string v1, "H5_isFinished"

    invoke-virtual {p1, v1, v0}, Landroid/taobao/windvane/fullspan/SpanWrapper;->setTag(Ljava/lang/String;Z)V

    .line 6
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_errorCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5_errorCode"

    invoke-virtual {p1, v1, v0}, Landroid/taobao/windvane/fullspan/SpanWrapper;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_errorMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5_errorMessage"

    invoke-virtual {p1, v1, v0}, Landroid/taobao/windvane/fullspan/SpanWrapper;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->htmlZCacheState:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "H5_htmlZCacheState"

    invoke-virtual {p1, v1, v0}, Landroid/taobao/windvane/fullspan/SpanWrapper;->setTag(Ljava/lang/String;Ljava/lang/Number;)V

    .line 9
    iget-wide v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->h5_PP_initStart:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "H5_initStart"

    invoke-direct {p0, p1, v1, v0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->checkNonZeroStage(Landroid/taobao/windvane/fullspan/SpanWrapper;Ljava/lang/String;Ljava/lang/Long;)V

    .line 10
    iget-wide v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->h5_PP_initEnd:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "H5_initEnd"

    invoke-direct {p0, p1, v1, v0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->checkNonZeroStage(Landroid/taobao/windvane/fullspan/SpanWrapper;Ljava/lang/String;Ljava/lang/Long;)V

    .line 11
    iget-wide v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->h5_PP_loadRequest:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "H5_loadRequest"

    invoke-direct {p0, p1, v1, v0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->checkNonZeroStage(Landroid/taobao/windvane/fullspan/SpanWrapper;Ljava/lang/String;Ljava/lang/Long;)V

    .line 12
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_startLoad()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "H5_startLoad"

    invoke-direct {p0, p1, v1, v0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->checkNonZeroStage(Landroid/taobao/windvane/fullspan/SpanWrapper;Ljava/lang/String;Ljava/lang/Long;)V

    .line 13
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_navigationStart()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "H5_navigationStart"

    invoke-direct {p0, p1, v1, v0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->checkNonZeroStage(Landroid/taobao/windvane/fullspan/SpanWrapper;Ljava/lang/String;Ljava/lang/Long;)V

    .line 14
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    iget-wide v0, v0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_requestStart_uptime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "H5_requestStart"

    invoke-direct {p0, p1, v1, v0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->checkNonZeroStage(Landroid/taobao/windvane/fullspan/SpanWrapper;Ljava/lang/String;Ljava/lang/Long;)V

    .line 15
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_responseEnd_uptime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "H5_responseEnd"

    invoke-direct {p0, p1, v1, v0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->checkNonZeroStage(Landroid/taobao/windvane/fullspan/SpanWrapper;Ljava/lang/String;Ljava/lang/Long;)V

    .line 16
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    iget-wide v2, v0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_domLoading_uptime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "H5_domLoading"

    invoke-direct {p0, p1, v2, v0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->checkNonZeroStage(Landroid/taobao/windvane/fullspan/SpanWrapper;Ljava/lang/String;Ljava/lang/Long;)V

    .line 17
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    iget-wide v2, v0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_domComplete_uptime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "H5_domComplete"

    invoke-direct {p0, p1, v2, v0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->checkNonZeroStage(Landroid/taobao/windvane/fullspan/SpanWrapper;Ljava/lang/String;Ljava/lang/Long;)V

    .line 18
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_responseEnd()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->checkNonZeroStage(Landroid/taobao/windvane/fullspan/SpanWrapper;Ljava/lang/String;Ljava/lang/Long;)V

    .line 19
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_domContentLoadedEventStart()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "H5_domContentLoadedEventStart"

    invoke-direct {p0, p1, v1, v0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->checkNonZeroStage(Landroid/taobao/windvane/fullspan/SpanWrapper;Ljava/lang/String;Ljava/lang/Long;)V

    .line 20
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_loadEventStart()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "H5_loadEventStart"

    invoke-direct {p0, p1, v1, v0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->checkNonZeroStage(Landroid/taobao/windvane/fullspan/SpanWrapper;Ljava/lang/String;Ljava/lang/Long;)V

    .line 21
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_loadEventEnd()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "H5_loadEventEnd"

    invoke-direct {p0, p1, v1, v0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->checkNonZeroStage(Landroid/taobao/windvane/fullspan/SpanWrapper;Ljava/lang/String;Ljava/lang/Long;)V

    .line 22
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_FP()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "H5_firstPaint"

    invoke-direct {p0, p1, v1, v0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->checkNonZeroStage(Landroid/taobao/windvane/fullspan/SpanWrapper;Ljava/lang/String;Ljava/lang/Long;)V

    .line 23
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_FSP()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "H5_firstScreenPaint"

    invoke-direct {p0, p1, v1, v0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->checkNonZeroStage(Landroid/taobao/windvane/fullspan/SpanWrapper;Ljava/lang/String;Ljava/lang/Long;)V

    .line 24
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_TTI()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "H5_timeToInteractive"

    invoke-direct {p0, p1, v1, v0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->checkNonZeroStage(Landroid/taobao/windvane/fullspan/SpanWrapper;Ljava/lang/String;Ljava/lang/Long;)V

    .line 25
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_T1()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "H5_T1"

    invoke-direct {p0, p1, v1, v0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->checkNonZeroStage(Landroid/taobao/windvane/fullspan/SpanWrapper;Ljava/lang/String;Ljava/lang/Long;)V

    .line 26
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_T2()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "H5_T2"

    invoke-direct {p0, p1, v1, v0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->checkNonZeroStage(Landroid/taobao/windvane/fullspan/SpanWrapper;Ljava/lang/String;Ljava/lang/Long;)V

    .line 27
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_finishLoad()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "H5_finishLoad"

    invoke-direct {p0, p1, v1, v0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->checkNonZeroStage(Landroid/taobao/windvane/fullspan/SpanWrapper;Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public jsCodeForUserPP()Ljava/lang/String;
    .locals 1

    const-string v0, "javascript:(function(){var observer=new PerformanceObserver(function(list,obj){for(var entry of list.getEntries()){if(entry.entryType==\'paint\'&&entry.name==\'first-paint\'){console.log(\'hybrid://WVPerformance:FP/receiveFPTime?{\"time\":\'+entry.startTime+\'}\')}if(entry.entryType==\'longtask\'){console.log(\'hybrid://WVPerformance:TTI/receiveTTITime?{\"time\":\'+(entry.startTime+entry.duration)+\'}\')}}});observer.observe({entryTypes:[\'longtask\',\'paint\']})})()"

    return-object v0
.end method

.method public pageDidFailLoadWithError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->errorCode:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public pageDidFinishIntercept()V
    .locals 0

    return-void
.end method

.method public pageDidFinishLoad(Ljava/lang/String;Lcom/uc/webview/export/WebView;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->uploadInfo()V

    .line 2
    new-instance v0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-direct {v0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    .line 3
    iget-wide v1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->h5_PP_startLoad:J

    invoke-virtual {v0, v1, v2}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->setH5_PP_startLoad(J)V

    .line 4
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    iget-wide v1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->h5_PP_startLoad_uptime:J

    invoke-virtual {v0, v1, v2}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->setH5_PP_startLoad_uptime(J)V

    .line 5
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->setH5_PP_finishLoad(J)V

    .line 6
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->setH5_PP_finishLoad_uptime(J)V

    .line 7
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v0, p1}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->setUrl(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    iget-wide v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->h5_PP_T1:J

    invoke-virtual {p1, v0, v1}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->setH5_PP_T1(J)V

    .line 9
    iget-object p1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    iget-wide v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->h5_PP_T1_uptime:J

    invoke-virtual {p1, v0, v1}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->setH5_PP_T1_uptime(J)V

    .line 10
    iget-object p1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->errorCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->setH5_PP_errorCode(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->errorMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->setH5_PP_errorMessage(Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->takeW3CPP()V

    .line 13
    iget-object p1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->setH5_PP_isFinished(Z)V

    .line 14
    invoke-static {}, Landroid/taobao/windvane/config/WVCommonConfig;->getInstance()Landroid/taobao/windvane/config/WVCommonConfig;

    sget-object p1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-boolean p1, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->uploadPPAfterJs:Z

    if-nez p1, :cond_0

    .line 15
    invoke-virtual {p0, p2}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->uploadPPInfo(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->errorCode:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public pageDidLoadRequest()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->h5_PP_loadRequest:J

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->h5_PP_loadRequest_uptime:J

    return-void
.end method

.method public pageDidStartIntercept()V
    .locals 0

    return-void
.end method

.method public pageDidStartLoad()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    if-eqz v0, :cond_0

    .line 2
    iget-wide v1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->h5_PP_TTI:J

    invoke-virtual {v0, v1, v2}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->setH5_PP_TTI(J)V

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->h5_PP_TTI:J

    .line 4
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->h5_PP_startLoad:J

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->h5_PP_startLoad_uptime:J

    return-void
.end method

.method public receiveFPTime(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->setH5_PP_FP(J)V

    return-void
.end method

.method public receiveHtmlUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->htmlUrl:Ljava/lang/String;

    return-void
.end method

.method public receiveHtmlZCacheState(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->htmlUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 3
    iput p1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->htmlZCacheState:I

    :cond_1
    return-void
.end method

.method public receiveTTITime(J)V
    .locals 5

    .line 1
    iget-wide v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->h5_PP_TTI:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x1388

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 2
    iput-wide p1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->h5_PP_TTI:J

    :cond_0
    return-void
.end method

.method public recordFSP(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->setH5_PP_FSP(J)V

    .line 3
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-static {p1, p2}, Landroid/taobao/windvane/utils/TimeUtils;->generateUptimeFromCurrentTime(J)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->setH5_PP_FSP_uptime(J)V

    return-void
.end method

.method public recordUCT1(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->h5_PP_T1:J

    .line 2
    invoke-static {p1, p2}, Landroid/taobao/windvane/utils/TimeUtils;->generateUptimeFromCurrentTime(J)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->h5_PP_T1_uptime:J

    return-void
.end method

.method public recordUCT2(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->setH5_PP_T2(J)V

    .line 3
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-static {p1, p2}, Landroid/taobao/windvane/utils/TimeUtils;->generateUptimeFromCurrentTime(J)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->setH5_PP_T2_uptime(J)V

    return-void
.end method

.method public uploadInfo()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Landroid/taobao/windvane/WVPerformanceManager;->getInstance()Landroid/taobao/windvane/WVPerformanceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/WVPerformanceManager;->getConfig()Landroid/taobao/windvane/WVPerformanceConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/WVPerformanceConfig;->isOpenH5PP()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Landroid/taobao/windvane/WVPerformanceManager;->getInstance()Landroid/taobao/windvane/WVPerformanceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/WVPerformanceManager;->getConfig()Landroid/taobao/windvane/WVPerformanceConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/WVPerformanceConfig;->isOpenH5_2()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 4
    :cond_2
    new-instance v0, Landroid/taobao/windvane/extra/performance/WVAPMManager;

    const-string v1, "WindVane.H5"

    invoke-direct {v0, v1}, Landroid/taobao/windvane/extra/performance/WVAPMManager;-><init>(Ljava/lang/String;)V

    .line 5
    sget v1, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->identify:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->identify:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->onStart(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v1}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "URL"

    invoke-virtual {v0, v2, v1}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    sget-object v1, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    invoke-static {v1}, Landroid/taobao/windvane/util/CommonUtils;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "process"

    invoke-virtual {v0, v2, v1}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    iget-object v1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v1}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_isFinished()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isFinished"

    invoke-virtual {v0, v2, v1}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    iget-object v1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v1}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_errorCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "errorCode"

    invoke-virtual {v0, v2, v1}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    iget-object v1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v1}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_errorMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "errorMessage"

    invoke-virtual {v0, v2, v1}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    iget v1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->htmlZCacheState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htmlZCacheState"

    invoke-virtual {v0, v2, v1}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    iget-wide v1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->h5_PP_initStart:J

    const-string v3, "initStart"

    invoke-virtual {v0, v3, v1, v2}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->onStage(Ljava/lang/String;J)V

    .line 13
    iget-wide v1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->h5_PP_initEnd:J

    const-string v3, "initEnd"

    invoke-virtual {v0, v3, v1, v2}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->onStage(Ljava/lang/String;J)V

    .line 14
    iget-wide v1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->h5_PP_loadRequest:J

    const-string v3, "loadRequest"

    invoke-virtual {v0, v3, v1, v2}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->onStage(Ljava/lang/String;J)V

    .line 15
    iget-object v1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v1}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_startLoad()J

    move-result-wide v1

    const-string/jumbo v3, "startLoad"

    invoke-virtual {v0, v3, v1, v2}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->onStage(Ljava/lang/String;J)V

    .line 16
    iget-object v1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v1}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_navigationStart()J

    move-result-wide v1

    const-string/jumbo v3, "navigationStart"

    invoke-virtual {v0, v3, v1, v2}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->onStage(Ljava/lang/String;J)V

    .line 17
    iget-object v1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v1}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_fetchStart()J

    move-result-wide v1

    const-string v3, "fetchStart"

    invoke-virtual {v0, v3, v1, v2}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->onStage(Ljava/lang/String;J)V

    .line 18
    iget-object v1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v1}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_responseEnd()J

    move-result-wide v1

    const-string/jumbo v3, "responseEnd"

    invoke-virtual {v0, v3, v1, v2}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->onStage(Ljava/lang/String;J)V

    .line 19
    iget-object v1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v1}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_domContentLoadedEventStart()J

    move-result-wide v1

    const-string v3, "domContentLoadedEventStart"

    invoke-virtual {v0, v3, v1, v2}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->onStage(Ljava/lang/String;J)V

    .line 20
    iget-object v1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v1}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_loadEventStart()J

    move-result-wide v1

    const-string v3, "loadEventStart"

    invoke-virtual {v0, v3, v1, v2}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->onStage(Ljava/lang/String;J)V

    .line 21
    iget-object v1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v1}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_loadEventEnd()J

    move-result-wide v1

    const-string v3, "loadEventEnd"

    invoke-virtual {v0, v3, v1, v2}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->onStage(Ljava/lang/String;J)V

    .line 22
    iget-object v1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v1}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_FP()J

    move-result-wide v1

    const-string v3, "firstPaint"

    invoke-virtual {v0, v3, v1, v2}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->onStage(Ljava/lang/String;J)V

    .line 23
    iget-object v1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v1}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_FSP()J

    move-result-wide v1

    const-string v3, "firstScreenPaint"

    invoke-virtual {v0, v3, v1, v2}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->onStage(Ljava/lang/String;J)V

    .line 24
    iget-object v1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v1}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_TTI()J

    move-result-wide v1

    const-string/jumbo v3, "timeToInteractive"

    invoke-virtual {v0, v3, v1, v2}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->onStage(Ljava/lang/String;J)V

    .line 25
    iget-object v1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v1}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_T1()J

    move-result-wide v1

    const-string v3, "T1"

    invoke-virtual {v0, v3, v1, v2}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->onStage(Ljava/lang/String;J)V

    .line 26
    iget-object v1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v1}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_T2()J

    move-result-wide v1

    const-string v3, "T2"

    invoke-virtual {v0, v3, v1, v2}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->onStage(Ljava/lang/String;J)V

    .line 27
    iget-object v1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v1}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_finishLoad()J

    move-result-wide v1

    const-string v3, "finishLoad"

    invoke-virtual {v0, v3, v1, v2}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->onStage(Ljava/lang/String;J)V

    .line 28
    invoke-virtual {v0}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->onEnd()V

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v1}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5PP"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFinished: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v2}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_isFinished()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errorCode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v2}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_errorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errorMessage: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v2}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_errorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initStart: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->h5_PP_initStart:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initEnd: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->h5_PP_initEnd:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadRequest: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->h5_PP_loadRequest:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startLoad: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v2}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_startLoad()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "navigationStart: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v2}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_navigationStart()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetchStart: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v2}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_fetchStart()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "responseEnd: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v2}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_responseEnd()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "domContentLoadedEventStart: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v2}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_domContentLoadedEventStart()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadEventStart: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v2}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_loadEventStart()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadEventEnd: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v2}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_loadEventEnd()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "firstPaint: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v2}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_FP()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "firstScreenPaint: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v2}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_FSP()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timeToInteractive: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v2}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_TTI()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "T1: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v2}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_T1()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "T2: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v2}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_T2()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishLoad: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v2}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_finishLoad()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public uploadPPInfo(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->uploadToNativeApm(Landroid/view/View;)V

    .line 2
    invoke-direct {p0, p1}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->uploadToFullTrace(Landroid/view/View;)V

    return-void
.end method

.method public uploadToNativeApm(Landroid/view/View;)V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Ltb/yy3;->b:Ltb/yy3;

    invoke-virtual {v0}, Ltb/yy3;->getLauncherProcedure()Lcom/taobao/monitor/procedure/IProcedure;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "H5PP"

    if-eqz v0, :cond_0

    .line 2
    :try_start_1
    invoke-interface {v0}, Lcom/taobao/monitor/procedure/IProcedure;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->uploadToNativeApm(Lcom/taobao/monitor/procedure/IProcedure;)V

    goto :goto_0

    :cond_0
    const-string v0, "LauncherProcedure is not Alive"

    .line 4
    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :goto_0
    sget-object v0, Ltb/yy3;->b:Ltb/yy3;

    invoke-virtual {v0}, Ltb/yy3;->getCurrentActivityProcedure()Lcom/taobao/monitor/procedure/IProcedure;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Lcom/taobao/monitor/procedure/IProcedure;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {p0, v0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->uploadToNativeApm(Lcom/taobao/monitor/procedure/IProcedure;)V

    goto :goto_1

    :cond_1
    const-string v0, "CurrentActivityProcedure is not Alive"

    .line 8
    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :goto_1
    sget-object v0, Ltb/yy3;->b:Ltb/yy3;

    invoke-virtual {v0, p1}, Ltb/yy3;->getProcedure(Landroid/view/View;)Lcom/taobao/monitor/procedure/IProcedure;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 10
    invoke-interface {p1}, Lcom/taobao/monitor/procedure/IProcedure;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {p0, p1}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->uploadToNativeApm(Lcom/taobao/monitor/procedure/IProcedure;)V

    goto :goto_2

    :cond_2
    const-string p1, "Procedure is not Alive"

    .line 12
    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public uploadToNativeApm(Lcom/taobao/monitor/procedure/IProcedure;)V
    .locals 2

    .line 14
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5_URL"

    invoke-interface {p1, v1, v0}, Lcom/taobao/monitor/procedure/IProcedure;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lcom/taobao/monitor/procedure/IProcedure;

    .line 15
    sget-object v0, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    invoke-static {v0}, Landroid/taobao/windvane/util/CommonUtils;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5_process"

    invoke-interface {p1, v1, v0}, Lcom/taobao/monitor/procedure/IProcedure;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lcom/taobao/monitor/procedure/IProcedure;

    .line 16
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_isFinished()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "H5_isFinished"

    invoke-interface {p1, v1, v0}, Lcom/taobao/monitor/procedure/IProcedure;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lcom/taobao/monitor/procedure/IProcedure;

    .line 17
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_errorCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5_errorCode"

    invoke-interface {p1, v1, v0}, Lcom/taobao/monitor/procedure/IProcedure;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lcom/taobao/monitor/procedure/IProcedure;

    .line 18
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_errorMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5_errorMessage"

    invoke-interface {p1, v1, v0}, Lcom/taobao/monitor/procedure/IProcedure;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lcom/taobao/monitor/procedure/IProcedure;

    .line 19
    iget v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->htmlZCacheState:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "H5_htmlZCacheState"

    invoke-interface {p1, v1, v0}, Lcom/taobao/monitor/procedure/IProcedure;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lcom/taobao/monitor/procedure/IProcedure;

    .line 20
    iget-wide v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->h5_PP_initStart_uptime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "H5_initStart"

    invoke-direct {p0, p1, v1, v0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->checkNonZeroStage(Lcom/taobao/monitor/procedure/IProcedure;Ljava/lang/String;Ljava/lang/Long;)V

    .line 21
    iget-wide v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->h5_PP_initEnd_uptime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "H5_initEnd"

    invoke-direct {p0, p1, v1, v0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->checkNonZeroStage(Lcom/taobao/monitor/procedure/IProcedure;Ljava/lang/String;Ljava/lang/Long;)V

    .line 22
    iget-wide v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->h5_PP_loadRequest_uptime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "H5_loadRequest"

    invoke-direct {p0, p1, v1, v0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->checkNonZeroStage(Lcom/taobao/monitor/procedure/IProcedure;Ljava/lang/String;Ljava/lang/Long;)V

    .line 23
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_startLoad_uptime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "H5_startLoad"

    invoke-direct {p0, p1, v1, v0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->checkNonZeroStage(Lcom/taobao/monitor/procedure/IProcedure;Ljava/lang/String;Ljava/lang/Long;)V

    .line 24
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_navigationStart_uptime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "H5_navigationStart"

    invoke-direct {p0, p1, v1, v0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->checkNonZeroStage(Lcom/taobao/monitor/procedure/IProcedure;Ljava/lang/String;Ljava/lang/Long;)V

    .line 25
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_fetchStart_uptime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "H5_fetchStart"

    invoke-direct {p0, p1, v1, v0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->checkNonZeroStage(Lcom/taobao/monitor/procedure/IProcedure;Ljava/lang/String;Ljava/lang/Long;)V

    .line 26
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    iget-wide v0, v0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_requestStart_uptime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "H5_requestStart"

    invoke-direct {p0, p1, v1, v0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->checkNonZeroStage(Lcom/taobao/monitor/procedure/IProcedure;Ljava/lang/String;Ljava/lang/Long;)V

    .line 27
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_responseEnd_uptime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "H5_responseEnd"

    invoke-direct {p0, p1, v1, v0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->checkNonZeroStage(Lcom/taobao/monitor/procedure/IProcedure;Ljava/lang/String;Ljava/lang/Long;)V

    .line 28
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    iget-wide v0, v0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_domLoading_uptime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "H5_domLoading"

    invoke-direct {p0, p1, v1, v0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->checkNonZeroStage(Lcom/taobao/monitor/procedure/IProcedure;Ljava/lang/String;Ljava/lang/Long;)V

    .line 29
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    iget-wide v0, v0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_domComplete_uptime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "H5_domComplete"

    invoke-direct {p0, p1, v1, v0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->checkNonZeroStage(Lcom/taobao/monitor/procedure/IProcedure;Ljava/lang/String;Ljava/lang/Long;)V

    .line 30
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_domContentLoadedEventStart_uptime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "H5_domContentLoadedEventStart"

    invoke-direct {p0, p1, v1, v0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->checkNonZeroStage(Lcom/taobao/monitor/procedure/IProcedure;Ljava/lang/String;Ljava/lang/Long;)V

    .line 31
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_loadEventStart_uptime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "H5_loadEventStart"

    invoke-direct {p0, p1, v1, v0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->checkNonZeroStage(Lcom/taobao/monitor/procedure/IProcedure;Ljava/lang/String;Ljava/lang/Long;)V

    .line 32
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_loadEventEnd_uptime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "H5_loadEventEnd"

    invoke-direct {p0, p1, v1, v0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->checkNonZeroStage(Lcom/taobao/monitor/procedure/IProcedure;Ljava/lang/String;Ljava/lang/Long;)V

    .line 33
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_FP_uptime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "H5_firstPaint"

    invoke-direct {p0, p1, v1, v0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->checkNonZeroStage(Lcom/taobao/monitor/procedure/IProcedure;Ljava/lang/String;Ljava/lang/Long;)V

    .line 34
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_FSP_uptime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "H5_firstScreenPaint"

    invoke-direct {p0, p1, v1, v0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->checkNonZeroStage(Lcom/taobao/monitor/procedure/IProcedure;Ljava/lang/String;Ljava/lang/Long;)V

    .line 35
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_TTI_uptime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "H5_timeToInteractive"

    invoke-direct {p0, p1, v1, v0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->checkNonZeroStage(Lcom/taobao/monitor/procedure/IProcedure;Ljava/lang/String;Ljava/lang/Long;)V

    .line 36
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_T1_uptime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "H5_T1"

    invoke-direct {p0, p1, v1, v0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->checkNonZeroStage(Lcom/taobao/monitor/procedure/IProcedure;Ljava/lang/String;Ljava/lang/Long;)V

    .line 37
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_T2_uptime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "H5_T2"

    invoke-direct {p0, p1, v1, v0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->checkNonZeroStage(Lcom/taobao/monitor/procedure/IProcedure;Ljava/lang/String;Ljava/lang/Long;)V

    .line 38
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_finishLoad_uptime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "H5_finishLoad"

    invoke-direct {p0, p1, v1, v0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->checkNonZeroStage(Lcom/taobao/monitor/procedure/IProcedure;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public webViewDidFinishInit()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->h5_PP_initEnd:J

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->h5_PP_initEnd_uptime:J

    return-void
.end method

.method public webViewDidStartInit()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->h5_PP_initStart:J

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->h5_PP_initStart_uptime:J

    return-void
.end method
