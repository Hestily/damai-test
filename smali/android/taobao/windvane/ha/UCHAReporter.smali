.class public Landroid/taobao/windvane/ha/UCHAReporter;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static INSTANCE:Landroid/taobao/windvane/ha/UCHAReporter; = null

.field public static final TAG:Ljava/lang/String; = "UCHAReporter"

.field private static commonID:J

.field private static mLogRunnable:Ljava/lang/Runnable;


# instance fields
.field private activityName:Ljava/lang/String;

.field private currentUrl:Ljava/lang/String;

.field private linkId:Ljava/lang/String;

.field private linkIdUrlCache:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private logHandler:Landroid/os/Handler;

.field private minUploadInterval:I

.field private reportType:I

.field private sb:Ljava/lang/StringBuffer;

.field private webViewWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/uc/webview/export/WebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/taobao/windvane/ha/UCHAReporter$1;

    invoke-direct {v0}, Landroid/taobao/windvane/ha/UCHAReporter$1;-><init>()V

    sput-object v0, Landroid/taobao/windvane/ha/UCHAReporter;->mLogRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/taobao/windvane/ha/UCHAReporter;->logHandler:Landroid/os/Handler;

    .line 3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/ha/UCHAReporter;->sb:Ljava/lang/StringBuffer;

    .line 4
    new-instance v0, Landroidx/collection/LruCache;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroidx/collection/LruCache;-><init>(I)V

    iput-object v0, p0, Landroid/taobao/windvane/ha/UCHAReporter;->linkIdUrlCache:Landroidx/collection/LruCache;

    const-string v0, ""

    .line 5
    iput-object v0, p0, Landroid/taobao/windvane/ha/UCHAReporter;->linkId:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Landroid/taobao/windvane/ha/UCHAReporter;->currentUrl:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Landroid/taobao/windvane/ha/UCHAReporter;->activityName:Ljava/lang/String;

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Landroid/taobao/windvane/ha/UCHAReporter;->reportType:I

    const/16 v0, 0x3e8

    .line 9
    iput v0, p0, Landroid/taobao/windvane/ha/UCHAReporter;->minUploadInterval:I

    .line 10
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UC_HA"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 12
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/taobao/windvane/ha/UCHAReporter;->logHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Landroid/taobao/windvane/ha/UCHAReporter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/taobao/windvane/ha/UCHAReporter;->commitUCHA()V

    return-void
.end method

.method private commitUCHA()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/ha/UCHAReporter;->sb:Ljava/lang/StringBuffer;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Landroid/taobao/windvane/WVPerformanceManager;->getInstance()Landroid/taobao/windvane/WVPerformanceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/WVPerformanceManager;->getConfig()Landroid/taobao/windvane/WVPerformanceConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/WVPerformanceConfig;->closeUCHA()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget-object v1, p0, Landroid/taobao/windvane/ha/UCHAReporter;->linkId:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroid/taobao/windvane/ha/UCHAReporter;->linkIdUrlCache:Landroidx/collection/LruCache;

    invoke-virtual {v2, v1}, Landroidx/collection/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/taobao/windvane/ha/UCHAReporter;->currentUrl:Ljava/lang/String;

    :goto_0
    const-string/jumbo v2, "url"

    .line 4
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v2, p0, Landroid/taobao/windvane/ha/UCHAReporter;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "error"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget v2, p0, Landroid/taobao/windvane/ha/UCHAReporter;->reportType:I

    if-nez v2, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 7
    invoke-static {}, Landroid/taobao/windvane/grey/GreyPageManager;->getInstance()Landroid/taobao/windvane/grey/GreyPageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/taobao/windvane/grey/GreyPageManager;->getGreyPageInfo(Ljava/lang/String;)Landroid/taobao/windvane/grey/GreyPageInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 8
    sget-object v3, Landroid/taobao/windvane/ha/UCHAReporter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "found grey page: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/taobao/windvane/util/TaoLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2}, Landroid/taobao/windvane/grey/GreyPageInfo;->generateOutputString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "wxAirTag"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_2
    iget v2, p0, Landroid/taobao/windvane/ha/UCHAReporter;->reportType:I

    if-eqz v2, :cond_6

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    const-string v2, ""

    goto :goto_1

    :cond_3
    const-string v2, "WindVane.Memory"

    goto :goto_1

    :cond_4
    const-string v2, "WindVane.BlackScreen"

    goto :goto_1

    :cond_5
    const-string v2, "WindVane.UCHAR"

    goto :goto_1

    :cond_6
    const-string v2, "TEMP_H5_ERROR_EVENT"

    .line 11
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 12
    sget-wide v3, Landroid/taobao/windvane/ha/UCHAReporter;->commonID:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/taobao/windvane/ha/UCHAReporter;->activityName:Ljava/lang/String;

    invoke-static {v2, v1, v3, v4, v0}, Landroid/taobao/windvane/ha/WVHAManager;->commitData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 13
    :cond_7
    iget-object v0, p0, Landroid/taobao/windvane/ha/UCHAReporter;->sb:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 14
    invoke-direct {p0}, Landroid/taobao/windvane/ha/UCHAReporter;->end()V

    :cond_8
    :goto_2
    return-void
.end method

.method private end()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/ha/UCHAReporter;->logHandler:Landroid/os/Handler;

    sget-object v1, Landroid/taobao/windvane/ha/UCHAReporter;->mLogRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getInstance()Landroid/taobao/windvane/ha/UCHAReporter;
    .locals 2

    .line 1
    sget-object v0, Landroid/taobao/windvane/ha/UCHAReporter;->INSTANCE:Landroid/taobao/windvane/ha/UCHAReporter;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Landroid/taobao/windvane/ha/UCHAReporter;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Landroid/taobao/windvane/ha/UCHAReporter;->INSTANCE:Landroid/taobao/windvane/ha/UCHAReporter;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Landroid/taobao/windvane/ha/UCHAReporter;

    invoke-direct {v1}, Landroid/taobao/windvane/ha/UCHAReporter;-><init>()V

    sput-object v1, Landroid/taobao/windvane/ha/UCHAReporter;->INSTANCE:Landroid/taobao/windvane/ha/UCHAReporter;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Landroid/taobao/windvane/ha/UCHAReporter;->INSTANCE:Landroid/taobao/windvane/ha/UCHAReporter;

    return-object v0
.end method

.method private isPreRenderPage(ILjava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 1
    :try_start_0
    sget-object p1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-boolean p1, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->skipPreRenderBackgroundWhitePage:Z

    if-eqz p1, :cond_2

    if-eqz p2, :cond_0

    .line 2
    iget-object p1, p0, Landroid/taobao/windvane/ha/UCHAReporter;->linkIdUrlCache:Landroidx/collection/LruCache;

    invoke-virtual {p1, p2}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroid/taobao/windvane/ha/UCHAReporter;->currentUrl:Ljava/lang/String;

    .line 3
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "_wv_preload=true"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    .line 4
    sget-object p1, Landroid/taobao/windvane/ha/UCHAReporter;->TAG:Ljava/lang/String;

    const-string p2, "IPreRenderWebView skip upload white page"

    invoke-static {p1, p2}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5
    :cond_1
    sget-object p2, Landroid/taobao/windvane/ha/UCHAReporter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "upload white page :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    return v0
.end method


# virtual methods
.method public putLinkIdWithUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/ha/UCHAReporter;->linkIdUrlCache:Landroidx/collection/LruCache;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method reset(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/taobao/windvane/ha/UCHAReporter;->commitUCHA()V

    .line 2
    iput-object p1, p0, Landroid/taobao/windvane/ha/UCHAReporter;->currentUrl:Ljava/lang/String;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Landroid/taobao/windvane/ha/UCHAReporter;->commonID:J

    .line 4
    iput-object p2, p0, Landroid/taobao/windvane/ha/UCHAReporter;->activityName:Ljava/lang/String;

    return-void
.end method

.method public set(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0, p2, p3}, Landroid/taobao/windvane/ha/UCHAReporter;->isPreRenderPage(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/ha/UCHAReporter;->logHandler:Landroid/os/Handler;

    sget-object v1, Landroid/taobao/windvane/ha/UCHAReporter;->mLogRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Landroid/taobao/windvane/ha/UCHAReporter;->linkId:Ljava/lang/String;

    invoke-static {v0, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Landroid/taobao/windvane/ha/UCHAReporter;->linkId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-direct {p0}, Landroid/taobao/windvane/ha/UCHAReporter;->commitUCHA()V

    .line 6
    :cond_1
    iput-object p3, p0, Landroid/taobao/windvane/ha/UCHAReporter;->linkId:Ljava/lang/String;

    .line 7
    :cond_2
    iput p2, p0, Landroid/taobao/windvane/ha/UCHAReporter;->reportType:I

    .line 8
    iget-object p2, p0, Landroid/taobao/windvane/ha/UCHAReporter;->logHandler:Landroid/os/Handler;

    sget-object p3, Landroid/taobao/windvane/ha/UCHAReporter;->mLogRunnable:Ljava/lang/Runnable;

    iget v0, p0, Landroid/taobao/windvane/ha/UCHAReporter;->minUploadInterval:I

    int-to-long v0, v0

    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 9
    iget-object p2, p0, Landroid/taobao/windvane/ha/UCHAReporter;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public setWebview(Lcom/uc/webview/export/WebView;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/taobao/windvane/ha/UCHAReporter;->webViewWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method
