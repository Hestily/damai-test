.class public Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$AliNetCallback;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanetwork/channel/NetworkCallBack$FinishListener;
.implements Lanetwork/channel/NetworkCallBack$ProgressListener;
.implements Lanetwork/channel/NetworkCallBack$ResponseCodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AliNetCallback"
.end annotation


# instance fields
.field mEventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;

.field mReq:Lcom/uc/webview/export/internal/interfaces/IRequest;

.field mUrl:Ljava/lang/String;

.field size:I

.field final synthetic this$0:Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;

.field total:I


# direct methods
.method protected constructor <init>(Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$AliNetCallback;->this$0:Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$AliNetCallback;->size:I

    .line 3
    iput p1, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$AliNetCallback;->total:I

    return-void
.end method


# virtual methods
.method public onDataReceived(Lanetwork/channel/NetworkEvent$ProgressEvent;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$AliNetCallback;->this$0:Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;

    iget-object p2, p2, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;->LOGTAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onDataReceived] event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "event.getSize():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lanetwork/channel/NetworkEvent$ProgressEvent;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lanetwork/channel/NetworkEvent$ProgressEvent;->getBytedata()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object p2, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$AliNetCallback;->mEventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;

    invoke-interface {p1}, Lanetwork/channel/NetworkEvent$ProgressEvent;->getBytedata()[B

    move-result-object v0

    invoke-interface {p1}, Lanetwork/channel/NetworkEvent$ProgressEvent;->getSize()I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->data([BI)V

    .line 4
    iget p2, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$AliNetCallback;->size:I

    invoke-interface {p1}, Lanetwork/channel/NetworkEvent$ProgressEvent;->getSize()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$AliNetCallback;->size:I

    .line 5
    iget p2, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$AliNetCallback;->total:I

    if-nez p2, :cond_1

    .line 6
    invoke-interface {p1}, Lanetwork/channel/NetworkEvent$ProgressEvent;->getTotal()I

    move-result p1

    iput p1, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$AliNetCallback;->total:I

    :cond_1
    return-void
.end method

.method public onFinished(Lanetwork/channel/NetworkEvent$FinishEvent;Ljava/lang/Object;)V
    .locals 7

    .line 1
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$AliNetCallback;->this$0:Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;

    iget-object p2, p2, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;->LOGTAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onFinished] event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$AliNetCallback;->this$0:Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;

    iget-object p2, p2, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;->LOGTAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onFinished code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lanetwork/channel/NetworkEvent$FinishEvent;->getHttpCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$AliNetCallback;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rev_size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$AliNetCallback;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", total_size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$AliNetCallback;->total:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getPerformanceMonitor()Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 5
    :try_start_0
    invoke-interface {p1}, Lanetwork/channel/NetworkEvent$FinishEvent;->getStatisticData()Lanetwork/channel/statist/StatisticData;

    move-result-object p2

    iget-object v4, p2, Lanetwork/channel/statist/StatisticData;->connectionType:Ljava/lang/String;

    .line 6
    invoke-interface {p1}, Lanetwork/channel/NetworkEvent$FinishEvent;->getStatisticData()Lanetwork/channel/statist/StatisticData;

    move-result-object p2

    iget-wide v0, p2, Lanetwork/channel/statist/StatisticData;->tcpConnTime:J

    .line 7
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getPerformanceMonitor()Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface;

    move-result-object v0

    iget-object v1, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$AliNetCallback;->mUrl:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v5, 0x0

    invoke-interface/range {v0 .. v6}, Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface;->didResourceFinishLoadAtTime(Ljava/lang/String;JLjava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 8
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getPerformanceMonitor()Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface;

    move-result-object v0

    iget-object v1, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$AliNetCallback;->mUrl:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v5, 0x0

    const-string/jumbo v4, "unknown"

    invoke-interface/range {v0 .. v6}, Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface;->didResourceFinishLoadAtTime(Ljava/lang/String;JLjava/lang/String;J)V

    .line 9
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$AliNetCallback;->this$0:Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;

    iget-object v0, v0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "didResourceFinishLoadAtTime failed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_1
    :goto_0
    iget-object p2, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$AliNetCallback;->mReq:Lcom/uc/webview/export/internal/interfaces/IRequest;

    check-cast p2, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;

    .line 11
    invoke-interface {p1}, Lanetwork/channel/NetworkEvent$FinishEvent;->getHttpCode()I

    move-result v0

    .line 12
    invoke-static {}, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->getInstance()Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;

    move-result-object v1

    iget-object v2, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$AliNetCallback;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->onFinish(ILjava/lang/String;)V

    if-gez v0, :cond_3

    .line 13
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 14
    iget-object v1, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$AliNetCallback;->this$0:Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;

    iget-object v1, v1, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",desc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-interface {p1}, Lanetwork/channel/NetworkEvent$FinishEvent;->getDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$AliNetCallback;->mUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 16
    invoke-static {v1, v2}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_2
    iget-object v1, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$AliNetCallback;->mEventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;

    invoke-interface {p1}, Lanetwork/channel/NetworkEvent$FinishEvent;->getDesc()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->error(ILjava/lang/String;)V

    .line 18
    invoke-virtual {p2}, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->complete()V

    return-void

    .line 19
    :cond_3
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 20
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$AliNetCallback;->this$0:Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;

    iget-object p1, p1, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;->LOGTAG:Ljava/lang/String;

    const-string v0, "endData"

    invoke-static {p1, v0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string p1, "enddata"

    .line 21
    iput-object p1, p2, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->cancelPhase:Ljava/lang/String;

    .line 22
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$AliNetCallback;->mEventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;

    invoke-interface {p1}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->endData()V

    .line 23
    invoke-virtual {p2}, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->complete()V

    return-void
.end method

.method public onResponseCode(ILjava/util/Map;Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    const-string p3, ""

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$AliNetCallback;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/taobao/windvane/util/WVUrlUtil;->removeQueryParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Landroid/taobao/windvane/util/WVUrlUtil;->removeScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$AliNetCallback;->mReq:Lcom/uc/webview/export/internal/interfaces/IRequest;

    invoke-interface {v2}, Lcom/uc/webview/export/internal/interfaces/IRequest;->getHeaders()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "Referer"

    .line 4
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v3, "referer"

    .line 6
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v3, p3

    :cond_1
    :goto_0
    const-string v2, "0"

    if-eqz v1, :cond_3

    const-string v4, ".htm"

    .line 7
    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, ".html"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    const-string v2, "1"

    :cond_3
    const/16 v4, 0xc8

    if-lt p1, v4, :cond_4

    const/16 v4, 0x130

    if-le p1, v4, :cond_5

    :cond_4
    const/16 v4, 0x133

    if-ne p1, v4, :cond_b

    :cond_5
    const/16 v4, 0x12e

    if-ne p1, v4, :cond_c

    if-eqz p2, :cond_7

    const-string v4, "Location"

    .line 8
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_6

    const-string v4, "location"

    .line 9
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    :cond_6
    if-eqz v4, :cond_7

    .line 10
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 11
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 12
    invoke-static {v4}, Landroid/taobao/windvane/util/WVUrlUtil;->removeQueryParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 13
    invoke-static {v4}, Landroid/taobao/windvane/util/WVUrlUtil;->removeScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_7
    move-object v4, p3

    .line 14
    :cond_8
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, "//err.tmall.com/error1.html"

    .line 15
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "//err.taobao.com/error1.html"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_2

    :cond_9
    const-string v5, "//err.tmall.com/error2.html"

    .line 16
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 17
    iget-object v4, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$AliNetCallback;->mUrl:Ljava/lang/String;

    const/16 v5, 0x1f4

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->getInstance()Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->getBizCodeByUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v3, v5, v2, v1}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->commitStatusCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 18
    :cond_a
    :goto_2
    iget-object v4, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$AliNetCallback;->mUrl:Ljava/lang/String;

    const/16 v5, 0x194

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->getInstance()Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->getBizCodeByUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v3, v5, v2, v1}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->commitStatusCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 19
    :cond_b
    iget-object v4, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$AliNetCallback;->mUrl:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->getInstance()Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->getBizCodeByUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v3, v5, v2, v1}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->commitStatusCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v1

    .line 20
    iget-object v2, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$AliNetCallback;->this$0:Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;

    iget-object v2, v2, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AppMonitorUtil.commitStatusCode error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_3
    const-string/jumbo v1, "x-protocol"

    .line 21
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_e

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_e

    .line 22
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "http"

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 24
    iget-object v1, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$AliNetCallback;->mEventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;

    invoke-interface {v1, v3, v0, p1, p3}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->status(IIILjava/lang/String;)V

    goto :goto_4

    .line 25
    :cond_d
    iget-object v1, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$AliNetCallback;->mEventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;

    invoke-interface {v1, v0, v0, p1, p3}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->status(IIILjava/lang/String;)V

    goto :goto_4

    :cond_e
    const-string v1, ":status"

    .line 26
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 27
    iget-object v1, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$AliNetCallback;->mEventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;

    invoke-interface {v1, v3, v0, p1, p3}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->status(IIILjava/lang/String;)V

    goto :goto_4

    .line 28
    :cond_f
    iget-object v1, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$AliNetCallback;->mEventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;

    invoke-interface {v1, v0, v0, p1, p3}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->status(IIILjava/lang/String;)V

    .line 29
    :goto_4
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$AliNetCallback;->mEventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;

    invoke-interface {p1, p2}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->headers(Ljava/util/Map;)V

    return v0
.end method

.method public setEventHandler(Lcom/uc/webview/export/internal/interfaces/EventHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$AliNetCallback;->mEventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;

    return-void
.end method

.method public setRequest(Lcom/uc/webview/export/internal/interfaces/IRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$AliNetCallback;->mReq:Lcom/uc/webview/export/internal/interfaces/IRequest;

    return-void
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$AliNetCallback;->mUrl:Ljava/lang/String;

    return-void
.end method
