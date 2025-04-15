.class public Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lcom/uc/webview/export/internal/interfaces/INetwork;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$AliNetCallback;
    }
.end annotation


# static fields
.field public static final NETWORK_WORKING_MODE_ASYNC:I = 0x1

.field public static final NETWORK_WORKING_MODE_SYNC:I


# instance fields
.field private BUFFER_SIZE:I

.field LOGTAG:Ljava/lang/String;

.field private bizCode:Ljava/lang/String;

.field public isReload:Z

.field public isStop:Z

.field private isUseWebpImg:Z

.field private mAliNetwork:Lanetwork/channel/Network;

.field private mContext:Landroid/content/Context;

.field private mNetworkType:I

.field private mWorkingMode:I

.field public mainRequest:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/uc/webview/export/internal/interfaces/EventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private webView:Landroid/taobao/windvane/extra/uc/WVUCWebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string/jumbo v0, "windvane"

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const-string/jumbo v0, "windvane"

    .line 5
    invoke-direct {p0, p1, p2, v0}, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 5

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AliNetwork"

    .line 7
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;->LOGTAG:Ljava/lang/String;

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;->mNetworkType:I

    const/4 v0, 0x1

    .line 9
    iput v0, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;->mWorkingMode:I

    const/16 v1, 0x400

    .line 10
    iput v1, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;->BUFFER_SIZE:I

    .line 11
    iput-boolean v0, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;->isUseWebpImg:Z

    const-string v1, ""

    .line 12
    iput-object v1, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;->bizCode:Ljava/lang/String;

    const/4 v1, 0x0

    .line 13
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;->isReload:Z

    .line 14
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;->isStop:Z

    .line 15
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;->mainRequest:Ljava/util/HashSet;

    .line 16
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;->mContext:Landroid/content/Context;

    .line 17
    iput p2, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;->mNetworkType:I

    .line 18
    iput-object p3, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;->bizCode:Ljava/lang/String;

    .line 19
    sget-object p2, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-wide p2, p2, Landroid/taobao/windvane/config/WVCommonConfigData;->ucsdk_image_strategy_rate:D

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    cmpl-double v4, p2, v2

    if-lez v4, :cond_0

    .line 20
    iput-boolean v0, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;->isUseWebpImg:Z

    goto :goto_0

    .line 21
    :cond_0
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;->isUseWebpImg:Z

    .line 22
    :goto_0
    iget p2, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;->mNetworkType:I

    if-eqz p2, :cond_2

    if-eq p2, v0, :cond_1

    const/4 p3, 0x2

    if-eq p2, p3, :cond_1

    goto :goto_1

    .line 23
    :cond_1
    new-instance p2, Ltb/cx0;

    invoke-direct {p2, p1}, Ltb/cx0;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;->mAliNetwork:Lanetwork/channel/Network;

    goto :goto_1

    .line 24
    :cond_2
    new-instance p2, Ltb/a52;

    invoke-direct {p2, p1}, Ltb/a52;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;->mAliNetwork:Lanetwork/channel/Network;

    :goto_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, p1, v0, p2}, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/taobao/windvane/extra/uc/WVUCWebView;)V
    .locals 1

    const/4 v0, 0x2

    .line 3
    invoke-direct {p0, p1, v0, p2}, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 4
    iput-object p3, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;->webView:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    return-void
.end method

.method static synthetic access$000(Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;->BUFFER_SIZE:I

    return p0
.end method

.method static synthetic access$100(Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private injectTraceContext(Lanetwork/channel/Request;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;->webView:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getSpanWrapper()Landroid/taobao/windvane/fullspan/SpanWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/taobao/analysis/v3/FalcoGlobalTracer;->get()Lcom/taobao/analysis/v3/FalcoTracer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v1, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;->webView:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    invoke-virtual {v1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getSpanWrapper()Landroid/taobao/windvane/fullspan/SpanWrapper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/taobao/windvane/fullspan/SpanWrapper;->context()Lcom/taobao/opentracing/api/SpanContext;

    move-result-object v1

    .line 4
    invoke-interface {v0, v1}, Lcom/taobao/analysis/v3/FalcoTracer;->injectContextToMap(Lcom/taobao/opentracing/api/SpanContext;)Ljava/util/Map;

    move-result-object v0

    .line 5
    invoke-interface {p1, v0}, Lanetwork/channel/Request;->setTraceContext(Ljava/util/Map;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;->webView:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    if-nez p1, :cond_1

    .line 7
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v0, "webView == null"

    invoke-static {p1, v0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v0, "webView.getFalcoSpan() == null"

    invoke-static {p1, v0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 9
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;->LOGTAG:Ljava/lang/String;

    invoke-static {p1}, Landroid/taobao/windvane/util/CommonUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private sendRequestInternal(Landroid/taobao/windvane/extra/uc/AliRequestAdapter;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->getAliRequest()Lanetwork/channel/Request;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;->injectTraceContext(Lanetwork/channel/Request;)V

    .line 3
    invoke-virtual {p1}, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->getEventHandler()Lcom/uc/webview/export/internal/interfaces/EventHandler;

    move-result-object v1

    .line 4
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestURL eventId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p1}, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->getEventHandler()Lcom/uc/webview/export/internal/interfaces/EventHandler;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p1}, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",isSync="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->isSynchronous()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-static {v2, v3}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_0
    iget v2, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;->mWorkingMode:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_5

    .line 10
    iget-object v2, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;->mAliNetwork:Lanetwork/channel/Network;

    invoke-interface {v2, v0, v4}, Lanetwork/channel/Network;->syncSend(Lanetwork/channel/Request;Ljava/lang/Object;)Lanetwork/channel/Response;

    move-result-object v0

    .line 11
    invoke-interface {v0}, Lanetwork/channel/Response;->getError()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 12
    invoke-virtual {p0, v2}, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;->getErrorFromException(Ljava/lang/Throwable;)I

    move-result p1

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->error(ILjava/lang/String;)V

    goto :goto_1

    .line 13
    :cond_1
    invoke-interface {v0}, Lanetwork/channel/Response;->getStatusCode()I

    move-result v2

    .line 14
    invoke-interface {v0}, Lanetwork/channel/Response;->getStatisticData()Lanetwork/channel/statist/StatisticData;

    move-result-object v4

    iget-object v4, v4, Lanetwork/channel/statist/StatisticData;->connectionType:Ljava/lang/String;

    .line 15
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, ""

    const/4 v7, 0x0

    if-nez v5, :cond_2

    const-string v5, "http2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x2

    .line 16
    invoke-interface {v1, v4, v7, v2, v6}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->status(IIILjava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_2
    invoke-interface {v1, v7, v7, v2, v6}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->status(IIILjava/lang/String;)V

    .line 18
    :goto_0
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 19
    iget-object v4, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "status code="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_3
    invoke-interface {v0}, Lanetwork/channel/Response;->getConnHeadFields()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->headers(Ljava/util/Map;)V

    .line 21
    invoke-interface {v0}, Lanetwork/channel/Response;->getBytedata()[B

    move-result-object v0

    if-eqz v0, :cond_4

    .line 22
    array-length v2, v0

    invoke-interface {v1, v0, v2}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->data([BI)V

    :cond_4
    const-string v0, "enddata"

    .line 23
    iput-object v0, p1, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->cancelPhase:Ljava/lang/String;

    .line 24
    invoke-interface {v1}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->endData()V

    goto :goto_1

    :cond_5
    if-ne v2, v3, :cond_6

    .line 25
    new-instance v2, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$AliNetCallback;

    invoke-direct {v2, p0}, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$AliNetCallback;-><init>(Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;)V

    .line 26
    invoke-virtual {v2, v1}, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$AliNetCallback;->setEventHandler(Lcom/uc/webview/export/internal/interfaces/EventHandler;)V

    .line 27
    invoke-virtual {p1}, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$AliNetCallback;->setURL(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v2, p1}, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$AliNetCallback;->setRequest(Lcom/uc/webview/export/internal/interfaces/IRequest;)V

    .line 29
    iget-object v1, p0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;->mAliNetwork:Lanetwork/channel/Network;

    invoke-interface {v1, v0, v4, v4, v2}, Lanetwork/channel/Network;->asyncSend(Lanetwork/channel/Request;Ljava/lang/Object;Landroid/os/Handler;Lanetwork/channel/NetworkListener;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 30
    invoke-virtual {p1, v0}, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->setFutureResponse(Ljava/util/concurrent/Future;)V

    :cond_6
    :goto_1
    return v3
.end method

.method private setRequestBodyHandler(Lanetwork/channel/Request;Landroid/taobao/windvane/extra/uc/AliRequestAdapter;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->getUploadFileTotalLen()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-virtual {p2}, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->getUploadFileMap()Ljava/util/Map;

    move-result-object v0

    .line 3
    invoke-virtual {p2}, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->getUploadDataMap()Ljava/util/Map;

    move-result-object p2

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 5
    new-instance v2, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$1;

    invoke-direct {v2, p0, v1, v0, p2}, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter$1;-><init>(Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;ILjava/util/Map;Ljava/util/Map;)V

    .line 6
    invoke-interface {p1, v2}, Lanetwork/channel/Request;->setBodyHandler(Lanetwork/channel/IBodyHandler;)V

    :cond_0
    return-void
.end method

.method public static willLog(Lcom/uc/webview/export/internal/interfaces/EventHandler;)Z
    .locals 2

    .line 1
    invoke-interface {p0}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->getResourceType()I

    move-result v0

    .line 2
    invoke-interface {p0}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->isSynchronous()Z

    move-result p0

    if-eqz v0, :cond_1

    const/16 v1, 0xe

    if-eq v0, v1, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public cancelPrefetchLoad()V
    .locals 0

    return-void
.end method

.method public clearUserSslPrefTable()V
    .locals 0

    return-void
.end method

.method public formatRequest(Lcom/uc/webview/export/internal/interfaces/EventHandler;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;JII)Lcom/uc/webview/export/internal/interfaces/IRequest;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uc/webview/export/internal/interfaces/EventHandler;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;JII)",
            "Lcom/uc/webview/export/internal/interfaces/IRequest;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    .line 1
    invoke-static/range {p2 .. p2}, Landroid/taobao/windvane/extra/uc/Escape;->tryDecodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2
    new-instance v14, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;

    iget-boolean v13, v0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;->isUseWebpImg:Z

    iget-object v12, v0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;->bizCode:Ljava/lang/String;

    move-object v1, v14

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-wide/from16 v10, p9

    move-object/from16 v16, v12

    move/from16 v12, p11

    move/from16 v17, v13

    move/from16 v13, p12

    move-object/from16 v18, v14

    move/from16 v14, v17

    move-object/from16 v15, v16

    invoke-direct/range {v1 .. v15}, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;-><init>(Lcom/uc/webview/export/internal/interfaces/EventHandler;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;JIIZLjava/lang/String;)V

    .line 3
    iget-boolean v1, v0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;->isReload:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "reload"

    move-object/from16 v2, v18

    .line 4
    iput-object v1, v2, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->cancelPhase:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, v18

    .line 5
    :goto_0
    invoke-virtual {v2}, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->getAliRequest()Lanetwork/channel/Request;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;->setRequestBodyHandler(Lanetwork/channel/Request;Landroid/taobao/windvane/extra/uc/AliRequestAdapter;)V

    move-object/from16 v1, p1

    .line 6
    invoke-interface {v1, v2}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->setRequest(Lcom/uc/webview/export/internal/interfaces/IRequest;)V

    move/from16 v3, p11

    .line 7
    invoke-interface {v1, v3}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->setResourceType(I)V

    return-object v2
.end method

.method public getErrorFromException(Ljava/lang/Throwable;)I
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/apache/http/ParseException;

    if-eqz v0, :cond_0

    const/16 p1, -0x2b

    goto :goto_0

    .line 2
    :cond_0
    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_1

    const/16 p1, -0x2e

    goto :goto_0

    .line 3
    :cond_1
    instance-of v0, p1, Ljava/net/SocketException;

    if-eqz v0, :cond_2

    const/16 p1, -0x2f

    goto :goto_0

    .line 4
    :cond_2
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_3

    const/16 p1, -0x2c

    goto :goto_0

    .line 5
    :cond_3
    instance-of v0, p1, Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_4

    const/16 p1, -0x2d

    goto :goto_0

    .line 6
    :cond_4
    instance-of p1, p1, Ljava/net/UnknownHostException;

    if-eqz p1, :cond_5

    const/4 p1, -0x2

    goto :goto_0

    :cond_5
    const/16 p1, -0x63

    :goto_0
    return p1
.end method

.method public getNetworkType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.0"

    return-object v0
.end method

.method public requestURL(Lcom/uc/webview/export/internal/interfaces/EventHandler;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;JII)Z
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uc/webview/export/internal/interfaces/EventHandler;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;JII)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestURL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isUCProxyReq:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " requestType:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p11

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static/range {p2 .. p2}, Landroid/taobao/windvane/extra/uc/Escape;->tryDecodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3
    new-instance v1, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;

    iget-boolean v2, v0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;->isUseWebpImg:Z

    iget-object v3, v0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;->bizCode:Ljava/lang/String;

    move-object v5, v1

    move-object/from16 v6, p1

    move-object/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-wide/from16 v14, p9

    move/from16 v16, p11

    move/from16 v17, p12

    move/from16 v18, v2

    move-object/from16 v19, v3

    invoke-direct/range {v5 .. v19}, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;-><init>(Lcom/uc/webview/export/internal/interfaces/EventHandler;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;JIIZLjava/lang/String;)V

    .line 4
    iget-boolean v2, v0, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;->isReload:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "reload"

    .line 5
    iput-object v2, v1, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->cancelPhase:Ljava/lang/String;

    .line 6
    :cond_0
    invoke-virtual {v1}, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->getAliRequest()Lanetwork/channel/Request;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;->setRequestBodyHandler(Lanetwork/channel/Request;Landroid/taobao/windvane/extra/uc/AliRequestAdapter;)V

    move-object/from16 v2, p1

    .line 7
    invoke-interface {v2, v1}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->setRequest(Lcom/uc/webview/export/internal/interfaces/IRequest;)V

    .line 8
    invoke-direct {v0, v1}, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;->sendRequestInternal(Landroid/taobao/windvane/extra/uc/AliRequestAdapter;)Z

    move-result v1

    return v1
.end method

.method public sendRequest(Lcom/uc/webview/export/internal/interfaces/IRequest;)Z
    .locals 0

    .line 1
    check-cast p1, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;

    .line 2
    invoke-direct {p0, p1}, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;->sendRequestInternal(Landroid/taobao/windvane/extra/uc/AliRequestAdapter;)Z

    move-result p1

    return p1
.end method
