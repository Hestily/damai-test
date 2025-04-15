.class public Landroid/taobao/windvane/extra/performance/WVErrorManager;
.super Ljava/lang/Object;
.source "Taobao"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reportJSError(Landroid/webkit/ConsoleMessage;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Landroid/taobao/windvane/grey/GreyPageManager;->getInstance()Landroid/taobao/windvane/grey/GreyPageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/taobao/windvane/grey/GreyPageManager;->getGreyPageInfo(Ljava/lang/String;)Landroid/taobao/windvane/grey/GreyPageInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "found grey page: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WVErrorManager"

    invoke-static {v2, v0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    :cond_1
    :goto_0
    invoke-static {}, Landroid/taobao/windvane/WVPerformanceManager;->getInstance()Landroid/taobao/windvane/WVPerformanceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/WVPerformanceManager;->getConfig()Landroid/taobao/windvane/WVPerformanceConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/WVPerformanceConfig;->getJsErrorRatio()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v7

    .line 8
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    const-string v3, ""

    if-eqz v0, :cond_3

    const-string v4, "\\+\\+BT\\+\\+"

    .line 9
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 10
    array-length v5, v4

    if-ne v5, v2, :cond_3

    const/4 v3, 0x0

    .line 11
    aget-object v3, v4, v3

    const/4 v5, 0x1

    .line 12
    aget-object v4, v4, v5

    move-object v5, v3

    goto :goto_1

    :cond_3
    move-object v4, v3

    move-object v5, v4

    .line 13
    :goto_1
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 14
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "js error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "msg"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_4

    .line 16
    invoke-virtual {v1}, Landroid/taobao/windvane/grey/GreyPageInfo;->generateOutputString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wxAirTag"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v0, "js_error"

    .line 17
    invoke-static {v0, p1}, Landroid/taobao/windvane/ha/WVHAManager;->uploadApmStage(Ljava/lang/String;Ljava/util/Map;)V

    const-string v2, "WINDVANE_JS_ERROR"

    move-object v3, v7

    .line 18
    invoke-static/range {v2 .. v7}, Landroid/taobao/windvane/ha/WVHAManager;->reportJSError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
