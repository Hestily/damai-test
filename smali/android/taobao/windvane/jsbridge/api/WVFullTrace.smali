.class public Landroid/taobao/windvane/jsbridge/api/WVFullTrace;
.super Landroid/taobao/windvane/jsbridge/WVApiPlugin;
.source "Taobao"


# static fields
.field private static final TAG:Ljava/lang/String; = "WVFullTrace"


# instance fields
.field private propertyLimit:I

.field private spanWrapper:Landroid/taobao/windvane/fullspan/SpanWrapper;

.field private stageLimit:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/taobao/windvane/jsbridge/WVApiPlugin;-><init>()V

    const/16 v0, 0x3e8

    .line 2
    iput v0, p0, Landroid/taobao/windvane/jsbridge/api/WVFullTrace;->stageLimit:I

    .line 3
    iput v0, p0, Landroid/taobao/windvane/jsbridge/api/WVFullTrace;->propertyLimit:I

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 2

    const-string v0, "log"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p2, p3}, Landroid/taobao/windvane/jsbridge/api/WVFullTrace;->log(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    return v1

    :cond_0
    const-string/jumbo v0, "stage"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0, p2, p3}, Landroid/taobao/windvane/jsbridge/api/WVFullTrace;->stage(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    return v1

    :cond_1
    const-string/jumbo v0, "property"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p0, p2, p3}, Landroid/taobao/windvane/jsbridge/api/WVFullTrace;->property(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public initialize(Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->initialize(Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;)V

    .line 2
    invoke-static {}, Landroid/taobao/windvane/config/WVCommonConfig;->getInstance()Landroid/taobao/windvane/config/WVCommonConfig;

    sget-object p1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-boolean p1, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->enableWVFullTrace:Z

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    instance-of p1, p2, Landroid/taobao/windvane/webview/IFullTrace;

    if-eqz p1, :cond_1

    .line 4
    check-cast p2, Landroid/taobao/windvane/webview/IFullTrace;

    invoke-interface {p2}, Landroid/taobao/windvane/webview/IFullTrace;->getSpanWrapper()Landroid/taobao/windvane/fullspan/SpanWrapper;

    move-result-object p1

    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVFullTrace;->spanWrapper:Landroid/taobao/windvane/fullspan/SpanWrapper;

    :cond_1
    return-void
.end method

.method public final log(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVFullTrace;->spanWrapper:Landroid/taobao/windvane/fullspan/SpanWrapper;

    if-eqz v1, :cond_0

    .line 4
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6
    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/api/WVFullTrace;->spanWrapper:Landroid/taobao/windvane/fullspan/SpanWrapper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/taobao/windvane/fullspan/SpanWrapper;->releaseLog(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final property(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVFullTrace;->spanWrapper:Landroid/taobao/windvane/fullspan/SpanWrapper;

    if-eqz v1, :cond_0

    .line 4
    :goto_0
    iget v1, p0, Landroid/taobao/windvane/jsbridge/api/WVFullTrace;->propertyLimit:I

    if-lez v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6
    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/api/WVFullTrace;->spanWrapper:Landroid/taobao/windvane/fullspan/SpanWrapper;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/taobao/windvane/fullspan/SpanWrapper;->setCustomTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget v1, p0, Landroid/taobao/windvane/jsbridge/api/WVFullTrace;->propertyLimit:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/taobao/windvane/jsbridge/api/WVFullTrace;->propertyLimit:I

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final stage(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVFullTrace;->spanWrapper:Landroid/taobao/windvane/fullspan/SpanWrapper;

    if-eqz v1, :cond_1

    .line 4
    :goto_0
    iget v1, p0, Landroid/taobao/windvane/jsbridge/api/WVFullTrace;->stageLimit:I

    if-lez v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6
    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/api/WVFullTrace;->spanWrapper:Landroid/taobao/windvane/fullspan/SpanWrapper;

    invoke-virtual {v2, v1}, Landroid/taobao/windvane/fullspan/SpanWrapper;->customStage(Ljava/lang/String;)Lcom/taobao/analysis/v3/FalcoStage;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 8
    invoke-interface {v2, v1}, Lcom/taobao/analysis/v3/FalcoStage;->start(Ljava/lang/Long;)V

    .line 9
    invoke-interface {v2, v1}, Lcom/taobao/analysis/v3/FalcoStage;->finish(Ljava/lang/Long;)V

    .line 10
    :cond_0
    iget v1, p0, Landroid/taobao/windvane/jsbridge/api/WVFullTrace;->stageLimit:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/taobao/windvane/jsbridge/api/WVFullTrace;->stageLimit:I

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
