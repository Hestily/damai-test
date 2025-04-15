.class public Landroid/taobao/windvane/extra/performance2/WVPageTracker;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;,
        Landroid/taobao/windvane/extra/performance2/WVPageTracker$PageStatusCallback;,
        Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;
    }
.end annotation


# static fields
.field private static RVLOG_PAGE_MODEL:Ljava/lang/String; = "WindVane/Page"

.field public static final WVZCacheStateHitZCache:I = 0x2

.field public static final WVZCacheStateNotHitZCache:I = 0x1

.field public static final WVZCacheStateNotUseZCache:I = 0x0

.field public static final WVZNSRFail:I = 0x2

.field public static final WVZNSRSkip:I = 0x0

.field public static final WVZNSRSuccess:I = 0x1

.field private static customizedStageIndentifier:Ljava/lang/String; = "CSI"

.field private static pageIdentifier:I

.field static pageStatusCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/taobao/windvane/extra/performance2/WVPageTracker$PageStatusCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static webViewIdentifier:I


# instance fields
.field private apmManager:Landroid/taobao/windvane/extra/performance/WVAPMManager;

.field private events:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private jsErrorTimes:I

.field private lock_event:Ljava/lang/Object;

.field private lock_resource:Ljava/lang/Object;

.field private mLastPageUniqueIdentifier:Ljava/lang/String;

.field private mNavigationStartTS:J

.field private mPageUniqueIdentifier:Ljava/lang/String;

.field private mReceiveFirstPaintElapse:J

.field private mWebViewUniqueIdentifier:Ljava/lang/String;

.field private performance:Landroid/taobao/windvane/extra/performance2/IPerformance;

.field private redirectCounts:J

.field private redirectEntrance:J

.field private redirectExport:J

.field private resources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;",
            ">;"
        }
    .end annotation
.end field

.field private resourcesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;",
            ">;"
        }
    .end annotation
.end field

.field private stages:[Ljava/lang/String;

.field private state:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

.field private stateMachine:[[I

.field private tti:J

.field private url:Ljava/lang/String;

.field private webView:Landroid/taobao/windvane/webview/IWVWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 28

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, 0x0

    .line 2
    iput-wide v1, v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->mReceiveFirstPaintElapse:J

    .line 3
    iput-wide v1, v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->mNavigationStartTS:J

    const/4 v3, 0x5

    new-array v4, v3, [[I

    new-array v5, v3, [I

    .line 4
    fill-array-data v5, :array_0

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-array v5, v3, [I

    fill-array-data v5, :array_1

    const/4 v6, 0x1

    aput-object v5, v4, v6

    new-array v5, v3, [I

    fill-array-data v5, :array_2

    const/4 v6, 0x2

    aput-object v5, v4, v6

    new-array v5, v3, [I

    fill-array-data v5, :array_3

    const/4 v6, 0x3

    aput-object v5, v4, v6

    new-array v3, v3, [I

    fill-array-data v3, :array_4

    const/4 v5, 0x4

    aput-object v3, v4, v5

    iput-object v4, v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->stateMachine:[[I

    const-string v6, "initStart"

    const-string v7, "initEnd"

    const-string v8, "loadRequest"

    const-string v9, "interceptStart"

    const-string v10, "interceptEnd"

    const-string/jumbo v11, "startLoad"

    const-string/jumbo v12, "navigationStart"

    const-string v13, "fetchStart"

    const-string/jumbo v14, "responseEnd"

    const-string v15, "domContentLoadedEventStart"

    const-string v16, "loadEventStart"

    const-string v17, "loadEventEnd"

    const-string v18, "finishLoad"

    const-string v19, "firstPaint"

    const-string v20, "firstScreenPaint"

    const-string/jumbo v21, "timeToInteractive"

    const-string v22, "T1"

    const-string v23, "T2"

    const-string v24, "dealloc"

    const-string v25, "creatActivity"

    const-string v26, "attachToWindow"

    const-string v27, "firstScreenPaintCustomize"

    .line 5
    filled-new-array/range {v6 .. v27}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->stages:[Ljava/lang/String;

    .line 6
    sget-object v3, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;->WVPageStateInit:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    iput-object v3, v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->state:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    .line 7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->resources:Ljava/util/ArrayList;

    .line 8
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->resourcesMap:Ljava/util/HashMap;

    .line 9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->events:Ljava/util/ArrayList;

    .line 10
    iput-wide v1, v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->tti:J

    .line 11
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->lock_event:Ljava/lang/Object;

    .line 12
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->lock_resource:Ljava/lang/Object;

    .line 13
    new-instance v1, Landroid/taobao/windvane/extra/performance/WVAPMManager;

    const-string v2, "WindVane.H5"

    invoke-direct {v1, v2}, Landroid/taobao/windvane/extra/performance/WVAPMManager;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->apmManager:Landroid/taobao/windvane/extra/performance/WVAPMManager;

    .line 14
    invoke-direct/range {p0 .. p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->usable()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 15
    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->updateWebViewIdentifier()V

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        -0x1
        0x1
        0x2
        0x3
        -0x1
    .end array-data

    :array_2
    .array-data 4
        -0x1
        0x1
        0x2
        0x3
        0x4
    .end array-data

    :array_3
    .array-data 4
        -0x1
        0x1
        0x2
        0x3
        -0x1
    .end array-data

    :array_4
    .array-data 4
        -0x1
        -0x1
        -0x1
        0x3
        -0x1
    .end array-data
.end method

.method static synthetic access$000(Landroid/taobao/windvane/extra/performance2/WVPageTracker;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->mPageUniqueIdentifier:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->RVLOG_PAGE_MODEL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/taobao/windvane/extra/performance2/WVPageTracker;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->mReceiveFirstPaintElapse:J

    return-wide v0
.end method

.method static synthetic access$302(Landroid/taobao/windvane/extra/performance2/WVPageTracker;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->mNavigationStartTS:J

    return-wide p1
.end method

.method static synthetic access$400(Landroid/taobao/windvane/extra/performance2/WVPageTracker;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->stages:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Landroid/taobao/windvane/extra/performance2/WVPageTracker;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmStaged(Ljava/lang/String;J)V

    return-void
.end method

.method private addEvent(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->lock_event:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->events:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private addResource(Ljava/lang/String;Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->lock_resource:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->resourcesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_1
    iget-object v1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->resources:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->resourcesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private analyzeEvents()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->lock_event:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, ""

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->events:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->events:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "routingEvent"

    .line 4
    invoke-direct {p0, v2, v1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmAddedProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private analyzeResources()V
    .locals 23

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const-string v4, ""

    move-object/from16 v16, v4

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    .line 1
    :goto_0
    iget-object v5, v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->resources:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_8

    .line 2
    iget-object v5, v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->resources:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;

    if-nez v5, :cond_0

    const-string v5, "WVPageTracker"

    move/from16 v17, v4

    const-string v4, " analyzeResources : resource\u4e3a\u7a7a\uff01"

    .line 3
    invoke-static {v5, v4}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v1

    goto :goto_4

    :cond_0
    move/from16 v17, v4

    move v4, v1

    .line 4
    iget-wide v0, v5, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;->loadingStartTime:J

    move-wide/from16 v18, v2

    iget-wide v2, v5, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;->loadingEndTime:J

    const-wide/16 v20, 0x1

    cmp-long v22, v0, v2

    if-gez v22, :cond_1

    sub-long/2addr v2, v0

    add-long/2addr v8, v2

    add-long v6, v6, v20

    .line 5
    :cond_1
    iget v0, v5, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;->statusCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    add-long v10, v10, v20

    goto :goto_2

    :cond_2
    const-string v1, "4"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_1
    add-long v12, v12, v20

    goto :goto_2

    :cond_3
    const-string v1, "5"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 9
    :cond_4
    :goto_2
    iget-boolean v0, v5, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;->isHTML:Z

    if-eqz v0, :cond_6

    .line 10
    iget v0, v5, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;->zcacheState:I

    .line 11
    iget-object v1, v5, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;->zcacheInfo:Ljava/lang/String;

    move/from16 v17, v0

    if-eqz v1, :cond_5

    move-object/from16 v16, v1

    :cond_5
    :goto_3
    move-wide/from16 v2, v18

    goto :goto_4

    .line 12
    :cond_6
    iget v0, v5, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;->zcacheState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    add-long v14, v14, v20

    goto :goto_3

    :cond_7
    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    add-long v14, v14, v20

    add-long v2, v18, v20

    :goto_4
    add-int/lit8 v1, v4, 0x1

    move-object/from16 v0, p0

    move/from16 v4, v17

    goto/16 :goto_0

    :cond_8
    move-wide/from16 v18, v2

    move/from16 v17, v4

    const-wide/16 v0, 0x0

    cmp-long v2, v6, v0

    if-lez v2, :cond_9

    .line 13
    div-long v2, v8, v6

    goto :goto_5

    :cond_9
    move-wide v2, v0

    :goto_5
    move-object/from16 v0, p0

    .line 14
    iget-object v1, v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->resources:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-long v4, v1

    const-string/jumbo v1, "resourceTotalCount"

    invoke-direct {v0, v1, v4, v5}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmAddedStatistic(Ljava/lang/String;J)V

    const-string/jumbo v1, "resourceSuccessfulCount"

    .line 15
    invoke-direct {v0, v1, v10, v11}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmAddedStatistic(Ljava/lang/String;J)V

    const-string/jumbo v1, "resourceFailedCount"

    .line 16
    invoke-direct {v0, v1, v12, v13}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmAddedStatistic(Ljava/lang/String;J)V

    const-string/jumbo v1, "resourceAverageTime"

    .line 17
    invoke-direct {v0, v1, v2, v3}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmAddedStatistic(Ljava/lang/String;J)V

    const-string/jumbo v1, "zcacheUsageCount"

    .line 18
    invoke-direct {v0, v1, v14, v15}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmAddedStatistic(Ljava/lang/String;J)V

    const-string/jumbo v1, "zcacheHitCount"

    move-wide/from16 v2, v18

    .line 19
    invoke-direct {v0, v1, v2, v3}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmAddedStatistic(Ljava/lang/String;J)V

    .line 20
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htmlZCacheState"

    invoke-direct {v0, v2, v1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmAddedProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "htmlZCacheInfo"

    move-object/from16 v4, v16

    .line 21
    invoke-direct {v0, v1, v4}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmAddedProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    iget-object v1, v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->resources:Ljava/util/ArrayList;

    const-string/jumbo v2, "page-resources"

    invoke-static {v2, v1}, Landroid/taobao/windvane/extra/performance2/AtsTools;->sendAtsPerformanceLog(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private analyzeStates()V
    .locals 9

    .line 1
    iget-wide v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->redirectCounts:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    const-string/jumbo v2, "redirectCounts"

    invoke-direct {p0, v2, v0, v1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmAddedStatistic(Ljava/lang/String;J)V

    .line 2
    iget-wide v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->redirectExport:J

    iget-wide v2, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->redirectEntrance:J

    sub-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_0

    sub-long v6, v0, v2

    :cond_0
    const-string/jumbo v0, "redirectTime"

    invoke-direct {p0, v0, v6, v7}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmAddedStatistic(Ljava/lang/String;J)V

    return-void
.end method

.method private checkoutHash(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    iget-object v1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->url:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 3
    :cond_1
    invoke-direct {p0, p1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->urlWithoutFragment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->url:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->urlWithoutFragment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method private clearEvent()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->lock_event:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->events:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private clearResource()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->lock_resource:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->resources:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3
    iget-object v1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->resourcesMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private currentTime()J
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private isPage(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onApmAddedProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->apmManager:Landroid/taobao/windvane/extra/performance/WVAPMManager;

    invoke-virtual {v0, p1, p2}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->performance:Landroid/taobao/windvane/extra/performance2/IPerformance;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/taobao/windvane/extra/performance2/IPerformance;->getPerformanceDelegate()Landroid/taobao/windvane/extra/performance2/WVPerformance;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->performance:Landroid/taobao/windvane/extra/performance2/IPerformance;

    invoke-interface {v0}, Landroid/taobao/windvane/extra/performance2/IPerformance;->getPerformanceDelegate()Landroid/taobao/windvane/extra/performance2/WVPerformance;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/taobao/windvane/extra/performance2/WVPerformance;->recordProperties(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    :cond_0
    invoke-static {p1, p2}, Landroid/taobao/windvane/extra/performance2/AtsTools;->sendAtsPerformanceLog(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private onApmAddedResidue()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->stages:[Ljava/lang/String;

    const/16 v1, 0xf

    aget-object v0, v0, v1

    iget-wide v2, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->tti:J

    invoke-direct {p0, v0, v2, v3}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmStaged(Ljava/lang/String;J)V

    .line 2
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->stages:[Ljava/lang/String;

    aget-object v0, v0, v1

    iget-wide v1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->tti:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/windvane/extra/performance2/AtsTools;->sendAtsPerformanceLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->analyzeResources()V

    .line 4
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->analyzeEvents()V

    .line 5
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onResidueRecovered()V

    return-void
.end method

.method private onApmAddedStatistic(Ljava/lang/String;J)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->apmManager:Landroid/taobao/windvane/extra/performance/WVAPMManager;

    long-to-double v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->addStatistic(Ljava/lang/String;D)V

    .line 2
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->performance:Landroid/taobao/windvane/extra/performance2/IPerformance;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/taobao/windvane/extra/performance2/IPerformance;->getPerformanceDelegate()Landroid/taobao/windvane/extra/performance2/WVPerformance;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->performance:Landroid/taobao/windvane/extra/performance2/IPerformance;

    invoke-interface {v0}, Landroid/taobao/windvane/extra/performance2/IPerformance;->getPerformanceDelegate()Landroid/taobao/windvane/extra/performance2/WVPerformance;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/taobao/windvane/extra/performance2/WVPerformance;->recordStatistics(Ljava/lang/String;J)V

    .line 4
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/taobao/windvane/extra/performance2/AtsTools;->sendAtsPerformanceLog(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private onApmFinished()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->apmManager:Landroid/taobao/windvane/extra/performance/WVAPMManager;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->onEnd()V

    .line 2
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->performance:Landroid/taobao/windvane/extra/performance2/IPerformance;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/taobao/windvane/extra/performance2/IPerformance;->getPerformanceDelegate()Landroid/taobao/windvane/extra/performance2/WVPerformance;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->performance:Landroid/taobao/windvane/extra/performance2/IPerformance;

    invoke-interface {v0}, Landroid/taobao/windvane/extra/performance2/IPerformance;->getPerformanceDelegate()Landroid/taobao/windvane/extra/performance2/WVPerformance;

    move-result-object v0

    invoke-interface {v0}, Landroid/taobao/windvane/extra/performance2/WVPerformance;->end()V

    :cond_0
    return-void
.end method

.method private onApmStaged(Ljava/lang/String;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->apmManager:Landroid/taobao/windvane/extra/performance/WVAPMManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->onStage(Ljava/lang/String;J)V

    .line 2
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->performance:Landroid/taobao/windvane/extra/performance2/IPerformance;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/taobao/windvane/extra/performance2/IPerformance;->getPerformanceDelegate()Landroid/taobao/windvane/extra/performance2/WVPerformance;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->performance:Landroid/taobao/windvane/extra/performance2/IPerformance;

    invoke-interface {v0}, Landroid/taobao/windvane/extra/performance2/IPerformance;->getPerformanceDelegate()Landroid/taobao/windvane/extra/performance2/WVPerformance;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/taobao/windvane/extra/performance2/WVPerformance;->recordStage(Ljava/lang/String;J)V

    .line 4
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/taobao/windvane/extra/performance2/AtsTools;->sendAtsPerformanceLog(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private onApmStarted()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->apmManager:Landroid/taobao/windvane/extra/performance/WVAPMManager;

    iget-object v1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->mPageUniqueIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->onStart(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->performance:Landroid/taobao/windvane/extra/performance2/IPerformance;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/taobao/windvane/extra/performance2/IPerformance;->getPerformanceDelegate()Landroid/taobao/windvane/extra/performance2/WVPerformance;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->performance:Landroid/taobao/windvane/extra/performance2/IPerformance;

    invoke-interface {v0}, Landroid/taobao/windvane/extra/performance2/IPerformance;->getPerformanceDelegate()Landroid/taobao/windvane/extra/performance2/WVPerformance;

    move-result-object v0

    invoke-interface {v0}, Landroid/taobao/windvane/extra/performance2/WVPerformance;->start()V

    :cond_0
    return-void
.end method

.method private onPropertyRecovered()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->jsErrorTimes:I

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->redirectCounts:J

    .line 3
    iput-wide v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->redirectEntrance:J

    return-void
.end method

.method private onResidueRecovered()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onResourceRecovered()V

    .line 2
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->clearEvent()V

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->tti:J

    return-void
.end method

.method private onResourceRecovered()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->clearResource()V

    return-void
.end method

.method private onStateChanged(I)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->addEvent(I)V

    .line 2
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->state:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    sget-object v1, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;->WVPageStateError:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    if-ne v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object v2, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;->WVPageStateStartLoad:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    if-ne v0, v2, :cond_1

    .line 4
    iget-wide v2, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->redirectCounts:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->redirectCounts:J

    .line 5
    :cond_1
    iget-object v2, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->stateMachine:[[I

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;->value()I

    move-result v0

    aget-object v0, v2, v0

    aget p1, v0, p1

    invoke-static {p1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;->valueOf(I)Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    move-result-object p1

    iput-object p1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->state:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    if-ne p1, v1, :cond_2

    const/4 p1, 0x1

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "errorProcess"

    invoke-direct {p0, v0, p1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmAddedProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private onStateRecovered()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->state:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    sget-object v1, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;->WVPageStateError:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;->WVPageStateInit:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    iput-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->state:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    :cond_0
    return-void
.end method

.method private recordRedirectEntrance()V
    .locals 5

    .line 1
    iget-wide v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->redirectEntrance:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->currentTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->redirectEntrance:J

    :cond_0
    return-void
.end method

.method private recordRedirectExport()V
    .locals 5

    .line 1
    iget-wide v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->redirectExport:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->currentTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->redirectExport:J

    :cond_0
    return-void
.end method

.method private recoverPageIdentifier()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->mLastPageUniqueIdentifier:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    iput-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->mPageUniqueIdentifier:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->mLastPageUniqueIdentifier:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static registerH5LifeCallback(Landroid/taobao/windvane/extra/performance2/WVPageTracker$PageStatusCallback;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->pageStatusCallbacks:Ljava/util/List;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->pageStatusCallbacks:Ljava/util/List;

    .line 3
    :cond_1
    sget-object v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->pageStatusCallbacks:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    sget-object v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->pageStatusCallbacks:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public static removeH5LifeCallback(Landroid/taobao/windvane/extra/performance2/WVPageTracker$PageStatusCallback;)V
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    sget-object v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->pageStatusCallbacks:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private takeResource(Ljava/lang/String;)Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->lock_resource:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->resourcesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private updatePageIdentifier()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->mPageUniqueIdentifier:Ljava/lang/String;

    iput-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->mLastPageUniqueIdentifier:Ljava/lang/String;

    .line 2
    sget v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->pageIdentifier:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->pageIdentifier:I

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->mWebViewUniqueIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->pageIdentifier:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->mPageUniqueIdentifier:Ljava/lang/String;

    return-void
.end method

.method private updateWebViewIdentifier()V
    .locals 2

    .line 1
    sget v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->webViewIdentifier:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->webViewIdentifier:I

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WV_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->webViewIdentifier:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->mWebViewUniqueIdentifier:Ljava/lang/String;

    return-void
.end method

.method private urlWithoutFragment(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "#"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-object p1

    :cond_1
    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private usable()Z
    .locals 1

    .line 1
    invoke-static {}, Landroid/taobao/windvane/WVPerformanceManager;->getInstance()Landroid/taobao/windvane/WVPerformanceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/WVPerformanceManager;->getConfig()Landroid/taobao/windvane/WVPerformanceConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/WVPerformanceConfig;->isOpenH5_2()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public attachToWindow()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->usable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->stages:[Ljava/lang/String;

    const/16 v1, 0x14

    aget-object v0, v0, v1

    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->currentTime()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmStaged(Ljava/lang/String;J)V

    return-void
.end method

.method public blockURLEnd()V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->usable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->currentTime()J

    move-result-wide v0

    .line 3
    sget-object v2, Lcom/taobao/android/riverlogger/RVLLevel;->Error:Lcom/taobao/android/riverlogger/RVLLevel;

    sget-object v3, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->RVLOG_PAGE_MODEL:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/taobao/android/riverlogger/d;->a(Lcom/taobao/android/riverlogger/RVLLevel;Ljava/lang/String;)Lcom/taobao/android/riverlogger/a;

    move-result-object v2

    iget-object v3, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->mPageUniqueIdentifier:Ljava/lang/String;

    const-string v4, "interceptEnd"

    invoke-virtual {v2, v4, v3}, Lcom/taobao/android/riverlogger/a;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/android/riverlogger/a;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/taobao/android/riverlogger/a;->h(J)Lcom/taobao/android/riverlogger/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/android/riverlogger/a;->d()V

    .line 4
    iget-object v2, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->stages:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-direct {p0, v2, v0, v1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmStaged(Ljava/lang/String;J)V

    return-void
.end method

.method public blockURLStart()V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->usable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->currentTime()J

    move-result-wide v0

    .line 3
    sget-object v2, Lcom/taobao/android/riverlogger/RVLLevel;->Error:Lcom/taobao/android/riverlogger/RVLLevel;

    sget-object v3, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->RVLOG_PAGE_MODEL:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/taobao/android/riverlogger/d;->a(Lcom/taobao/android/riverlogger/RVLLevel;Ljava/lang/String;)Lcom/taobao/android/riverlogger/a;

    move-result-object v2

    iget-object v3, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->mPageUniqueIdentifier:Ljava/lang/String;

    const-string v4, "interceptStart"

    invoke-virtual {v2, v4, v3}, Lcom/taobao/android/riverlogger/a;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/android/riverlogger/a;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/taobao/android/riverlogger/a;->h(J)Lcom/taobao/android/riverlogger/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/android/riverlogger/a;->d()V

    .line 4
    iget-object v2, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->stages:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-direct {p0, v2, v0, v1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmStaged(Ljava/lang/String;J)V

    return-void
.end method

.method public creatActivity(J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->usable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->stages:[Ljava/lang/String;

    const/16 v1, 0x13

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p1, p2}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmStaged(Ljava/lang/String;J)V

    return-void
.end method

.method public destroy()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->usable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmAddedResidue()V

    .line 3
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->stages:[Ljava/lang/String;

    const/16 v1, 0x12

    aget-object v0, v0, v1

    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->currentTime()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmStaged(Ljava/lang/String;J)V

    .line 4
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmFinished()V

    return-void
.end method

.method public initEnd()V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->usable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->currentTime()J

    move-result-wide v0

    .line 3
    sget-object v2, Lcom/taobao/android/riverlogger/RVLLevel;->Error:Lcom/taobao/android/riverlogger/RVLLevel;

    sget-object v3, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->RVLOG_PAGE_MODEL:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/taobao/android/riverlogger/d;->a(Lcom/taobao/android/riverlogger/RVLLevel;Ljava/lang/String;)Lcom/taobao/android/riverlogger/a;

    move-result-object v2

    iget-object v3, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->mPageUniqueIdentifier:Ljava/lang/String;

    const-string v4, "initEnd"

    invoke-virtual {v2, v4, v3}, Lcom/taobao/android/riverlogger/a;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/android/riverlogger/a;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/taobao/android/riverlogger/a;->h(J)Lcom/taobao/android/riverlogger/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/android/riverlogger/a;->d()V

    .line 4
    iget-object v2, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->stages:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-direct {p0, v2, v0, v1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmStaged(Ljava/lang/String;J)V

    return-void
.end method

.method public initStart(Landroid/taobao/windvane/extra/performance2/IPerformance;Landroid/taobao/windvane/webview/IWVWebView;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->usable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->performance:Landroid/taobao/windvane/extra/performance2/IPerformance;

    .line 3
    iput-object p2, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->webView:Landroid/taobao/windvane/webview/IWVWebView;

    .line 4
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->updatePageIdentifier()V

    .line 5
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->currentTime()J

    move-result-wide p1

    .line 6
    sget-object v0, Lcom/taobao/android/riverlogger/RVLLevel;->Error:Lcom/taobao/android/riverlogger/RVLLevel;

    sget-object v1, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->RVLOG_PAGE_MODEL:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/taobao/android/riverlogger/d;->a(Lcom/taobao/android/riverlogger/RVLLevel;Ljava/lang/String;)Lcom/taobao/android/riverlogger/a;

    move-result-object v0

    iget-object v1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->mPageUniqueIdentifier:Ljava/lang/String;

    const-string v2, "initStart"

    invoke-virtual {v0, v2, v1}, Lcom/taobao/android/riverlogger/a;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/android/riverlogger/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/taobao/android/riverlogger/a;->h(J)Lcom/taobao/android/riverlogger/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/android/riverlogger/a;->d()V

    .line 7
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmStarted()V

    .line 8
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->stages:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p1, p2}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmStaged(Ljava/lang/String;J)V

    .line 9
    sget-object p1, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    invoke-static {p1}, Landroid/taobao/windvane/util/CommonUtils;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "processName"

    invoke-direct {p0, p2, p1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmAddedProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->usable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->url:Ljava/lang/String;

    .line 3
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->recordRedirectEntrance()V

    .line 4
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->currentTime()J

    move-result-wide v0

    .line 5
    sget-object v2, Lcom/taobao/android/riverlogger/RVLLevel;->Error:Lcom/taobao/android/riverlogger/RVLLevel;

    sget-object v3, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->RVLOG_PAGE_MODEL:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/taobao/android/riverlogger/d;->a(Lcom/taobao/android/riverlogger/RVLLevel;Ljava/lang/String;)Lcom/taobao/android/riverlogger/a;

    move-result-object v2

    iget-object v3, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->mPageUniqueIdentifier:Ljava/lang/String;

    const-string v4, "loadRequest"

    invoke-virtual {v2, v4, v3}, Lcom/taobao/android/riverlogger/a;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/android/riverlogger/a;

    move-result-object v2

    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3, p1}, Lcom/taobao/android/riverlogger/a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/taobao/android/riverlogger/a;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/taobao/android/riverlogger/a;->h(J)Lcom/taobao/android/riverlogger/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/android/riverlogger/a;->d()V

    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onStateChanged(I)V

    .line 7
    iget-object p1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->stages:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object p1, p1, v2

    invoke-direct {p0, p1, v0, v1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmStaged(Ljava/lang/String;J)V

    .line 8
    iget-object p1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->webView:Landroid/taobao/windvane/webview/IWVWebView;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/taobao/windvane/webview/IWVWebView;->getUserAgentString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->webView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-interface {p1}, Landroid/taobao/windvane/webview/IWVWebView;->getUserAgentString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Triver"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 p1, 0x1

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v0, "triver"

    invoke-direct {p0, v0, p1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmAddedProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onPageFinished(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->usable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->pageStatusCallbacks:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/taobao/windvane/extra/performance2/WVPageTracker$PageStatusCallback;

    .line 4
    :try_start_0
    invoke-interface {v1, p2}, Landroid/taobao/windvane/extra/performance2/WVPageTracker$PageStatusCallback;->onPageFinish(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    .line 5
    invoke-direct {p0, v0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onStateChanged(I)V

    .line 6
    invoke-direct {p0, p2}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->checkoutHash(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->recordRedirectExport()V

    .line 8
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->currentTime()J

    move-result-wide v0

    .line 9
    sget-object v2, Lcom/taobao/android/riverlogger/RVLLevel;->Error:Lcom/taobao/android/riverlogger/RVLLevel;

    sget-object v3, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->RVLOG_PAGE_MODEL:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/taobao/android/riverlogger/d;->a(Lcom/taobao/android/riverlogger/RVLLevel;Ljava/lang/String;)Lcom/taobao/android/riverlogger/a;

    move-result-object v2

    iget-object v3, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->mPageUniqueIdentifier:Ljava/lang/String;

    const-string v4, "finishLoad"

    invoke-virtual {v2, v4, v3}, Lcom/taobao/android/riverlogger/a;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/android/riverlogger/a;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/taobao/android/riverlogger/a;->h(J)Lcom/taobao/android/riverlogger/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/android/riverlogger/a;->d()V

    .line 10
    iget-object v2, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->stages:[Ljava/lang/String;

    const/16 v3, 0xc

    aget-object v2, v2, v3

    invoke-direct {p0, v2, v0, v1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmStaged(Ljava/lang/String;J)V

    .line 11
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    const-string v1, "isFinished"

    invoke-direct {p0, v1, v0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmAddedProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "URL"

    .line 12
    invoke-direct {p0, v0, p2}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmAddedProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    iget p2, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->jsErrorTimes:I

    int-to-long v0, p2

    const-string p2, "jsErrorTimes"

    invoke-direct {p0, p2, v0, v1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmAddedStatistic(Ljava/lang/String;J)V

    .line 14
    invoke-virtual {p0, p1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onPageReceivedPerformanceTiming(Landroid/taobao/windvane/webview/IWVWebView;)V

    .line 15
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->analyzeStates()V

    .line 16
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onStateRecovered()V

    .line 17
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onPropertyRecovered()V

    return-void
.end method

.method public onPageReceivedCustomizedFSP(J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->usable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->stages:[Ljava/lang/String;

    const/16 v1, 0x15

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p1, p2}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmStaged(Ljava/lang/String;J)V

    return-void
.end method

.method public onPageReceivedCustomizedStage(JLjava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->usable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->customizedStageIndentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3, p1, p2}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmStaged(Ljava/lang/String;J)V

    return-void
.end method

.method public onPageReceivedError(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->usable()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x4

    .line 2
    invoke-direct {p0, p1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onStateChanged(I)V

    .line 3
    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p3}, Ljava/lang/Integer;-><init>(I)V

    const-string p3, "errorCode"

    invoke-direct {p0, p3, p1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmAddedProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "errorMsg"

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmAddedProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onPageReceivedFP(J)V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->usable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-wide v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->mNavigationStartTS:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 3
    sget-object v0, Lcom/taobao/android/riverlogger/RVLLevel;->Error:Lcom/taobao/android/riverlogger/RVLLevel;

    sget-object v1, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->RVLOG_PAGE_MODEL:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/taobao/android/riverlogger/d;->a(Lcom/taobao/android/riverlogger/RVLLevel;Ljava/lang/String;)Lcom/taobao/android/riverlogger/a;

    move-result-object v0

    iget-object v1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->mPageUniqueIdentifier:Ljava/lang/String;

    const-string v2, "firstPaint"

    invoke-virtual {v0, v2, v1}, Lcom/taobao/android/riverlogger/a;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/android/riverlogger/a;

    move-result-object v0

    iget-wide v1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->mNavigationStartTS:J

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/taobao/android/riverlogger/a;->h(J)Lcom/taobao/android/riverlogger/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/android/riverlogger/a;->d()V

    goto :goto_0

    .line 4
    :cond_1
    iput-wide p1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->mReceiveFirstPaintElapse:J

    .line 5
    :goto_0
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->stages:[Ljava/lang/String;

    const/16 v1, 0xd

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p1, p2}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmStaged(Ljava/lang/String;J)V

    return-void
.end method

.method public onPageReceivedFSP(J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->usable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->stages:[Ljava/lang/String;

    const/16 v1, 0xe

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p1, p2}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmStaged(Ljava/lang/String;J)V

    return-void
.end method

.method public onPageReceivedJSError()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->usable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->jsErrorTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->jsErrorTimes:I

    return-void
.end method

.method public onPageReceivedPerformanceTiming(Landroid/taobao/windvane/webview/IWVWebView;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$1;

    invoke-direct {v0, p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker$1;-><init>(Landroid/taobao/windvane/extra/performance2/WVPageTracker;)V

    const-string v1, "(function(performance){var timing=performance&&performance.timing;return timing&&JSON.stringify({ns:timing.navigationStart,fs:timing.fetchStart,rs:timing.requestStart,re:timing.responseEnd,ds:timing.domContentLoadedEventStart,dc:timing.domComplete,ls:timing.loadEventStart,le:timing.loadEventEnd})})(window.performance)"

    invoke-interface {p1, v1, v0}, Landroid/taobao/windvane/webview/IWVWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public onPageReceivedT1(J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->usable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->stages:[Ljava/lang/String;

    const/16 v1, 0x10

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p1, p2}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmStaged(Ljava/lang/String;J)V

    return-void
.end method

.method public onPageReceivedT2(J)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->usable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/taobao/android/riverlogger/RVLLevel;->Error:Lcom/taobao/android/riverlogger/RVLLevel;

    sget-object v1, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->RVLOG_PAGE_MODEL:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/taobao/android/riverlogger/d;->a(Lcom/taobao/android/riverlogger/RVLLevel;Ljava/lang/String;)Lcom/taobao/android/riverlogger/a;

    move-result-object v0

    iget-object v1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->mPageUniqueIdentifier:Ljava/lang/String;

    const-string v2, "T2"

    invoke-virtual {v0, v2, v1}, Lcom/taobao/android/riverlogger/a;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/android/riverlogger/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/taobao/android/riverlogger/a;->h(J)Lcom/taobao/android/riverlogger/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/android/riverlogger/a;->d()V

    return-void
.end method

.method public onPageReceivedTTI(J)V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->usable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-wide v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->tti:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x1388

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    .line 3
    iput-wide p1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->tti:J

    :cond_1
    return-void
.end method

.method public onPageStarted(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->usable()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->state:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    sget-object p2, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;->WVPageStateFinishLoad:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    if-ne p1, p2, :cond_1

    .line 3
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->updatePageIdentifier()V

    .line 4
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmAddedResidue()V

    .line 5
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmFinished()V

    .line 6
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmStarted()V

    .line 7
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->recordRedirectEntrance()V

    .line 8
    :cond_1
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->currentTime()J

    move-result-wide p1

    .line 9
    sget-object v0, Lcom/taobao/android/riverlogger/RVLLevel;->Error:Lcom/taobao/android/riverlogger/RVLLevel;

    sget-object v1, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->RVLOG_PAGE_MODEL:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/taobao/android/riverlogger/d;->a(Lcom/taobao/android/riverlogger/RVLLevel;Ljava/lang/String;)Lcom/taobao/android/riverlogger/a;

    move-result-object v0

    iget-object v1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->mPageUniqueIdentifier:Ljava/lang/String;

    const-string/jumbo v2, "startLoad"

    invoke-virtual {v0, v2, v1}, Lcom/taobao/android/riverlogger/a;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/android/riverlogger/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/taobao/android/riverlogger/a;->h(J)Lcom/taobao/android/riverlogger/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/android/riverlogger/a;->d()V

    const/4 v0, 0x2

    .line 10
    invoke-direct {p0, v0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onStateChanged(I)V

    .line 11
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->stages:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p1, p2}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmStaged(Ljava/lang/String;J)V

    return-void
.end method

.method public onResourceFinished(Ljava/lang/String;I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->usable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->takeResource(Ljava/lang/String;)Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->currentTime()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;->loadingEndTime:J

    .line 4
    iput p2, v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;->dataSize:I

    .line 5
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->performance:Landroid/taobao/windvane/extra/performance2/IPerformance;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/taobao/windvane/extra/performance2/IPerformance;->getPerformanceDelegate()Landroid/taobao/windvane/extra/performance2/WVPerformance;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->performance:Landroid/taobao/windvane/extra/performance2/IPerformance;

    invoke-interface {v0}, Landroid/taobao/windvane/extra/performance2/IPerformance;->getPerformanceDelegate()Landroid/taobao/windvane/extra/performance2/WVPerformance;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/taobao/windvane/extra/performance2/WVPerformance;->onResourceFinished(Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method public onResourceReceivedStatusCode(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->usable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->takeResource(Ljava/lang/String;)Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/16 v1, 0x12e

    if-ne p3, v1, :cond_2

    .line 3
    iget-boolean v1, v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;->isHTML:Z

    if-eqz v1, :cond_2

    .line 4
    sget-object v1, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->pageStatusCallbacks:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/taobao/windvane/extra/performance2/WVPageTracker$PageStatusCallback;

    .line 6
    :try_start_0
    invoke-interface {v2, p1, p2}, Landroid/taobao/windvane/extra/performance2/WVPageTracker$PageStatusCallback;->onRedirect(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    goto :goto_0

    .line 7
    :cond_2
    iput p3, v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;->statusCode:I

    .line 8
    iget-object p2, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->performance:Landroid/taobao/windvane/extra/performance2/IPerformance;

    if-eqz p2, :cond_3

    invoke-interface {p2}, Landroid/taobao/windvane/extra/performance2/IPerformance;->getPerformanceDelegate()Landroid/taobao/windvane/extra/performance2/WVPerformance;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 9
    iget-object p2, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->performance:Landroid/taobao/windvane/extra/performance2/IPerformance;

    invoke-interface {p2}, Landroid/taobao/windvane/extra/performance2/IPerformance;->getPerformanceDelegate()Landroid/taobao/windvane/extra/performance2/WVPerformance;

    move-result-object p2

    invoke-interface {p2, p1, p3}, Landroid/taobao/windvane/extra/performance2/WVPerformance;->onResourceReceivedStatusCode(Ljava/lang/String;I)V

    :cond_3
    return-void
.end method

.method public onResourceReceivedZCacheInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->usable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->takeResource(Ljava/lang/String;)Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    iput-object p2, p1, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;->zcacheInfo:Ljava/lang/String;

    return-void
.end method

.method public onResourceReceivedZCacheState(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->usable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->takeResource(Ljava/lang/String;)Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    iput p2, p1, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;->zcacheState:I

    return-void
.end method

.method public onResourceStarted(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->usable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;

    invoke-direct {v0, p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;-><init>(Landroid/taobao/windvane/extra/performance2/WVPageTracker;)V

    .line 3
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->currentTime()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;->loadingStartTime:J

    .line 4
    iput-object p1, v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;->url:Ljava/lang/String;

    .line 5
    invoke-direct {p0, p1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->isPage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;->isHTML:Z

    .line 7
    :cond_1
    invoke-direct {p0, p1, v0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->addResource(Ljava/lang/String;Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;)V

    .line 8
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->performance:Landroid/taobao/windvane/extra/performance2/IPerformance;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/taobao/windvane/extra/performance2/IPerformance;->getPerformanceDelegate()Landroid/taobao/windvane/extra/performance2/WVPerformance;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->performance:Landroid/taobao/windvane/extra/performance2/IPerformance;

    invoke-interface {v0}, Landroid/taobao/windvane/extra/performance2/IPerformance;->getPerformanceDelegate()Landroid/taobao/windvane/extra/performance2/WVPerformance;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/taobao/windvane/extra/performance2/WVPerformance;->onResourceStarted(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onWebViewNSREvent(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->usable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v0, "nativeSideRendering"

    invoke-direct {p0, v0, p1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmAddedProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->usable()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p2, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->url:Ljava/lang/String;

    .line 3
    iget-object p1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->state:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    sget-object p2, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;->WVPageStateFinishLoad:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    if-eq p1, p2, :cond_1

    sget-object p2, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;->WVPageStateInit:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    if-ne p1, p2, :cond_2

    .line 4
    :cond_1
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->updatePageIdentifier()V

    .line 5
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmAddedResidue()V

    .line 6
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmFinished()V

    .line 7
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmStarted()V

    .line 8
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->recordRedirectEntrance()V

    :cond_2
    const/4 p1, 0x1

    .line 9
    invoke-direct {p0, p1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onStateChanged(I)V

    return-void
.end method
