.class public Landroid/taobao/windvane/extra/uc/WVUCWebView;
.super Lcom/uc/webview/export/WebView;
.source "Taobao"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/taobao/windvane/extra/performance2/IPerformance;
.implements Landroid/taobao/windvane/webview/IFullTrace;
.implements Landroid/taobao/windvane/webview/IWVWebView;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/windvane/extra/uc/WVUCWebView$whiteScreenCallback;,
        Landroid/taobao/windvane/extra/uc/WVUCWebView$WVDownLoadListener;,
        Landroid/taobao/windvane/extra/uc/WVUCWebView$DownloadEnv;,
        Landroid/taobao/windvane/extra/uc/WVUCWebView$WVValueCallback;,
        Landroid/taobao/windvane/extra/uc/WVUCWebView$SwitchValueCallback;,
        Landroid/taobao/windvane/extra/uc/WVUCWebView$CorePreparedCallback;,
        Landroid/taobao/windvane/extra/uc/WVUCWebView$DownLoadCallback;,
        Landroid/taobao/windvane/extra/uc/WVUCWebView$ExceptionValueCallback;,
        Landroid/taobao/windvane/extra/uc/WVUCWebView$DecompressCallable;,
        Landroid/taobao/windvane/extra/uc/WVUCWebView$OldCoreVersionCallable;,
        Landroid/taobao/windvane/extra/uc/WVUCWebView$OnInitStart;
    }
.end annotation


# static fields
.field public static INNER_FLAG:I = 0x0

.field private static final STATIC_WEBVIEW_URL:Ljava/lang/String; = "about:blank?static"

.field private static final TAG:Ljava/lang/String; = "WVUCWebView"

.field public static UC_CORE_URL:Ljava/lang/String; = null

.field private static UC_PLAYER_URL:Ljava/lang/String; = null

.field private static final WIFI:Ljava/lang/String; = "WIFI"

.field public static final WINDVANE:Ljava/lang/String; = "windvane"

.field private static final _2G:Ljava/lang/String; = "2g"

.field private static final _3G:Ljava/lang/String; = "3g"

.field private static final _4G:Ljava/lang/String; = "4g"

.field private static final _5g:Ljava/lang/String; = "5g"

.field public static bizId:Ljava/lang/String; = "windvane"

.field private static coreCode:I = -0x1

.field private static coreEventCallback:Landroid/taobao/windvane/webview/CoreEventCallback;

.field private static evaluateJavascriptSupported:Z

.field private static fromType:I

.field private static gpuMultiPolicy:I

.field private static initAfterUCCoreReady:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static initedJSBridge:Z

.field private static isSWInit:Z

.field public static isStop:Z

.field private static mDegradeAliNetwork:Z

.field private static mUseAliNetwork:Z

.field private static mUseSystemWebView:Z

.field private static needDownLoad:Z

.field private static openUCDebug:Z

.field private static pattern:Ljava/util/regex/Pattern;

.field private static renderMultiPolicy:I

.field private static final sCoreInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final sSpanWrapper:Landroid/taobao/windvane/fullspan/SpanWrapper;

.field private static sStaticUCWebView:Landroid/taobao/windvane/extra/uc/WVUCWebView;

.field private static final shouldUCLibInit:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private aliRequestAdapter:Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;

.field public bizCode:Ljava/lang/String;

.field private cachedUrl:Ljava/lang/String;

.field private containerSpan:Lcom/taobao/analysis/v3/FalcoSpan;

.field protected context:Landroid/content/Context;

.field private currentUrl:Ljava/lang/String;

.field private dataOnActive:Ljava/lang/String;

.field dx:F

.field dy:F

.field protected entryManager:Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;

.field firstTimeLoad:Z

.field private flag4commit:Z

.field injectJs:Ljava/lang/StringBuilder;

.field private isLive:Z

.field private isPreInit:Z

.field isUser:Z

.field private jsPatchListener:Landroid/taobao/windvane/jspatch/WVJsPatchListener;

.field private longPressSaveImage:Z

.field private mAllowAllOpen:Z

.field mEventSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mH5MonitorCache:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mHandler:Landroid/os/Handler;

.field private mImageUrl:Ljava/lang/String;

.field private mIsCoreDestroy:Z

.field private mIsStaticWebView:Z

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mPageLoadedCount:I

.field public mPageStart:J

.field private mPopupController:Landroid/taobao/windvane/view/PopupWindowController;

.field private mPopupMenuTags:[Ljava/lang/String;

.field private final mSpanWrapper:Landroid/taobao/windvane/fullspan/SpanWrapper;

.field private mUseGlobalUrlConfig:Z

.field private mWvNativeCallbackId:I

.field private onErrorTime:J

.field private openTracingContextMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public pageTracker:Landroid/taobao/windvane/extra/performance2/WVPageTracker;

.field private performanceDelegate:Landroid/taobao/windvane/extra/performance2/WVPerformance;

.field private pid:Ljava/lang/String;

.field private popupClickListener:Landroid/view/View$OnClickListener;

.field private reportedFSP:Z

.field protected supportDownload:Z

.field private ucParam:Ljava/lang/String;

.field private uid:Ljava/lang/String;

.field private useUrlConfig:Z

.field protected webChromeClient:Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;

.field protected webViewClient:Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;

.field public wpData:Landroid/taobao/windvane/extra/performance2/WVWPData;

.field public wvErrorManager:Landroid/taobao/windvane/extra/performance/WVErrorManager;

.field private wvSecurityFilter:Landroid/taobao/windvane/filter/WVSecurityFilter;

.field private wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

.field public wvfspManager:Landroid/taobao/windvane/extra/performance2/WVFSPManager;

.field public wvh5PPManager:Landroid/taobao/windvane/extra/performance/WVH5PPManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroid/taobao/windvane/fullspan/SpanWrapper;

    invoke-direct {v0}, Landroid/taobao/windvane/fullspan/SpanWrapper;-><init>()V

    sput-object v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->sSpanWrapper:Landroid/taobao/windvane/fullspan/SpanWrapper;

    const/16 v0, 0x46

    .line 2
    sput v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->fromType:I

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->sCoreInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->shouldUCLibInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    sput v1, Landroid/taobao/windvane/extra/uc/WVUCWebView;->INNER_FLAG:I

    .line 6
    invoke-static {}, Lcom/taobao/uc/UCSoSettings;->getInstance()Lcom/taobao/uc/UCSoSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/uc/UCSoSettings;->UC_CORE_URL_32:Ljava/lang/String;

    sput-object v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->UC_CORE_URL:Ljava/lang/String;

    .line 7
    invoke-static {}, Lcom/taobao/uc/UCSoSettings;->getInstance()Lcom/taobao/uc/UCSoSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/uc/UCSoSettings;->UC_PLAYER_URL:Ljava/lang/String;

    sput-object v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->UC_PLAYER_URL:Ljava/lang/String;

    const/4 v0, 0x1

    .line 8
    sput-boolean v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mUseAliNetwork:Z

    .line 9
    sput-boolean v1, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mUseSystemWebView:Z

    .line 10
    sput-boolean v1, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mDegradeAliNetwork:Z

    .line 11
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->evaluateJavascriptSupported:Z

    .line 12
    sput-boolean v1, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isSWInit:Z

    const/4 v0, 0x0

    .line 13
    sput-object v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->coreEventCallback:Landroid/taobao/windvane/webview/CoreEventCallback;

    .line 14
    sput-boolean v1, Landroid/taobao/windvane/extra/uc/WVUCWebView;->initedJSBridge:Z

    const-string v0, "WVUCWebView"

    const-string/jumbo v2, "static init uc core"

    .line 15
    invoke-static {v0, v2}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/config/GlobalConfig;->getInjectCode()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 17
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/taobao/windvane/config/GlobalConfig;->setInjectCode(I)V

    .line 18
    :cond_1
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/config/GlobalConfig;->isUcCoreOuterControl()Z

    move-result v0

    if-nez v0, :cond_2

    .line 19
    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->initUCCore()V

    .line 20
    :cond_2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->initAfterUCCoreReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    sput v1, Landroid/taobao/windvane/extra/uc/WVUCWebView;->renderMultiPolicy:I

    .line 22
    sput v1, Landroid/taobao/windvane/extra/uc/WVUCWebView;->gpuMultiPolicy:I

    .line 23
    sput-boolean v1, Landroid/taobao/windvane/extra/uc/WVUCWebView;->needDownLoad:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 89
    invoke-static {p1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isUseSystemWebView(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/uc/webview/export/WebView;-><init>(Landroid/content/Context;Z)V

    const-string v0, ""

    .line 90
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->bizCode:Ljava/lang/String;

    const/4 v1, 0x0

    .line 91
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->flag4commit:Z

    .line 92
    new-instance v2, Landroid/taobao/windvane/fullspan/SpanWrapper;

    invoke-direct {v2}, Landroid/taobao/windvane/fullspan/SpanWrapper;-><init>()V

    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mSpanWrapper:Landroid/taobao/windvane/fullspan/SpanWrapper;

    .line 93
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isLive:Z

    .line 94
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mIsCoreDestroy:Z

    const/4 v2, 0x0

    .line 95
    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->aliRequestAdapter:Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;

    .line 96
    new-instance v3, Landroid/taobao/windvane/extra/performance2/WVFSPManager;

    invoke-direct {v3}, Landroid/taobao/windvane/extra/performance2/WVFSPManager;-><init>()V

    iput-object v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvfspManager:Landroid/taobao/windvane/extra/performance2/WVFSPManager;

    .line 97
    new-instance v3, Landroid/taobao/windvane/extra/performance/WVH5PPManager;

    invoke-direct {v3, p0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;-><init>(Landroid/taobao/windvane/webview/IWVWebView;)V

    iput-object v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvh5PPManager:Landroid/taobao/windvane/extra/performance/WVH5PPManager;

    .line 98
    new-instance v3, Landroid/taobao/windvane/extra/performance/WVErrorManager;

    invoke-direct {v3}, Landroid/taobao/windvane/extra/performance/WVErrorManager;-><init>()V

    iput-object v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvErrorManager:Landroid/taobao/windvane/extra/performance/WVErrorManager;

    .line 99
    new-instance v3, Landroid/taobao/windvane/extra/performance2/WVPageTracker;

    invoke-direct {v3}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;-><init>()V

    iput-object v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->pageTracker:Landroid/taobao/windvane/extra/performance2/WVPageTracker;

    .line 100
    new-instance v3, Landroid/taobao/windvane/extra/performance2/WVWPData;

    invoke-direct {v3}, Landroid/taobao/windvane/extra/performance2/WVWPData;-><init>()V

    iput-object v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wpData:Landroid/taobao/windvane/extra/performance2/WVWPData;

    .line 101
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->reportedFSP:Z

    .line 102
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isPreInit:Z

    .line 103
    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvSecurityFilter:Landroid/taobao/windvane/filter/WVSecurityFilter;

    .line 104
    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->jsPatchListener:Landroid/taobao/windvane/jspatch/WVJsPatchListener;

    .line 105
    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    .line 106
    iput-boolean v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->supportDownload:Z

    const/16 v4, 0x3e8

    .line 107
    iput v4, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mWvNativeCallbackId:I

    .line 108
    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->dataOnActive:Ljava/lang/String;

    .line 109
    iput-boolean v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->longPressSaveImage:Z

    .line 110
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->ucParam:Ljava/lang/String;

    .line 111
    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->currentUrl:Ljava/lang/String;

    .line 112
    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->cachedUrl:Ljava/lang/String;

    new-array v4, v3, [Ljava/lang/String;

    .line 113
    invoke-static {}, Landroid/taobao/windvane/util/EnvUtil;->isCN()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "\u4fdd\u5b58\u5230\u76f8\u518c"

    goto :goto_0

    :cond_0
    const-string v5, "Save to album"

    :goto_0
    aput-object v5, v4, v1

    iput-object v4, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mPopupMenuTags:[Ljava/lang/String;

    .line 114
    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 115
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->useUrlConfig:Z

    .line 116
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v4

    invoke-virtual {v4}, Landroid/taobao/windvane/config/GlobalConfig;->isUseGlobalUrlConfig()Z

    move-result v4

    iput-boolean v4, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mUseGlobalUrlConfig:Z

    .line 117
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mAllowAllOpen:Z

    .line 118
    iput v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mPageLoadedCount:I

    .line 119
    new-instance v4, Landroid/taobao/windvane/extra/uc/WVUCWebView$1;

    invoke-direct {v4, p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView$1;-><init>(Landroid/taobao/windvane/extra/uc/WVUCWebView;)V

    iput-object v4, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->popupClickListener:Landroid/view/View$OnClickListener;

    .line 120
    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    const-wide/16 v4, 0x0

    .line 121
    iput-wide v4, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->onErrorTime:J

    .line 122
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->pid:Ljava/lang/String;

    .line 123
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->uid:Ljava/lang/String;

    .line 124
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mIsStaticWebView:Z

    .line 125
    iput-boolean v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->firstTimeLoad:Z

    .line 126
    iput-boolean v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isUser:Z

    .line 127
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mEventSparseArray:Landroid/util/SparseArray;

    .line 128
    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mH5MonitorCache:Ljava/util/Hashtable;

    .line 129
    iput-wide v4, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mPageStart:J

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->injectJs:Ljava/lang/StringBuilder;

    .line 131
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->context:Landroid/content/Context;

    .line 132
    invoke-direct {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 45
    invoke-static {p1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isUseSystemWebView(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/uc/webview/export/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    const-string p2, ""

    .line 46
    iput-object p2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->bizCode:Ljava/lang/String;

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->flag4commit:Z

    .line 48
    new-instance v1, Landroid/taobao/windvane/fullspan/SpanWrapper;

    invoke-direct {v1}, Landroid/taobao/windvane/fullspan/SpanWrapper;-><init>()V

    iput-object v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mSpanWrapper:Landroid/taobao/windvane/fullspan/SpanWrapper;

    .line 49
    iput-boolean v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isLive:Z

    .line 50
    iput-boolean v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mIsCoreDestroy:Z

    const/4 v1, 0x0

    .line 51
    iput-object v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->aliRequestAdapter:Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;

    .line 52
    new-instance v2, Landroid/taobao/windvane/extra/performance2/WVFSPManager;

    invoke-direct {v2}, Landroid/taobao/windvane/extra/performance2/WVFSPManager;-><init>()V

    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvfspManager:Landroid/taobao/windvane/extra/performance2/WVFSPManager;

    .line 53
    new-instance v2, Landroid/taobao/windvane/extra/performance/WVH5PPManager;

    invoke-direct {v2, p0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;-><init>(Landroid/taobao/windvane/webview/IWVWebView;)V

    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvh5PPManager:Landroid/taobao/windvane/extra/performance/WVH5PPManager;

    .line 54
    new-instance v2, Landroid/taobao/windvane/extra/performance/WVErrorManager;

    invoke-direct {v2}, Landroid/taobao/windvane/extra/performance/WVErrorManager;-><init>()V

    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvErrorManager:Landroid/taobao/windvane/extra/performance/WVErrorManager;

    .line 55
    new-instance v2, Landroid/taobao/windvane/extra/performance2/WVPageTracker;

    invoke-direct {v2}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;-><init>()V

    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->pageTracker:Landroid/taobao/windvane/extra/performance2/WVPageTracker;

    .line 56
    new-instance v2, Landroid/taobao/windvane/extra/performance2/WVWPData;

    invoke-direct {v2}, Landroid/taobao/windvane/extra/performance2/WVWPData;-><init>()V

    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wpData:Landroid/taobao/windvane/extra/performance2/WVWPData;

    .line 57
    iput-boolean v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->reportedFSP:Z

    .line 58
    iput-boolean v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isPreInit:Z

    .line 59
    iput-object v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvSecurityFilter:Landroid/taobao/windvane/filter/WVSecurityFilter;

    .line 60
    iput-object v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->jsPatchListener:Landroid/taobao/windvane/jspatch/WVJsPatchListener;

    .line 61
    iput-object v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    .line 62
    iput-boolean v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->supportDownload:Z

    const/16 v3, 0x3e8

    .line 63
    iput v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mWvNativeCallbackId:I

    .line 64
    iput-object v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->dataOnActive:Ljava/lang/String;

    .line 65
    iput-boolean v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->longPressSaveImage:Z

    .line 66
    iput-object p2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->ucParam:Ljava/lang/String;

    .line 67
    iput-object v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->currentUrl:Ljava/lang/String;

    .line 68
    iput-object v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->cachedUrl:Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/String;

    .line 69
    invoke-static {}, Landroid/taobao/windvane/util/EnvUtil;->isCN()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "\u4fdd\u5b58\u5230\u76f8\u518c"

    goto :goto_0

    :cond_0
    const-string v4, "Save to album"

    :goto_0
    aput-object v4, v3, v0

    iput-object v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mPopupMenuTags:[Ljava/lang/String;

    .line 70
    iput-object v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 71
    iput-boolean v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->useUrlConfig:Z

    .line 72
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v3

    invoke-virtual {v3}, Landroid/taobao/windvane/config/GlobalConfig;->isUseGlobalUrlConfig()Z

    move-result v3

    iput-boolean v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mUseGlobalUrlConfig:Z

    .line 73
    iput-boolean v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mAllowAllOpen:Z

    .line 74
    iput v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mPageLoadedCount:I

    .line 75
    new-instance v3, Landroid/taobao/windvane/extra/uc/WVUCWebView$1;

    invoke-direct {v3, p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView$1;-><init>(Landroid/taobao/windvane/extra/uc/WVUCWebView;)V

    iput-object v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->popupClickListener:Landroid/view/View$OnClickListener;

    .line 76
    iput-object v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    const-wide/16 v3, 0x0

    .line 77
    iput-wide v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->onErrorTime:J

    .line 78
    iput-object p2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->pid:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->uid:Ljava/lang/String;

    .line 80
    iput-boolean v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mIsStaticWebView:Z

    .line 81
    iput-boolean v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->firstTimeLoad:Z

    .line 82
    iput-boolean v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isUser:Z

    .line 83
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mEventSparseArray:Landroid/util/SparseArray;

    .line 84
    iput-object v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mH5MonitorCache:Ljava/util/Hashtable;

    .line 85
    iput-wide v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mPageStart:J

    .line 86
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "javascript:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->injectJs:Ljava/lang/StringBuilder;

    .line 87
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->context:Landroid/content/Context;

    .line 88
    invoke-direct {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isUseSystemWebView(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/uc/webview/export/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    const-string p2, ""

    .line 2
    iput-object p2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->bizCode:Ljava/lang/String;

    const/4 p3, 0x0

    .line 3
    iput-boolean p3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->flag4commit:Z

    .line 4
    new-instance v0, Landroid/taobao/windvane/fullspan/SpanWrapper;

    invoke-direct {v0}, Landroid/taobao/windvane/fullspan/SpanWrapper;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mSpanWrapper:Landroid/taobao/windvane/fullspan/SpanWrapper;

    .line 5
    iput-boolean p3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isLive:Z

    .line 6
    iput-boolean p3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mIsCoreDestroy:Z

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->aliRequestAdapter:Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;

    .line 8
    new-instance v1, Landroid/taobao/windvane/extra/performance2/WVFSPManager;

    invoke-direct {v1}, Landroid/taobao/windvane/extra/performance2/WVFSPManager;-><init>()V

    iput-object v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvfspManager:Landroid/taobao/windvane/extra/performance2/WVFSPManager;

    .line 9
    new-instance v1, Landroid/taobao/windvane/extra/performance/WVH5PPManager;

    invoke-direct {v1, p0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;-><init>(Landroid/taobao/windvane/webview/IWVWebView;)V

    iput-object v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvh5PPManager:Landroid/taobao/windvane/extra/performance/WVH5PPManager;

    .line 10
    new-instance v1, Landroid/taobao/windvane/extra/performance/WVErrorManager;

    invoke-direct {v1}, Landroid/taobao/windvane/extra/performance/WVErrorManager;-><init>()V

    iput-object v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvErrorManager:Landroid/taobao/windvane/extra/performance/WVErrorManager;

    .line 11
    new-instance v1, Landroid/taobao/windvane/extra/performance2/WVPageTracker;

    invoke-direct {v1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;-><init>()V

    iput-object v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->pageTracker:Landroid/taobao/windvane/extra/performance2/WVPageTracker;

    .line 12
    new-instance v1, Landroid/taobao/windvane/extra/performance2/WVWPData;

    invoke-direct {v1}, Landroid/taobao/windvane/extra/performance2/WVWPData;-><init>()V

    iput-object v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wpData:Landroid/taobao/windvane/extra/performance2/WVWPData;

    .line 13
    iput-boolean p3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->reportedFSP:Z

    .line 14
    iput-boolean p3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isPreInit:Z

    .line 15
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvSecurityFilter:Landroid/taobao/windvane/filter/WVSecurityFilter;

    .line 16
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->jsPatchListener:Landroid/taobao/windvane/jspatch/WVJsPatchListener;

    .line 17
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    .line 18
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->supportDownload:Z

    const/16 v2, 0x3e8

    .line 19
    iput v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mWvNativeCallbackId:I

    .line 20
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->dataOnActive:Ljava/lang/String;

    .line 21
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->longPressSaveImage:Z

    .line 22
    iput-object p2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->ucParam:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->currentUrl:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->cachedUrl:Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/String;

    .line 25
    invoke-static {}, Landroid/taobao/windvane/util/EnvUtil;->isCN()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "\u4fdd\u5b58\u5230\u76f8\u518c"

    goto :goto_0

    :cond_0
    const-string v3, "Save to album"

    :goto_0
    aput-object v3, v2, p3

    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mPopupMenuTags:[Ljava/lang/String;

    .line 26
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 27
    iput-boolean p3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->useUrlConfig:Z

    .line 28
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v2

    invoke-virtual {v2}, Landroid/taobao/windvane/config/GlobalConfig;->isUseGlobalUrlConfig()Z

    move-result v2

    iput-boolean v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mUseGlobalUrlConfig:Z

    .line 29
    iput-boolean p3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mAllowAllOpen:Z

    .line 30
    iput p3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mPageLoadedCount:I

    .line 31
    new-instance v2, Landroid/taobao/windvane/extra/uc/WVUCWebView$1;

    invoke-direct {v2, p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView$1;-><init>(Landroid/taobao/windvane/extra/uc/WVUCWebView;)V

    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->popupClickListener:Landroid/view/View$OnClickListener;

    .line 32
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    const-wide/16 v2, 0x0

    .line 33
    iput-wide v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->onErrorTime:J

    .line 34
    iput-object p2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->pid:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->uid:Ljava/lang/String;

    .line 36
    iput-boolean p3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mIsStaticWebView:Z

    .line 37
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->firstTimeLoad:Z

    .line 38
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isUser:Z

    .line 39
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mEventSparseArray:Landroid/util/SparseArray;

    .line 40
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mH5MonitorCache:Ljava/util/Hashtable;

    .line 41
    iput-wide v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mPageStart:J

    .line 42
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "javascript:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->injectJs:Ljava/lang/StringBuilder;

    .line 43
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->context:Landroid/content/Context;

    .line 44
    invoke-direct {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 178
    invoke-static {p1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isUseSystemWebView(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/uc/webview/export/WebView;-><init>(Landroid/content/Context;Z)V

    const-string v0, ""

    .line 179
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->bizCode:Ljava/lang/String;

    const/4 v1, 0x0

    .line 180
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->flag4commit:Z

    .line 181
    new-instance v2, Landroid/taobao/windvane/fullspan/SpanWrapper;

    invoke-direct {v2}, Landroid/taobao/windvane/fullspan/SpanWrapper;-><init>()V

    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mSpanWrapper:Landroid/taobao/windvane/fullspan/SpanWrapper;

    .line 182
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isLive:Z

    .line 183
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mIsCoreDestroy:Z

    const/4 v2, 0x0

    .line 184
    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->aliRequestAdapter:Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;

    .line 185
    new-instance v3, Landroid/taobao/windvane/extra/performance2/WVFSPManager;

    invoke-direct {v3}, Landroid/taobao/windvane/extra/performance2/WVFSPManager;-><init>()V

    iput-object v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvfspManager:Landroid/taobao/windvane/extra/performance2/WVFSPManager;

    .line 186
    new-instance v3, Landroid/taobao/windvane/extra/performance/WVH5PPManager;

    invoke-direct {v3, p0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;-><init>(Landroid/taobao/windvane/webview/IWVWebView;)V

    iput-object v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvh5PPManager:Landroid/taobao/windvane/extra/performance/WVH5PPManager;

    .line 187
    new-instance v3, Landroid/taobao/windvane/extra/performance/WVErrorManager;

    invoke-direct {v3}, Landroid/taobao/windvane/extra/performance/WVErrorManager;-><init>()V

    iput-object v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvErrorManager:Landroid/taobao/windvane/extra/performance/WVErrorManager;

    .line 188
    new-instance v3, Landroid/taobao/windvane/extra/performance2/WVPageTracker;

    invoke-direct {v3}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;-><init>()V

    iput-object v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->pageTracker:Landroid/taobao/windvane/extra/performance2/WVPageTracker;

    .line 189
    new-instance v3, Landroid/taobao/windvane/extra/performance2/WVWPData;

    invoke-direct {v3}, Landroid/taobao/windvane/extra/performance2/WVWPData;-><init>()V

    iput-object v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wpData:Landroid/taobao/windvane/extra/performance2/WVWPData;

    .line 190
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->reportedFSP:Z

    .line 191
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isPreInit:Z

    .line 192
    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvSecurityFilter:Landroid/taobao/windvane/filter/WVSecurityFilter;

    .line 193
    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->jsPatchListener:Landroid/taobao/windvane/jspatch/WVJsPatchListener;

    .line 194
    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    .line 195
    iput-boolean v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->supportDownload:Z

    const/16 v4, 0x3e8

    .line 196
    iput v4, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mWvNativeCallbackId:I

    .line 197
    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->dataOnActive:Ljava/lang/String;

    .line 198
    iput-boolean v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->longPressSaveImage:Z

    .line 199
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->ucParam:Ljava/lang/String;

    .line 200
    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->currentUrl:Ljava/lang/String;

    .line 201
    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->cachedUrl:Ljava/lang/String;

    new-array v4, v3, [Ljava/lang/String;

    .line 202
    invoke-static {}, Landroid/taobao/windvane/util/EnvUtil;->isCN()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "\u4fdd\u5b58\u5230\u76f8\u518c"

    goto :goto_0

    :cond_0
    const-string v5, "Save to album"

    :goto_0
    aput-object v5, v4, v1

    iput-object v4, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mPopupMenuTags:[Ljava/lang/String;

    .line 203
    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 204
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->useUrlConfig:Z

    .line 205
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v4

    invoke-virtual {v4}, Landroid/taobao/windvane/config/GlobalConfig;->isUseGlobalUrlConfig()Z

    move-result v4

    iput-boolean v4, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mUseGlobalUrlConfig:Z

    .line 206
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mAllowAllOpen:Z

    .line 207
    iput v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mPageLoadedCount:I

    .line 208
    new-instance v4, Landroid/taobao/windvane/extra/uc/WVUCWebView$1;

    invoke-direct {v4, p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView$1;-><init>(Landroid/taobao/windvane/extra/uc/WVUCWebView;)V

    iput-object v4, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->popupClickListener:Landroid/view/View$OnClickListener;

    .line 209
    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    const-wide/16 v4, 0x0

    .line 210
    iput-wide v4, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->onErrorTime:J

    .line 211
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->pid:Ljava/lang/String;

    .line 212
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->uid:Ljava/lang/String;

    .line 213
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mIsStaticWebView:Z

    .line 214
    iput-boolean v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->firstTimeLoad:Z

    .line 215
    iput-boolean v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isUser:Z

    .line 216
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mEventSparseArray:Landroid/util/SparseArray;

    .line 217
    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mH5MonitorCache:Ljava/util/Hashtable;

    .line 218
    iput-wide v4, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mPageStart:J

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->injectJs:Ljava/lang/StringBuilder;

    .line 220
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 221
    iput-object p2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->pid:Ljava/lang/String;

    .line 222
    :cond_1
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->context:Landroid/content/Context;

    .line 223
    invoke-direct {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 133
    invoke-static {p1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isUseSystemWebView(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/uc/webview/export/WebView;-><init>(Landroid/content/Context;Z)V

    const-string v0, ""

    .line 134
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->bizCode:Ljava/lang/String;

    const/4 v1, 0x0

    .line 135
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->flag4commit:Z

    .line 136
    new-instance v2, Landroid/taobao/windvane/fullspan/SpanWrapper;

    invoke-direct {v2}, Landroid/taobao/windvane/fullspan/SpanWrapper;-><init>()V

    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mSpanWrapper:Landroid/taobao/windvane/fullspan/SpanWrapper;

    .line 137
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isLive:Z

    .line 138
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mIsCoreDestroy:Z

    const/4 v2, 0x0

    .line 139
    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->aliRequestAdapter:Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;

    .line 140
    new-instance v3, Landroid/taobao/windvane/extra/performance2/WVFSPManager;

    invoke-direct {v3}, Landroid/taobao/windvane/extra/performance2/WVFSPManager;-><init>()V

    iput-object v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvfspManager:Landroid/taobao/windvane/extra/performance2/WVFSPManager;

    .line 141
    new-instance v3, Landroid/taobao/windvane/extra/performance/WVH5PPManager;

    invoke-direct {v3, p0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;-><init>(Landroid/taobao/windvane/webview/IWVWebView;)V

    iput-object v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvh5PPManager:Landroid/taobao/windvane/extra/performance/WVH5PPManager;

    .line 142
    new-instance v3, Landroid/taobao/windvane/extra/performance/WVErrorManager;

    invoke-direct {v3}, Landroid/taobao/windvane/extra/performance/WVErrorManager;-><init>()V

    iput-object v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvErrorManager:Landroid/taobao/windvane/extra/performance/WVErrorManager;

    .line 143
    new-instance v3, Landroid/taobao/windvane/extra/performance2/WVPageTracker;

    invoke-direct {v3}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;-><init>()V

    iput-object v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->pageTracker:Landroid/taobao/windvane/extra/performance2/WVPageTracker;

    .line 144
    new-instance v3, Landroid/taobao/windvane/extra/performance2/WVWPData;

    invoke-direct {v3}, Landroid/taobao/windvane/extra/performance2/WVWPData;-><init>()V

    iput-object v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wpData:Landroid/taobao/windvane/extra/performance2/WVWPData;

    .line 145
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->reportedFSP:Z

    .line 146
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isPreInit:Z

    .line 147
    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvSecurityFilter:Landroid/taobao/windvane/filter/WVSecurityFilter;

    .line 148
    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->jsPatchListener:Landroid/taobao/windvane/jspatch/WVJsPatchListener;

    .line 149
    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    .line 150
    iput-boolean v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->supportDownload:Z

    const/16 v4, 0x3e8

    .line 151
    iput v4, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mWvNativeCallbackId:I

    .line 152
    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->dataOnActive:Ljava/lang/String;

    .line 153
    iput-boolean v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->longPressSaveImage:Z

    .line 154
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->ucParam:Ljava/lang/String;

    .line 155
    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->currentUrl:Ljava/lang/String;

    .line 156
    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->cachedUrl:Ljava/lang/String;

    new-array v4, v3, [Ljava/lang/String;

    .line 157
    invoke-static {}, Landroid/taobao/windvane/util/EnvUtil;->isCN()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "\u4fdd\u5b58\u5230\u76f8\u518c"

    goto :goto_0

    :cond_0
    const-string v5, "Save to album"

    :goto_0
    aput-object v5, v4, v1

    iput-object v4, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mPopupMenuTags:[Ljava/lang/String;

    .line 158
    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 159
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->useUrlConfig:Z

    .line 160
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v4

    invoke-virtual {v4}, Landroid/taobao/windvane/config/GlobalConfig;->isUseGlobalUrlConfig()Z

    move-result v4

    iput-boolean v4, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mUseGlobalUrlConfig:Z

    .line 161
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mAllowAllOpen:Z

    .line 162
    iput v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mPageLoadedCount:I

    .line 163
    new-instance v4, Landroid/taobao/windvane/extra/uc/WVUCWebView$1;

    invoke-direct {v4, p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView$1;-><init>(Landroid/taobao/windvane/extra/uc/WVUCWebView;)V

    iput-object v4, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->popupClickListener:Landroid/view/View$OnClickListener;

    .line 164
    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    const-wide/16 v4, 0x0

    .line 165
    iput-wide v4, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->onErrorTime:J

    .line 166
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->pid:Ljava/lang/String;

    .line 167
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->uid:Ljava/lang/String;

    .line 168
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mIsStaticWebView:Z

    .line 169
    iput-boolean v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->firstTimeLoad:Z

    .line 170
    iput-boolean v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isUser:Z

    .line 171
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mEventSparseArray:Landroid/util/SparseArray;

    .line 172
    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mH5MonitorCache:Ljava/util/Hashtable;

    .line 173
    iput-wide v4, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mPageStart:J

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->injectJs:Ljava/lang/StringBuilder;

    .line 175
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->context:Landroid/content/Context;

    .line 176
    iput-object p2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->openTracingContextMap:Ljava/util/Map;

    .line 177
    invoke-direct {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 6

    .line 224
    invoke-static {p1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isUseSystemWebView(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/uc/webview/export/WebView;-><init>(Landroid/content/Context;Z)V

    const-string v0, ""

    .line 225
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->bizCode:Ljava/lang/String;

    const/4 v1, 0x0

    .line 226
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->flag4commit:Z

    .line 227
    new-instance v2, Landroid/taobao/windvane/fullspan/SpanWrapper;

    invoke-direct {v2}, Landroid/taobao/windvane/fullspan/SpanWrapper;-><init>()V

    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mSpanWrapper:Landroid/taobao/windvane/fullspan/SpanWrapper;

    .line 228
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isLive:Z

    .line 229
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mIsCoreDestroy:Z

    const/4 v2, 0x0

    .line 230
    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->aliRequestAdapter:Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;

    .line 231
    new-instance v3, Landroid/taobao/windvane/extra/performance2/WVFSPManager;

    invoke-direct {v3}, Landroid/taobao/windvane/extra/performance2/WVFSPManager;-><init>()V

    iput-object v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvfspManager:Landroid/taobao/windvane/extra/performance2/WVFSPManager;

    .line 232
    new-instance v3, Landroid/taobao/windvane/extra/performance/WVH5PPManager;

    invoke-direct {v3, p0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;-><init>(Landroid/taobao/windvane/webview/IWVWebView;)V

    iput-object v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvh5PPManager:Landroid/taobao/windvane/extra/performance/WVH5PPManager;

    .line 233
    new-instance v3, Landroid/taobao/windvane/extra/performance/WVErrorManager;

    invoke-direct {v3}, Landroid/taobao/windvane/extra/performance/WVErrorManager;-><init>()V

    iput-object v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvErrorManager:Landroid/taobao/windvane/extra/performance/WVErrorManager;

    .line 234
    new-instance v3, Landroid/taobao/windvane/extra/performance2/WVPageTracker;

    invoke-direct {v3}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;-><init>()V

    iput-object v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->pageTracker:Landroid/taobao/windvane/extra/performance2/WVPageTracker;

    .line 235
    new-instance v3, Landroid/taobao/windvane/extra/performance2/WVWPData;

    invoke-direct {v3}, Landroid/taobao/windvane/extra/performance2/WVWPData;-><init>()V

    iput-object v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wpData:Landroid/taobao/windvane/extra/performance2/WVWPData;

    .line 236
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->reportedFSP:Z

    .line 237
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isPreInit:Z

    .line 238
    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvSecurityFilter:Landroid/taobao/windvane/filter/WVSecurityFilter;

    .line 239
    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->jsPatchListener:Landroid/taobao/windvane/jspatch/WVJsPatchListener;

    .line 240
    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    .line 241
    iput-boolean v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->supportDownload:Z

    const/16 v4, 0x3e8

    .line 242
    iput v4, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mWvNativeCallbackId:I

    .line 243
    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->dataOnActive:Ljava/lang/String;

    .line 244
    iput-boolean v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->longPressSaveImage:Z

    .line 245
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->ucParam:Ljava/lang/String;

    .line 246
    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->currentUrl:Ljava/lang/String;

    .line 247
    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->cachedUrl:Ljava/lang/String;

    new-array v4, v3, [Ljava/lang/String;

    .line 248
    invoke-static {}, Landroid/taobao/windvane/util/EnvUtil;->isCN()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "\u4fdd\u5b58\u5230\u76f8\u518c"

    goto :goto_0

    :cond_0
    const-string v5, "Save to album"

    :goto_0
    aput-object v5, v4, v1

    iput-object v4, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mPopupMenuTags:[Ljava/lang/String;

    .line 249
    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 250
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->useUrlConfig:Z

    .line 251
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v4

    invoke-virtual {v4}, Landroid/taobao/windvane/config/GlobalConfig;->isUseGlobalUrlConfig()Z

    move-result v4

    iput-boolean v4, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mUseGlobalUrlConfig:Z

    .line 252
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mAllowAllOpen:Z

    .line 253
    iput v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mPageLoadedCount:I

    .line 254
    new-instance v4, Landroid/taobao/windvane/extra/uc/WVUCWebView$1;

    invoke-direct {v4, p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView$1;-><init>(Landroid/taobao/windvane/extra/uc/WVUCWebView;)V

    iput-object v4, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->popupClickListener:Landroid/view/View$OnClickListener;

    .line 255
    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    const-wide/16 v4, 0x0

    .line 256
    iput-wide v4, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->onErrorTime:J

    .line 257
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->pid:Ljava/lang/String;

    .line 258
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->uid:Ljava/lang/String;

    .line 259
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mIsStaticWebView:Z

    .line 260
    iput-boolean v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->firstTimeLoad:Z

    .line 261
    iput-boolean v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isUser:Z

    .line 262
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mEventSparseArray:Landroid/util/SparseArray;

    .line 263
    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mH5MonitorCache:Ljava/util/Hashtable;

    .line 264
    iput-wide v4, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mPageStart:J

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->injectJs:Ljava/lang/StringBuilder;

    .line 266
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->context:Landroid/content/Context;

    .line 267
    iput-boolean p2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mIsStaticWebView:Z

    .line 268
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getWvMonitorInterface()Landroid/taobao/windvane/monitor/WVMonitorInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 269
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getWvMonitorInterface()Landroid/taobao/windvane/monitor/WVMonitorInterface;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/taobao/windvane/monitor/WVMonitorInterface;->WebViewWrapType(Ljava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 270
    new-instance p2, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;

    invoke-direct {p2, p1}, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->setWebViewClient(Lcom/uc/webview/export/WebViewClient;)V

    .line 271
    new-instance p2, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;

    invoke-direct {p2, p1}, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->setWebChromeClient(Lcom/uc/webview/export/WebChromeClient;)V

    .line 272
    invoke-virtual {p0}, Lcom/uc/webview/export/WebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 273
    new-instance p2, Landroid/taobao/windvane/extra/uc/WVUCClient;

    invoke-direct {p2, p0}, Landroid/taobao/windvane/extra/uc/WVUCClient;-><init>(Landroid/taobao/windvane/webview/IWVWebView;)V

    invoke-virtual {p1, p2}, Lcom/uc/webview/export/extension/UCExtension;->setClient(Lcom/uc/webview/export/extension/UCClient;)V

    goto :goto_1

    .line 274
    :cond_2
    invoke-direct {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->init()V

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic access$000(Landroid/taobao/windvane/extra/uc/WVUCWebView;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mPopupMenuTags:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Landroid/taobao/windvane/extra/uc/WVUCWebView;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mImageUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->createStaticWebViewOnMainThread(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$102(Landroid/taobao/windvane/extra/uc/WVUCWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mImageUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100()V
    .locals 0

    .line 1
    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->destroyStaticWebViewOnMainThread()V

    return-void
.end method

.method static synthetic access$1200(Landroid/taobao/windvane/extra/uc/WVUCWebView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->longPressSaveImage:Z

    return p0
.end method

.method static synthetic access$1300(Landroid/taobao/windvane/extra/uc/WVUCWebView;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->popupClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$1401(Landroid/taobao/windvane/extra/uc/WVUCWebView;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->coreDestroy()V

    return-void
.end method

.method static synthetic access$1502(Landroid/taobao/windvane/extra/uc/WVUCWebView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mIsCoreDestroy:Z

    return p1
.end method

.method static synthetic access$1600()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 1
    sget-object v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->shouldUCLibInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1700()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 1
    sget-object v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->sCoreInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/content/Context;J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->onUCMCoreSwitched(Landroid/content/Context;J)V

    return-void
.end method

.method static synthetic access$1900()Landroid/taobao/windvane/webview/CoreEventCallback;
    .locals 1

    .line 1
    sget-object v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->coreEventCallback:Landroid/taobao/windvane/webview/CoreEventCallback;

    return-object v0
.end method

.method static synthetic access$200(Landroid/taobao/windvane/extra/uc/WVUCWebView;)Landroid/taobao/windvane/view/PopupWindowController;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mPopupController:Landroid/taobao/windvane/view/PopupWindowController;

    return-object p0
.end method

.method static synthetic access$2000()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 1
    sget-object v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->initAfterUCCoreReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$202(Landroid/taobao/windvane/extra/uc/WVUCWebView;Landroid/taobao/windvane/view/PopupWindowController;)Landroid/taobao/windvane/view/PopupWindowController;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mPopupController:Landroid/taobao/windvane/view/PopupWindowController;

    return-object p1
.end method

.method static synthetic access$2100(Landroid/content/Context;J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->initAfterUCReady(Landroid/content/Context;J)V

    return-void
.end method

.method static synthetic access$300([Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->uploadLog([Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 1
    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isMainProcess()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->saveUCCoeDexDirPath(Ljava/lang/String;)V

    return-void
.end method

.method private static checkOldCoreVersion(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private static checkSW()V
    .locals 3

    const-string v0, "WVUCWebView"

    :try_start_0
    const-string/jumbo v1, "start to set ServiceWorker client"

    .line 1
    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/uc/webview/export/ServiceWorkerController;->getInstance()Lcom/uc/webview/export/ServiceWorkerController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v2, Landroid/taobao/windvane/extra/uc/WVUCServiceWorkerClient;

    invoke-direct {v2}, Landroid/taobao/windvane/extra/uc/WVUCServiceWorkerClient;-><init>()V

    invoke-virtual {v1, v2}, Lcom/uc/webview/export/ServiceWorkerController;->setServiceWorkerClient(Lcom/uc/webview/export/ServiceWorkerClient;)V

    :cond_0
    const/4 v1, 0x1

    .line 4
    sput-boolean v1, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isSWInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v1, 0x0

    .line 5
    sput-boolean v1, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isSWInit:Z

    const-string v1, "failed to set ServiceWorker client"

    .line 6
    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static createStaticWebViewIfNeeded(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isWebViewMultiProcessEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Landroid/taobao/windvane/extra/uc/WVUCWebView$4;

    invoke-direct {v1, p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView$4;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static createStaticWebViewOnMainThread(Landroid/content/Context;)V
    .locals 2

    const-string/jumbo v0, "sandbox"

    const-string v1, "createStaticWebViewOnMainThread"

    .line 1
    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->sStaticUCWebView:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->sStaticUCWebView:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    const-string p0, "about:blank?static"

    .line 4
    invoke-virtual {v0, p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static destroyStaticWebViewIfNeeded()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isWebViewMultiProcessEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Landroid/taobao/windvane/extra/uc/WVUCWebView$5;

    invoke-direct {v1}, Landroid/taobao/windvane/extra/uc/WVUCWebView$5;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static destroyStaticWebViewOnMainThread()V
    .locals 2

    const-string/jumbo v0, "sandbox"

    const-string v1, "destroyStaticWebViewOnMainThread"

    .line 1
    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->sStaticUCWebView:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->destroy()V

    const/4 v0, 0x0

    .line 4
    sput-object v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->sStaticUCWebView:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    :cond_0
    return-void
.end method

.method private static getBusinessDecompressRootDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/uc/webview/export/extension/UCCore;->getExtractRootDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getCore7zDecompressDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/uc/webview/export/extension/UCCore;->getExtractDirPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCurrentNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "connectivity"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 2
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "null"

    goto :goto_3

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    .line 4
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_1

    goto :goto_2

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_7

    .line 6
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_6

    if-eq p0, v1, :cond_6

    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x3

    if-eq p0, v0, :cond_5

    const/16 v0, 0x8

    if-eq p0, v0, :cond_5

    const/4 v0, 0x6

    if-eq p0, v0, :cond_5

    const/4 v0, 0x5

    if-eq p0, v0, :cond_5

    const/16 v0, 0xc

    if-ne p0, v0, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0xd

    if-ne p0, v0, :cond_4

    const-string p0, "4g"

    goto :goto_3

    .line 7
    :cond_4
    invoke-static {}, Landroid/taobao/windvane/config/WVCommonConfig;->getInstance()Landroid/taobao/windvane/config/WVCommonConfig;

    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-boolean v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->open5GAdapter:Z

    if-eqz v0, :cond_7

    const/16 v0, 0x14

    if-ne p0, v0, :cond_7

    const-string p0, "5g"

    goto :goto_3

    :cond_5
    :goto_0
    const-string p0, "3g"

    goto :goto_3

    :cond_6
    :goto_1
    const-string p0, "2g"

    goto :goto_3

    :cond_7
    const-string p0, ""

    goto :goto_3

    :cond_8
    :goto_2
    const-string p0, "WIFI"

    :goto_3
    return-object p0
.end method

.method public static getDegradeAliNetwork()Z
    .locals 1

    .line 1
    sget-boolean v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mDegradeAliNetwork:Z

    return v0
.end method

.method public static getFromType()I
    .locals 1

    const/16 v0, 0x46

    .line 1
    sput v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->fromType:I

    .line 2
    invoke-static {}, Landroid/taobao/windvane/extra/core/WVCore;->getInstance()Landroid/taobao/windvane/extra/core/WVCore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/core/WVCore;->isUCSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getUseTaobaoNetwork()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    sput v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->fromType:I

    goto :goto_1

    .line 4
    :cond_1
    sget-boolean v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mUseSystemWebView:Z

    if-nez v0, :cond_2

    const/16 v0, 0x47

    .line 5
    sput v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->fromType:I

    .line 6
    :cond_2
    :goto_1
    sget v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->fromType:I

    return v0
.end method

.method private static getMultiProcessPrivateDataDirectorySuffix()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0"

    return-object v0

    .line 2
    :cond_0
    sget-object v0, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    invoke-static {v0}, Landroid/taobao/windvane/util/CommonUtils;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    .line 3
    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    return-object v0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "WVUCWebView"

    aput-object v4, v1, v3

    sget-object v3, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    .line 7
    invoke-static {v3}, Landroid/taobao/windvane/util/CommonUtils;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "%s getMultiProcessPrivateDataDirectorySuffix failure!Subprocess name: %s illegal."

    .line 8
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getOld7zDecompressPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string p0, "WindVane"

    const-string v0, "UC_PATH"

    .line 1
    invoke-static {p0, v0}, Landroid/taobao/windvane/util/ConfigStorage;->getStringVal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get dex path:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WVUCWebView"

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static getUCSDKSupport()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Landroid/taobao/windvane/extra/core/WVCore;->getInstance()Landroid/taobao/windvane/extra/core/WVCore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/core/WVCore;->isUCSupport()Z

    move-result v0

    return v0
.end method

.method public static getUseTaobaoNetwork()Z
    .locals 1

    .line 1
    invoke-static {}, Landroid/taobao/windvane/extra/core/WVCore;->getInstance()Landroid/taobao/windvane/extra/core/WVCore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/core/WVCore;->isUCSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mUseAliNetwork:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private init()V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isPreInit:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getOpenTracingContext()Ljava/util/Map;

    move-result-object v0

    :goto_0
    const-string/jumbo v2, "windvanePage"

    const-string v3, "H5Page"

    invoke-static {v2, v3, v0}, Landroid/taobao/windvane/util/FullTraceUtils;->makeSpanChildOf(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/taobao/analysis/v3/FalcoSpan;

    move-result-object v0

    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->containerSpan:Lcom/taobao/analysis/v3/FalcoSpan;

    .line 2
    invoke-virtual {p0, v0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->setFalcoSpan(Lcom/taobao/analysis/v3/FalcoSpan;)V

    .line 3
    :try_start_0
    sget v0, Lcom/taobao/monitor/procedure/ViewToken;->APM_VIEW_TOKEN:I

    const-string v2, "invalid_view"

    invoke-virtual {p0, v0, v2}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 4
    sget v0, Lcom/taobao/monitor/procedure/ViewToken;->VIEW_MANUAL_CALCULATE:I

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v2}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 6
    :goto_1
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvh5PPManager:Landroid/taobao/windvane/extra/performance/WVH5PPManager;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->webViewDidStartInit()V

    .line 7
    sget-object v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->sCoreInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v2, "WVUCWebView"

    if-nez v0, :cond_1

    const-string/jumbo v0, "uc compensation initialization"

    .line 8
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->initUCCore()V

    .line 10
    :cond_1
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getWvMonitorInterface()Landroid/taobao/windvane/monitor/WVMonitorInterface;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 11
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getWvMonitorInterface()Landroid/taobao/windvane/monitor/WVMonitorInterface;

    move-result-object v0

    iget-object v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->context:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/taobao/windvane/monitor/WVMonitorInterface;->WebViewWrapType(Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mIsCoreDestroy:Z

    const-string/jumbo v3, "uc webview init "

    .line 13
    invoke-static {v2, v3}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 15
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mHandler:Landroid/os/Handler;

    .line 16
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v3

    invoke-virtual {v3}, Landroid/taobao/windvane/config/GlobalConfig;->needSpeed()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-boolean v3, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isSWInit:Z

    if-nez v3, :cond_3

    .line 17
    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->checkSW()V

    .line 18
    :cond_3
    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ne v3, v4, :cond_4

    invoke-static {}, Landroid/taobao/windvane/util/EnvUtil;->isAppDebug()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 19
    invoke-static {v5}, Lcom/uc/webview/export/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 20
    :cond_4
    iput-boolean v5, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isLive:Z

    .line 21
    invoke-static {}, Landroid/taobao/windvane/config/WVCommonConfig;->getInstance()Landroid/taobao/windvane/config/WVCommonConfig;

    sget-object v3, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-wide v6, v3, Landroid/taobao/windvane/config/WVCommonConfigData;->ucsdk_alinetwork_rate:D

    .line 22
    sget-boolean v8, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mDegradeAliNetwork:Z

    if-nez v8, :cond_5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    cmpl-double v10, v6, v8

    if-lez v10, :cond_5

    const/4 v6, 0x1

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    :goto_2
    invoke-static {v6}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->setUseTaobaoNetwork(Z)V

    .line 23
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Webview init setUseTaobaoNetwork ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getUseTaobaoNetwork()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-static {}, Landroid/taobao/windvane/config/WVCommonConfig;->getInstance()Landroid/taobao/windvane/config/WVCommonConfig;

    iget-object v6, v3, Landroid/taobao/windvane/config/WVCommonConfigData;->ucCoreUrl:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    sget-object v6, Landroid/taobao/windvane/extra/uc/WVUCWebView;->UC_CORE_URL:Ljava/lang/String;

    invoke-static {}, Landroid/taobao/windvane/config/WVCommonConfig;->getInstance()Landroid/taobao/windvane/config/WVCommonConfig;

    iget-object v7, v3, Landroid/taobao/windvane/config/WVCommonConfigData;->ucCoreUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 25
    sget-object v6, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    invoke-static {}, Landroid/taobao/windvane/config/WVCommonConfig;->getInstance()Landroid/taobao/windvane/config/WVCommonConfig;

    iget-object v7, v3, Landroid/taobao/windvane/config/WVCommonConfigData;->ucCoreUrl:Ljava/lang/String;

    new-instance v8, Landroid/taobao/windvane/extra/uc/WVUCWebView$6;

    invoke-direct {v8, p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView$6;-><init>(Landroid/taobao/windvane/extra/uc/WVUCWebView;)V

    invoke-static {v6, v7, v8}, Lcom/uc/webview/export/extension/UCCore;->update(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 26
    :cond_6
    :try_start_1
    invoke-static {}, Landroid/taobao/windvane/config/WVCommonConfig;->getInstance()Landroid/taobao/windvane/config/WVCommonConfig;

    iget-object v6, v3, Landroid/taobao/windvane/config/WVCommonConfigData;->cookieUrlRule:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 27
    iget-object v3, v3, Landroid/taobao/windvane/config/WVCommonConfigData;->cookieUrlRule:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Landroid/taobao/windvane/extra/uc/WVUCWebView;->pattern:Ljava/util/regex/Pattern;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    .line 28
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Pattern complile Exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_7
    :goto_3
    iget-object v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/taobao/windvane/webview/WVRenderPolicy;->disableAccessibility(Landroid/content/Context;)V

    .line 30
    invoke-virtual {p0}, Lcom/uc/webview/export/WebView;->getSettings()Lcom/uc/webview/export/WebSettings;

    move-result-object v3

    .line 31
    invoke-virtual {p0}, Lcom/uc/webview/export/WebView;->getCurrentViewCoreType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_8

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_8

    if-eqz v3, :cond_8

    .line 32
    invoke-virtual {v3, v0}, Lcom/uc/webview/export/WebSettings;->setMixedContentMode(I)V

    .line 33
    :cond_8
    invoke-virtual {v3, v5}, Lcom/uc/webview/export/WebSettings;->setJavaScriptEnabled(Z)V

    .line 34
    invoke-virtual {v3, v5}, Lcom/uc/webview/export/WebSettings;->setDomStorageEnabled(Z)V

    .line 35
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x12

    if-ge v6, v7, :cond_9

    .line 36
    invoke-virtual {v3, v0}, Lcom/uc/webview/export/WebSettings;->setSavePassword(Z)V

    .line 37
    :cond_9
    invoke-virtual {v3, v0}, Lcom/uc/webview/export/WebSettings;->setDatabaseEnabled(Z)V

    .line 38
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/localstorage"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/uc/webview/export/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v3, v5}, Lcom/uc/webview/export/WebSettings;->setGeolocationEnabled(Z)V

    .line 40
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v7

    invoke-virtual {v7}, Landroid/taobao/windvane/config/GlobalConfig;->getAppTag()Ljava/lang/String;

    move-result-object v7

    .line 41
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v8

    invoke-virtual {v8}, Landroid/taobao/windvane/config/GlobalConfig;->getAppVersion()Ljava/lang/String;

    move-result-object v8

    .line 42
    invoke-virtual {v3}, Lcom/uc/webview/export/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_c

    .line 43
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 44
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " AliApp("

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_a
    const-string v7, "UCBS/"

    .line 45
    invoke-virtual {v9, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    invoke-virtual {p0}, Lcom/uc/webview/export/WebView;->getCurrentViewCoreType()I

    move-result v7

    if-ne v7, v4, :cond_b

    .line 46
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " UCBS/2.11.1.1"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v9, v7

    :cond_b
    const-string v7, "TTID/"

    .line 47
    invoke-virtual {v9, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c

    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v7

    invoke-virtual {v7}, Landroid/taobao/windvane/config/GlobalConfig;->getTtid()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 48
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " TTID/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v9

    invoke-virtual {v9}, Landroid/taobao/windvane/config/GlobalConfig;->getTtid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 49
    :cond_c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " WindVane/8.5.0"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/uc/webview/export/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    const/4 v7, -0x1

    .line 50
    invoke-virtual {v3, v7}, Lcom/uc/webview/export/WebSettings;->setCacheMode(I)V

    .line 51
    invoke-virtual {v3, v0}, Lcom/uc/webview/export/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 52
    invoke-virtual {v3, v5}, Lcom/uc/webview/export/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 53
    invoke-virtual {v3, v5}, Lcom/uc/webview/export/WebSettings;->setUseWideViewPort(Z)V

    const-string v7, "adapter_build_version"

    .line 54
    invoke-static {v7, v8}, Lcom/uc/webview/export/extension/UCCore;->setGlobalOption(Ljava/lang/String;Ljava/lang/Object;)Z

    const/16 v7, 0xe

    if-lt v6, v7, :cond_d

    .line 55
    sget-object v6, Lcom/uc/webview/export/WebSettings$TextSize;->NORMAL:Lcom/uc/webview/export/WebSettings$TextSize;

    iget v6, v6, Lcom/uc/webview/export/WebSettings$TextSize;->value:I

    invoke-virtual {v3, v6}, Lcom/uc/webview/export/WebSettings;->setTextZoom(I)V

    .line 56
    :cond_d
    sget-boolean v3, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mUseAliNetwork:Z

    if-eqz v3, :cond_e

    .line 57
    invoke-virtual {p0}, Lcom/uc/webview/export/WebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 58
    invoke-virtual {p0}, Lcom/uc/webview/export/WebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v3

    invoke-virtual {v3}, Lcom/uc/webview/export/extension/UCExtension;->getUCSettings()Lcom/uc/webview/export/extension/UCSettings;

    const-string v3, "UCCookieType"

    .line 59
    invoke-static {v3, v5}, Lcom/uc/webview/export/extension/UCSettings;->setGlobalIntValue(Ljava/lang/String;I)V

    .line 60
    :cond_e
    invoke-virtual {p0}, Lcom/uc/webview/export/WebView;->getCurrentViewCoreType()I

    move-result v3

    const-string v6, "WebViewCoreType"

    if-eq v3, v5, :cond_14

    invoke-virtual {p0}, Lcom/uc/webview/export/WebView;->getCurrentViewCoreType()I

    move-result v3

    if-ne v3, v4, :cond_f

    goto/16 :goto_5

    :cond_f
    const-string v3, "core type: Android"

    .line 61
    invoke-static {v2, v3}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    sget-object v3, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-boolean v3, v3, Landroid/taobao/windvane/config/WVCommonConfigData;->useSystemWebView:Z

    if-eqz v3, :cond_10

    const-string v3, "forceSystem"

    goto :goto_4

    .line 63
    :cond_10
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v3

    invoke-virtual {v3}, Landroid/taobao/windvane/config/GlobalConfig;->getInjectCode()I

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "injectError"

    goto :goto_4

    .line 64
    :cond_11
    sget-object v3, Landroid/taobao/windvane/extra/uc/WVUCWebView;->sCoreInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 65
    invoke-static {}, Landroid/taobao/windvane/extra/core/WVCore;->getInstance()Landroid/taobao/windvane/extra/core/WVCore;

    move-result-object v3

    invoke-virtual {v3}, Landroid/taobao/windvane/extra/core/WVCore;->isUCSupport()Z

    move-result v3

    if-nez v3, :cond_12

    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "core_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Landroid/taobao/windvane/extra/uc/WVUCWebView;->coreCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_12
    const-string/jumbo v3, "successInit"

    goto :goto_4

    :cond_13
    const-string v3, "coreNotInit"

    .line 67
    :goto_4
    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v9

    invoke-virtual {v9}, Landroid/taobao/windvane/config/GlobalConfig;->getInjectCode()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->context:Landroid/content/Context;

    invoke-static {v9}, Landroid/taobao/windvane/util/CommonUtils;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 69
    invoke-static {v6, v4, v7, v9}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->commitFail(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 70
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WebViewCoreTypeByPV coreType="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " errorMsg="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v3

    invoke-virtual {v3}, Landroid/taobao/windvane/config/GlobalConfig;->getInjectCode()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " process="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/taobao/windvane/util/CommonUtils;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 72
    invoke-static {v2, v3}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 73
    :cond_14
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init  CurrentViewCoreType()= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/uc/webview/export/WebView;->getCurrentViewCoreType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-static {}, Landroid/taobao/windvane/extra/core/WVCore;->getInstance()Landroid/taobao/windvane/extra/core/WVCore;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/taobao/windvane/extra/core/WVCore;->setUCSupport(Z)V

    .line 75
    sget-boolean v3, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mUseAliNetwork:Z

    if-eqz v3, :cond_15

    .line 76
    new-instance v3, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;

    iget-object v4, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget-object v7, Landroid/taobao/windvane/extra/uc/WVUCWebView;->bizId:Ljava/lang/String;

    invoke-direct {v3, v4, v7, p0}, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/taobao/windvane/extra/uc/WVUCWebView;)V

    iput-object v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->aliRequestAdapter:Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;

    .line 77
    new-instance v4, Landroid/taobao/windvane/extra/uc/AliNetworkDecider;

    invoke-direct {v4}, Landroid/taobao/windvane/extra/uc/AliNetworkDecider;-><init>()V

    invoke-static {v3, v4}, Lcom/uc/webview/export/extension/UCCore;->setThirdNetwork(Lcom/uc/webview/export/internal/interfaces/INetwork;Lcom/uc/webview/export/internal/interfaces/INetworkDecider;)V

    .line 78
    :cond_15
    sget-object v3, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-boolean v4, v3, Landroid/taobao/windvane/config/WVCommonConfigData;->openLog:Z

    if-eqz v4, :cond_16

    .line 79
    new-instance v4, Landroid/taobao/windvane/extra/uc/UCLog;

    invoke-direct {v4}, Landroid/taobao/windvane/extra/uc/UCLog;-><init>()V

    invoke-static {v4}, Lcom/uc/webview/export/extension/UCCore;->setNetLogger(Lcom/uc/webview/export/internal/interfaces/INetLogger;)V

    :cond_16
    const-string v4, "EnableCustomErrPage"

    .line 80
    invoke-static {v4, v5}, Lcom/uc/webview/export/extension/UCSettings;->setGlobalBoolValue(Ljava/lang/String;Z)V

    .line 81
    iget-object v4, v3, Landroid/taobao/windvane/config/WVCommonConfigData;->ucParam:Landroid/taobao/windvane/config/UCParamData;

    iget-object v4, v4, Landroid/taobao/windvane/config/UCParamData;->u4FocusAutoPopupInputHostList:Ljava/lang/String;

    const-string/jumbo v7, "u4_focus_auto_popup_input_list"

    invoke-static {v5, v5, v7, v4}, Lcom/uc/webview/export/extension/UCSettings;->updateBussinessInfo(IILjava/lang/String;Ljava/lang/Object;)V

    .line 82
    iget-object v3, v3, Landroid/taobao/windvane/config/WVCommonConfigData;->ucParam:Landroid/taobao/windvane/config/UCParamData;

    iget-object v3, v3, Landroid/taobao/windvane/config/UCParamData;->cdResourceEmbedSurfaceEmbedViewEnableList:Ljava/lang/String;

    const-string v4, "crwp_embed_surface_embed_view_enable_list"

    invoke-static {v5, v5, v4, v3}, Lcom/uc/webview/export/extension/UCSettings;->updateBussinessInfo(IILjava/lang/String;Ljava/lang/Object;)V

    const-string v3, "crwp_embed_view_reattach_list"

    const-string v4, "map"

    .line 83
    invoke-static {v5, v5, v3, v4}, Lcom/uc/webview/export/extension/UCSettings;->updateBussinessInfo(IILjava/lang/String;Ljava/lang/Object;)V

    const/4 v3, 0x5

    .line 84
    invoke-virtual {p0, v3}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->setPageCacheCapacity(I)V

    .line 85
    :try_start_2
    invoke-static {}, Landroid/taobao/windvane/config/WVCookieConfig;->getInstance()Landroid/taobao/windvane/config/WVCookieConfig;

    move-result-object v3

    iget-object v3, v3, Landroid/taobao/windvane/config/WVCookieConfig;->cookieBlackList:Ljava/lang/String;

    .line 86
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 87
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "set cookie black list = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " to uc"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "CookiesBlacklistForJs"

    .line 88
    invoke-static {v4, v3}, Lcom/uc/webview/export/extension/UCSettings;->setGlobalStringValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 89
    :catchall_1
    :cond_17
    invoke-static {v6, v1}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->commitSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :goto_6
    new-instance v3, Landroid/taobao/windvane/extra/uc/WVUCWebView$WVValueCallback;

    invoke-direct {v3}, Landroid/taobao/windvane/extra/uc/WVUCWebView$WVValueCallback;-><init>()V

    invoke-static {v3}, Lcom/uc/webview/export/extension/UCCore;->setStatDataCallback(Landroid/webkit/ValueCallback;)V

    .line 91
    new-instance v3, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;

    iget-object v4, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v3}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->setWebViewClient(Lcom/uc/webview/export/WebViewClient;)V

    .line 92
    new-instance v3, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;

    iget-object v4, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v3}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->setWebChromeClient(Lcom/uc/webview/export/WebChromeClient;)V

    .line 93
    invoke-virtual {p0}, Lcom/uc/webview/export/WebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v3

    if-eqz v3, :cond_18

    .line 94
    new-instance v4, Landroid/taobao/windvane/extra/uc/WVUCClient;

    invoke-direct {v4, p0}, Landroid/taobao/windvane/extra/uc/WVUCClient;-><init>(Landroid/taobao/windvane/webview/IWVWebView;)V

    invoke-virtual {v3, v4}, Lcom/uc/webview/export/extension/UCExtension;->setClient(Lcom/uc/webview/export/extension/UCClient;)V

    .line 95
    :cond_18
    new-instance v3, Landroid/taobao/windvane/webview/WVUIModel;

    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->_getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Landroid/taobao/windvane/webview/WVUIModel;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    .line 96
    invoke-static {}, Landroid/taobao/windvane/jsbridge/WVJsBridge;->getInstance()Landroid/taobao/windvane/jsbridge/WVJsBridge;

    move-result-object v3

    invoke-virtual {v3}, Landroid/taobao/windvane/jsbridge/WVJsBridge;->init()V

    .line 97
    new-instance v3, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;

    iget-object v4, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->context:Landroid/content/Context;

    invoke-direct {v3, v4, p0}, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;-><init>(Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;)V

    iput-object v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->entryManager:Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;

    .line 98
    new-instance v3, Landroid/taobao/windvane/jsbridge/WVAppEvent;

    invoke-direct {v3}, Landroid/taobao/windvane/jsbridge/WVAppEvent;-><init>()V

    .line 99
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->_getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, p0}, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->initialize(Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;)V

    const-string v4, "AppEvent"

    .line 100
    invoke-virtual {p0, v4, v3}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->addJsObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    sget-boolean v3, Landroid/taobao/windvane/extra/uc/WVUCWebView;->initedJSBridge:Z

    const-string v4, "WVPerformance"

    if-nez v3, :cond_19

    .line 102
    const-class v3, Landroid/taobao/windvane/extra/jsbridge/WVUCBase;

    const-string v6, "WVUCBase"

    invoke-static {v6, v3}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 103
    const-class v3, Landroid/taobao/windvane/jsbridge/WVH5PP;

    invoke-static {v4, v3}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 104
    const-class v3, Landroid/taobao/windvane/jsbridge/api/WVFullTrace;

    const-string v6, "WVFullTrace"

    invoke-static {v6, v3}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 105
    const-class v3, Landroid/taobao/windvane/jsbridge/api/WVFalco;

    const-string v6, "WVFalco"

    invoke-static {v6, v3}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 106
    sput-boolean v5, Landroid/taobao/windvane/extra/uc/WVUCWebView;->initedJSBridge:Z

    .line 107
    :cond_19
    :try_start_3
    invoke-virtual {p0, v4}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getJsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/taobao/windvane/jsbridge/WVH5PP;

    .line 108
    invoke-virtual {v3}, Landroid/taobao/windvane/jsbridge/WVH5PP;->resetAllStoredSet()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_7

    :catch_1
    move-exception v3

    .line 109
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resetAllStoredSet error: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :goto_7
    invoke-direct {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->setSupportLocalStorageFile()V

    .line 111
    new-instance v3, Landroid/taobao/windvane/jspatch/WVJsPatchListener;

    invoke-direct {v3, p0}, Landroid/taobao/windvane/jspatch/WVJsPatchListener;-><init>(Landroid/taobao/windvane/webview/IWVWebView;)V

    iput-object v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->jsPatchListener:Landroid/taobao/windvane/jspatch/WVJsPatchListener;

    .line 112
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v3

    iget-object v4, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->jsPatchListener:Landroid/taobao/windvane/jspatch/WVJsPatchListener;

    sget v6, Landroid/taobao/windvane/service/WVEventService;->WV_BACKWARD_EVENT:I

    invoke-virtual {v3, v4, v6}, Landroid/taobao/windvane/service/WVEventService;->addEventListener(Landroid/taobao/windvane/service/WVEventListener;I)V

    .line 113
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xa

    if-le v3, v4, :cond_1a

    const/16 v4, 0x11

    if-ge v3, v4, :cond_1a

    :try_start_4
    const-string/jumbo v3, "searchBoxJavaBridge_"

    .line 114
    invoke-virtual {p0, v3}, Lcom/uc/webview/export/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v3, "accessibility"

    .line 115
    invoke-virtual {p0, v3}, Lcom/uc/webview/export/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v3, "accessibilityTraversal"

    .line 116
    invoke-virtual {p0, v3}, Lcom/uc/webview/export/WebView;->removeJavascriptInterface(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception v3

    .line 117
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeJavascriptInterface "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_1a
    :goto_8
    new-instance v2, Landroid/taobao/windvane/extra/uc/WVUCWebView$7;

    invoke-direct {v2, p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView$7;-><init>(Landroid/taobao/windvane/extra/uc/WVUCWebView;)V

    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 119
    invoke-virtual {p0, v2}, Lcom/uc/webview/export/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 120
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getPackageMonitorInterface()Landroid/taobao/windvane/monitor/WVPackageMonitorInterface;

    move-result-object v2

    if-eqz v2, :cond_1b

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 122
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getPerformanceMonitor()Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface;->didWebViewInitAtTime(J)V

    .line 123
    :cond_1b
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_1c

    invoke-static {}, Landroid/taobao/windvane/webview/WVRenderPolicy;->shouldDisableHardwareRenderInLayer()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 124
    :try_start_5
    invoke-virtual {p0, v5, v1}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_9

    :catch_2
    move-exception v1

    .line 125
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 126
    :cond_1c
    :goto_9
    :try_start_6
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 127
    :catchall_3
    invoke-direct {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->setAcceptThirdPartyCookies()V

    .line 128
    new-instance v1, Landroid/taobao/windvane/jsbridge/WVBridgeEngine;

    invoke-direct {v1, p0}, Landroid/taobao/windvane/jsbridge/WVBridgeEngine;-><init>(Landroid/taobao/windvane/webview/IWVWebView;)V

    const-string v2, "__windvane__"

    invoke-virtual {p0, v1, v2}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "(function(f){try{if(f.__windvane__.nativeCall&&!f.__windvane__.call){var h=f.__windvane__||(f.__windvane__={});var c=\"wvapi:\"+(Math.floor(Math.random()*(1<<16))),a=0,b={},g=function(j){if(j&&typeof j==\"string\"){try{return JSON.parse(j)}catch(i){return{ret:\"HY_RESULT_PARSE_ERROR\"}}}else{return j||{}}};h.call=function(i,m,l,e,k){if(typeof l!=\"function\"){l=null}if(typeof e!=\"function\"){e=null}var j=c+(a++);b[j]={s:l,f:e,};if(k>0){b[j].t=setTimeout(function(){h.onFailure(j,{ret:\"HY_TIMEOUT\"})},k)}if(!m){m={}}if(typeof m!=\"string\"){m=JSON.stringify(m)}f.__windvane__.nativeCall(i,m,j,location.href)};h.find=function(i,j){var e=b[i]||{};if(e.t){clearTimeout(e.t);delete e.t}if(!j){delete b[i]}return e};h.onSuccess=function(j,e,k){var i=h.find(j,k).s;if(i){i(g(e))}};h.onFailure=function(j,e){var i=h.find(j,false).f;if(i){i(g(e))}}}}catch(d){}})(window);"

    .line 129
    invoke-virtual {p0, v1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->injectJsEarly(Ljava/lang/String;)V

    .line 130
    :try_start_7
    invoke-static {}, Landroid/taobao/windvane/embed/WVEVManager;->getEmbedViewNames()Ljava/util/ArrayList;

    move-result-object v1

    .line 131
    sget-object v2, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-object v2, v2, Landroid/taobao/windvane/config/WVCommonConfigData;->disableMixViews:[Ljava/lang/String;

    array-length v3, v2

    :goto_a
    if-ge v0, v3, :cond_1d

    aget-object v4, v2, v0

    .line 132
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 133
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "window.__mix_view_environment__={availableTypes:{"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    const-string v3, ","

    if-eqz v2, :cond_1e

    :try_start_8
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 135
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 136
    :cond_1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 137
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_1f
    const-string/jumbo v1, "},matchType:\'name\',isForAppX:\'no\'}"

    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->injectJsEarly(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 140
    :catchall_4
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvh5PPManager:Landroid/taobao/windvane/extra/performance/WVH5PPManager;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->webViewDidFinishInit()V

    return-void
.end method

.method private static initAfterUCReady(Landroid/content/Context;J)V
    .locals 0

    .line 1
    new-instance p0, Landroid/taobao/windvane/ha/UCHAManager;

    invoke-direct {p0}, Landroid/taobao/windvane/ha/UCHAManager;-><init>()V

    .line 2
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object p1

    invoke-virtual {p1}, Landroid/taobao/windvane/config/GlobalConfig;->getUcHASettings()Landroid/taobao/windvane/config/UCHASettings;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/taobao/windvane/ha/UCHAManager;->initHAParam(Landroid/taobao/windvane/config/UCHASettings;)V

    .line 3
    :try_start_0
    sget-object p0, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    sget-object p1, Landroid/taobao/windvane/extra/uc/WVUCWebView;->UC_PLAYER_URL:Ljava/lang/String;

    new-instance p2, Landroid/taobao/windvane/extra/uc/WVUCWebView$DownloadEnv;

    invoke-direct {p2, p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView$DownloadEnv;-><init>(Landroid/content/Context;)V

    invoke-static {p0, p1, p2}, Lcom/uc/webview/export/extension/UCCore;->updateUCPlayer(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Callable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "UCCore update UCPlayer failed:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UCCore"

    invoke-static {p1, p0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :goto_0
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object p0

    const/16 p1, 0xbc8

    invoke-virtual {p0, p1}, Landroid/taobao/windvane/service/WVEventService;->onEvent(I)Landroid/taobao/windvane/service/WVEventResult;

    return-void
.end method

.method public static initUCCore()V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    invoke-static {v0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->initUCCore(Landroid/content/Context;)V

    return-void
.end method

.method public static initUCCore(Landroid/content/Context;)V
    .locals 6

    .line 2
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object p0

    invoke-virtual {p0}, Landroid/taobao/windvane/config/GlobalConfig;->getUcsdkappkeySec()[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 3
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string v0, "WVUCWebView: can not init uc core for uc key is null"

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Landroid/util/AndroidRuntimeException;->printStackTrace()V

    return-void

    .line 5
    :cond_0
    sget-object p0, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    if-nez p0, :cond_1

    .line 6
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string v0, "WVUCWebView: can not init uc core for context is nulll"

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Landroid/util/AndroidRuntimeException;->printStackTrace()V

    return-void

    .line 8
    :cond_1
    invoke-static {}, Landroid/taobao/windvane/config/WVCommonConfig;->getInstance()Landroid/taobao/windvane/config/WVCommonConfig;

    move-result-object p0

    invoke-virtual {p0}, Landroid/taobao/windvane/config/WVCommonConfig;->hasInited()Z

    move-result p0

    const-string v0, "WVUCWebView"

    if-nez p0, :cond_2

    .line 9
    invoke-static {}, Landroid/taobao/windvane/config/WVCommonConfig;->getInstance()Landroid/taobao/windvane/config/WVCommonConfig;

    move-result-object p0

    invoke-virtual {p0}, Landroid/taobao/windvane/config/WVCommonConfig;->init()V

    const-string p0, "init WVCommonConfig before init core"

    .line 10
    invoke-static {v0, p0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_2
    sget-object p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->sCoreInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 12
    :try_start_0
    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVUCUtils;->is64Bit()Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v4, "x86"

    .line 13
    invoke-static {v4}, Landroid/taobao/windvane/extra/uc/WVUCUtils;->isArchContains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 14
    invoke-static {}, Lcom/taobao/uc/UCSoSettings;->getInstance()Lcom/taobao/uc/UCSoSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/taobao/uc/UCSoSettings;->UC_CORE_URL_DEBUG_X86:Ljava/lang/String;

    sput-object v3, Landroid/taobao/windvane/extra/uc/WVUCWebView;->UC_CORE_URL:Ljava/lang/String;

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UCCore use x86 core "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/taobao/windvane/extra/uc/WVUCWebView;->UC_CORE_URL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 17
    :cond_3
    invoke-static {}, Landroid/taobao/windvane/util/EnvUtil;->isAppDebug()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "] "

    if-eqz p0, :cond_6

    :try_start_1
    const-string/jumbo p0, "true"

    .line 18
    invoke-static {}, Lcom/taobao/uc/UCSoSettings;->getInstance()Lcom/taobao/uc/UCSoSettings;

    move-result-object v5

    iget-object v5, v5, Lcom/taobao/uc/UCSoSettings;->UC_CORE_THICK:Ljava/lang/String;

    invoke-static {p0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 19
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object p0

    invoke-virtual {p0}, Landroid/taobao/windvane/config/GlobalConfig;->openUCDebug()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 20
    sput-boolean v2, Landroid/taobao/windvane/extra/uc/WVUCWebView;->openUCDebug:Z

    :cond_4
    if-eqz v3, :cond_5

    .line 21
    invoke-static {}, Lcom/taobao/uc/UCSoSettings;->getInstance()Lcom/taobao/uc/UCSoSettings;

    move-result-object p0

    iget-object p0, p0, Lcom/taobao/uc/UCSoSettings;->UC_CORE_URL_DEBUG_64:Ljava/lang/String;

    goto :goto_0

    .line 22
    :cond_5
    invoke-static {}, Lcom/taobao/uc/UCSoSettings;->getInstance()Lcom/taobao/uc/UCSoSettings;

    move-result-object p0

    iget-object p0, p0, Lcom/taobao/uc/UCSoSettings;->UC_CORE_URL_DEBUG_32:Ljava/lang/String;

    :goto_0
    sput-object p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->UC_CORE_URL:Ljava/lang/String;

    .line 23
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "use 3.0 debug core, use 64bit = ["

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/taobao/windvane/extra/uc/WVUCWebView;->UC_CORE_URL:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 24
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "use 3.0 release core, use 64bit = ["

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/taobao/windvane/extra/uc/WVUCWebView;->UC_CORE_URL:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_7

    .line 25
    invoke-static {}, Lcom/taobao/uc/UCSoSettings;->getInstance()Lcom/taobao/uc/UCSoSettings;

    move-result-object p0

    iget-object p0, p0, Lcom/taobao/uc/UCSoSettings;->UC_CORE_URL_64:Ljava/lang/String;

    goto :goto_1

    .line 26
    :cond_7
    invoke-static {}, Lcom/taobao/uc/UCSoSettings;->getInstance()Lcom/taobao/uc/UCSoSettings;

    move-result-object p0

    iget-object p0, p0, Lcom/taobao/uc/UCSoSettings;->UC_CORE_URL_32:Ljava/lang/String;

    :goto_1
    sput-object p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->UC_CORE_URL:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 27
    :catch_0
    sget-object p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->sCoreInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 28
    :goto_2
    :try_start_2
    sget-object p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->shouldUCLibInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string p0, "init uclib inner"

    .line 29
    invoke-static {v0, p0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object p0

    invoke-virtual {p0}, Landroid/taobao/windvane/config/GlobalConfig;->getUcsdkappkeySec()[Ljava/lang/String;

    move-result-object p0

    sget-object v0, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    invoke-static {p0, v0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->initUCLIb([Ljava/lang/String;Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_9

    .line 31
    sget-object p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->sCoreInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 32
    :catchall_0
    sget-object p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->sCoreInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_3

    :cond_8
    const-string/jumbo p0, "uc core has been initialized"

    .line 33
    invoke-static {v0, p0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_3
    return-void
.end method

.method public static initUCLIb(Landroid/content/Context;)Z
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->shouldUCLibInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "init uclib outer"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    const/4 v2, 0x2

    aget-object p0, p0, v2

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WVUCWebView"

    .line 7
    invoke-static {v0, p0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    if-nez p0, :cond_1

    return v1

    .line 8
    :cond_1
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/config/GlobalConfig;->getUcsdkappkeySec()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->initUCLIb([Ljava/lang/String;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private static initUCLIb([Ljava/lang/String;Landroid/content/Context;)Z
    .locals 8

    const-string v0, "WVUCWebView"

    const-string v1, "UCSDK initUCLib begin "

    .line 9
    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    sget-object v1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-boolean v2, v1, Landroid/taobao/windvane/config/WVCommonConfigData;->useSystemWebView:Z

    invoke-static {v2}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->setUseSystemWebView(Z)V

    .line 11
    invoke-static {}, Landroid/taobao/windvane/util/EnvUtil;->isAppDebug()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 12
    invoke-static {v3}, Lcom/uc/webview/export/extension/UCCore;->setPrintLog(Z)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {v4}, Lcom/uc/webview/export/extension/UCCore;->setPrintLog(Z)V

    .line 14
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UCSDK initUCLib UseSystemWebView "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mUseSystemWebView:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-static {}, Landroid/taobao/windvane/extra/core/WVCore;->getInstance()Landroid/taobao/windvane/extra/core/WVCore;

    move-result-object v2

    invoke-virtual {v2}, Landroid/taobao/windvane/extra/core/WVCore;->isUCSupport()Z

    move-result v2

    if-eqz v2, :cond_1

    return v3

    .line 16
    :cond_1
    :try_start_0
    iget-object v2, v1, Landroid/taobao/windvane/config/WVCommonConfigData;->ucCoreUrl:Ljava/lang/String;

    .line 17
    invoke-static {v2}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->setUcCoreUrl(Ljava/lang/String;)V

    if-nez p0, :cond_2

    .line 18
    invoke-static {}, Landroid/taobao/windvane/util/EnvUtil;->isTaobao()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 19
    sget-object p0, Landroid/taobao/windvane/WindVaneSDKForTB;->TB_UC_SDK_APP_KEY_SEC:[Ljava/lang/String;

    .line 20
    :cond_2
    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->logConfigCreate()[Ljava/lang/Object;

    move-result-object v2

    .line 21
    new-instance v3, Ljava/io/File;

    invoke-static {p1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->ucCore7ZFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "uccore policy:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Landroid/taobao/windvane/config/WVCommonConfigData;->initUCCorePolicy:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sandbox:policy ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Landroid/taobao/windvane/config/WVCommonConfigData;->webMultiPolicy:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "];timeout ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Landroid/taobao/windvane/config/WVCommonConfigData;->ucMultiTimeOut:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-static {p1}, Landroid/taobao/windvane/util/CommonUtils;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":sandboxed_privilege_process0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 25
    invoke-static {p1}, Landroid/taobao/windvane/util/CommonUtils;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":sandboxed_process0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 26
    invoke-static {p1}, Landroid/taobao/windvane/util/CommonUtils;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":gpu_process"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    .line 27
    :cond_3
    invoke-static {p1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->setMultiPolicy(Landroid/content/Context;)V

    .line 28
    iget v1, v1, Landroid/taobao/windvane/config/WVCommonConfigData;->initUCCorePolicy:I

    if-nez v1, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "\u5185\u7f6euc\u521d\u59cb\u5316"

    .line 29
    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-static {p0, p1, v2}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->initUCLibBy7Z([Ljava/lang/String;Landroid/content/Context;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 31
    :cond_4
    sget-object v1, Landroid/taobao/windvane/extra/uc/WVUCWebView;->UC_CORE_URL:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string p0, "UC_CORE_URL\u4e3a\u7a7a"

    .line 32
    invoke-static {v0, p0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string/jumbo p1, "neither inner so, nor download so"

    invoke-direct {p0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Landroid/util/AndroidRuntimeException;->printStackTrace()V

    .line 35
    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVUCUtils;->is64Bit()Z

    move-result p0

    if-eqz p0, :cond_5

    const p0, 0x496dc

    .line 36
    sput p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->coreCode:I

    goto :goto_1

    :cond_5
    const p0, 0x496bc

    .line 37
    sput p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->coreCode:I

    :goto_1
    return v4

    .line 38
    :cond_6
    invoke-static {p0, p1, v2}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->initUCLibByDownload([Ljava/lang/String;Landroid/content/Context;[Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :cond_7
    :goto_2
    return v4

    :catch_0
    move-exception p0

    .line 39
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UCCore init fail "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method

.method public static initUCLibBy7Z([Ljava/lang/String;Landroid/content/Context;[Ljava/lang/Object;)Z
    .locals 11

    const-string v0, "CONTEXT"

    const/4 v1, 0x1

    .line 1
    sput v1, Landroid/taobao/windvane/extra/uc/WVUCWebView;->INNER_FLAG:I

    .line 2
    invoke-static {p1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->ucCore7ZFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {p1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getOld7zDecompressPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-static {p1, v2}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getCore7zDecompressDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v3, ""

    .line 5
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UCSDK initUCLibBy7Z zipPath: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WVUCWebView"

    invoke-static {v5, v4}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/uc/webview/export/business/BusinessWrapper;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/utility/SetupTask;

    move-result-object v4

    const-string v6, "bo_dec_r_p"

    .line 7
    invoke-static {p1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getBusinessDecompressRootDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 8
    invoke-virtual {v4, v6, v7}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v6

    check-cast v6, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo v7, "webview_multi_process"

    sget v8, Landroid/taobao/windvane/extra/uc/WVUCWebView;->renderMultiPolicy:I

    .line 9
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v6

    check-cast v6, Lcom/uc/webview/export/utility/SetupTask;

    const-string v7, "gpu_process_mode"

    sget v8, Landroid/taobao/windvane/extra/uc/WVUCWebView;->gpuMultiPolicy:I

    .line 10
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v6

    check-cast v6, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo v7, "webview_multi_process_fallback_timeout"

    sget-object v8, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v9, v8, Landroid/taobao/windvane/config/WVCommonConfigData;->ucMultiTimeOut:I

    .line 11
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v6

    check-cast v6, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo v7, "webview_multi_process_enable_service_speedup"

    iget-boolean v9, v8, Landroid/taobao/windvane/config/WVCommonConfigData;->ucMultiServiceSpeedUp:Z

    .line 12
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v6

    check-cast v6, Lcom/uc/webview/export/utility/SetupTask;

    const-string v7, "bo_f_u_dec_r_p"

    .line 13
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v7, v9}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v6

    check-cast v6, Lcom/uc/webview/export/utility/SetupTask;

    const-string v7, "first_use_sw"

    iget-boolean v10, v8, Landroid/taobao/windvane/config/WVCommonConfigData;->firstUseSystemWebViewOn7zInit:Z

    .line 14
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 15
    invoke-virtual {v6, v7, v10}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v6

    check-cast v6, Lcom/uc/webview/export/utility/SetupTask;

    const-string v7, "bo_new_ucm_zf"

    .line 16
    invoke-virtual {v6, v7, v2}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v6

    check-cast v6, Lcom/uc/webview/export/utility/SetupTask;

    const-string v7, "bo_new_ucm_z_type"

    const-string v10, "7z"

    .line 17
    invoke-virtual {v6, v7, v10}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v6

    check-cast v6, Lcom/uc/webview/export/utility/SetupTask;

    const-string v7, "bo_old_dex_dp"

    .line 18
    invoke-virtual {v6, v7, v3}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v3

    check-cast v3, Lcom/uc/webview/export/utility/SetupTask;

    const-string v6, "bo_dex_old_dex_dir"

    .line 19
    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isMainProcess()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v3

    check-cast v3, Lcom/uc/webview/export/utility/SetupTask;

    const-string v6, "bo_skip_io_dc"

    .line 20
    invoke-virtual {v3, v6, v9}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v3

    check-cast v3, Lcom/uc/webview/export/utility/SetupTask;

    const-string v6, "bo_prom_sp_v_c_i"

    new-instance v7, Landroid/taobao/windvane/extra/uc/WVUCWebView$OldCoreVersionCallable;

    const/4 v10, 0x0

    invoke-direct {v7, v10}, Landroid/taobao/windvane/extra/uc/WVUCWebView$OldCoreVersionCallable;-><init>(Landroid/taobao/windvane/extra/uc/WVUCWebView$1;)V

    .line 21
    invoke-virtual {v3, v6, v7}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v3

    check-cast v3, Lcom/uc/webview/export/utility/SetupTask;

    const-string v6, "bo_s_i_uc_core"

    new-instance v7, Landroid/taobao/windvane/extra/uc/WVUCWebView$OnInitStart;

    invoke-direct {v7, v10}, Landroid/taobao/windvane/extra/uc/WVUCWebView$OnInitStart;-><init>(Landroid/taobao/windvane/extra/uc/WVUCWebView$1;)V

    .line 22
    invoke-virtual {v3, v6, v7}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v3

    check-cast v3, Lcom/uc/webview/export/utility/SetupTask;

    const-string v6, "bo_dec_cl"

    new-instance v7, Landroid/taobao/windvane/extra/uc/WVUCWebView$DecompressCallable;

    invoke-direct {v7, p1}, Landroid/taobao/windvane/extra/uc/WVUCWebView$DecompressCallable;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-virtual {v3, v6, v7}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v3

    check-cast v3, Lcom/uc/webview/export/utility/SetupTask;

    const-string v6, "be_init_success"

    new-instance v7, Landroid/taobao/windvane/extra/uc/WVUCWebView$3;

    invoke-direct {v7}, Landroid/taobao/windvane/extra/uc/WVUCWebView$3;-><init>()V

    .line 24
    invoke-virtual {v3, v6, v7}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    .line 25
    invoke-static {v2}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->setupUCParam(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v4, v0, p1}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p1

    check-cast p1, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo v0, "provided_keys"

    .line 27
    invoke-virtual {p1, v0, p0}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string p1, "VIDEO_AC"

    .line 28
    invoke-virtual {p0, p1, v9}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string p1, "AC"

    .line 29
    invoke-virtual {p0, p1, v9}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string p1, "core_ver_excludes"

    iget-object v0, v8, Landroid/taobao/windvane/config/WVCommonConfigData;->excludeUCVersions:Ljava/lang/String;

    .line 30
    invoke-virtual {p0, p1, v0}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string p1, "MULTI_CORE_TYPE"

    .line 31
    invoke-virtual {p0, p1, v9}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string p1, "SYSTEM_WEBVIEW"

    sget-boolean v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mUseSystemWebView:Z

    .line 32
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string p1, "WEBVIEW_POLICY"

    const/4 v0, 0x2

    .line 33
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string p1, "loadPolicy"

    const-string v0, "SPECIFIED_ONLY"

    .line 34
    invoke-virtual {p0, p1, v0}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string p1, "VERIFY_POLICY"

    const/4 v0, 0x0

    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string p1, "delete_core"

    .line 36
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/config/GlobalConfig;->getDeleteCorePolicy()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string p1, "log_conf"

    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo p1, "wait_fallback_sys"

    .line 38
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object p2

    invoke-virtual {p2}, Landroid/taobao/windvane/config/GlobalConfig;->getUcCoreWaitMills()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo p1, "ucPlayer"

    iget-boolean p2, v8, Landroid/taobao/windvane/config/WVCommonConfigData;->useUCPlayer:Z

    .line 39
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo p1, "skip_old_extra_kernel"

    iget-boolean p2, v8, Landroid/taobao/windvane/config/WVCommonConfigData;->ucSkipOldKernel:Z

    .line 40
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo p1, "sdk_international_env"

    .line 41
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object p2

    invoke-virtual {p2}, Landroid/taobao/windvane/config/GlobalConfig;->isUcSdkInternationalEnv()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo p1, "startup_policy"

    iget p2, v8, Landroid/taobao/windvane/config/WVCommonConfigData;->initWebPolicy:I

    .line 42
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string p1, "PRIVATE_DATA_DIRECTORY_SUFFIX"

    .line 43
    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getMultiProcessPrivateDataDirectorySuffix()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string p1, "disable_multi_unknown_crash"

    .line 44
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object p2

    invoke-virtual {p2}, Landroid/taobao/windvane/config/GlobalConfig;->isDisableMultiUnknownCrash()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string p1, "exception"

    new-instance p2, Landroid/taobao/windvane/extra/uc/WVUCWebView$ExceptionValueCallback;

    invoke-direct {p2, v10}, Landroid/taobao/windvane/extra/uc/WVUCWebView$ExceptionValueCallback;-><init>(Landroid/taobao/windvane/extra/uc/WVUCWebView$1;)V

    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo p1, "success"

    new-instance p2, Landroid/taobao/windvane/extra/uc/WVUCWebView$CorePreparedCallback;

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p2, v2, v3}, Landroid/taobao/windvane/extra/uc/WVUCWebView$CorePreparedCallback;-><init>(J)V

    invoke-virtual {p0, p1, p2}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo p1, "switch"

    new-instance p2, Landroid/taobao/windvane/extra/uc/WVUCWebView$SwitchValueCallback;

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p2, v2, v3}, Landroid/taobao/windvane/extra/uc/WVUCWebView$SwitchValueCallback;-><init>(J)V

    invoke-virtual {p0, p1, p2}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    .line 48
    invoke-virtual {p0}, Lcom/uc/webview/export/utility/SetupTask;->setAsDefault()Lcom/uc/webview/export/utility/SetupTask;

    move-result-object p0

    .line 49
    invoke-virtual {p0}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 50
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "initUCLibBy7Z fail "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :goto_0
    sget-boolean p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mUseSystemWebView:Z

    xor-int/2addr p0, v1

    return p0
.end method

.method public static initUCLibByDownload([Ljava/lang/String;Landroid/content/Context;[Ljava/lang/Object;)Z
    .locals 8

    const-string v0, "UCCore"

    const/4 v1, 0x1

    .line 1
    :try_start_0
    sget-object v2, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-object v3, v2, Landroid/taobao/windvane/config/WVCommonConfigData;->ucCoreUrl:Ljava/lang/String;

    .line 2
    invoke-static {v3}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->setUcCoreUrl(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v3

    invoke-virtual {v3}, Landroid/taobao/windvane/config/GlobalConfig;->getUcLibDir()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "WVUCWebView"

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-nez v3, :cond_0

    :try_start_1
    const-string v3, "dexFilePath"

    .line 4
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v7

    invoke-virtual {v7}, Landroid/taobao/windvane/config/GlobalConfig;->getUcLibDir()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/uc/webview/export/extension/UCCore;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/utility/SetupTask;

    move-result-object v3

    const-string v7, "asset\u76ee\u5f55\u5185\u6838\u521d\u59cb\u5316"

    .line 5
    invoke-static {v4, v7}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sput v6, Landroid/taobao/windvane/extra/uc/WVUCWebView;->INNER_FLAG:I

    goto :goto_1

    :cond_0
    const-string/jumbo v3, "\u4e0b\u8f7d\u5185\u6838\u521d\u59cb\u5316"

    .line 7
    invoke-static {v4, v3}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {v5}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->setupUCParam(Ljava/lang/String;)V

    const-string v3, "dlChecker"

    .line 9
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v4

    invoke-virtual {v4}, Landroid/taobao/windvane/config/GlobalConfig;->getUcDownloadChecker()Ljava/util/concurrent/Callable;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 10
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v4

    invoke-virtual {v4}, Landroid/taobao/windvane/config/GlobalConfig;->getUcDownloadChecker()Ljava/util/concurrent/Callable;

    move-result-object v4

    goto :goto_0

    :cond_1
    new-instance v4, Landroid/taobao/windvane/extra/uc/WVUCWebView$DownloadEnv;

    sget-object v7, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    invoke-direct {v4, v7}, Landroid/taobao/windvane/extra/uc/WVUCWebView$DownloadEnv;-><init>(Landroid/content/Context;)V

    .line 11
    :goto_0
    invoke-static {v3, v4}, Lcom/uc/webview/export/extension/UCCore;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/utility/SetupTask;

    move-result-object v3

    const-string/jumbo v4, "ucmUpdUrl"

    sget-object v7, Landroid/taobao/windvane/extra/uc/WVUCWebView;->UC_CORE_URL:Ljava/lang/String;

    .line 12
    invoke-virtual {v3, v4, v7}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v3

    check-cast v3, Lcom/uc/webview/export/utility/SetupTask;

    .line 13
    :goto_1
    iget v4, v2, Landroid/taobao/windvane/config/WVCommonConfigData;->webMultiPolicy:I

    .line 14
    iget v4, v2, Landroid/taobao/windvane/config/WVCommonConfigData;->gpuMultiPolicy:I

    const-string v4, "CONTEXT"

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p1

    check-cast p1, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo v3, "webview_multi_process"

    sget v4, Landroid/taobao/windvane/extra/uc/WVUCWebView;->renderMultiPolicy:I

    .line 16
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p1

    check-cast p1, Lcom/uc/webview/export/utility/SetupTask;

    const-string v3, "gpu_process_mode"

    sget v4, Landroid/taobao/windvane/extra/uc/WVUCWebView;->gpuMultiPolicy:I

    .line 17
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p1

    check-cast p1, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo v3, "webview_multi_process_fallback_timeout"

    iget v4, v2, Landroid/taobao/windvane/config/WVCommonConfigData;->ucMultiTimeOut:I

    .line 18
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p1

    check-cast p1, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo v3, "webview_multi_process_enable_service_speedup"

    iget-boolean v4, v2, Landroid/taobao/windvane/config/WVCommonConfigData;->ucMultiServiceSpeedUp:Z

    .line 19
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p1

    check-cast p1, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo v3, "provided_keys"

    .line 20
    invoke-virtual {p1, v3, p0}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string p1, "VIDEO_AC"

    .line 21
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v3}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string p1, "AC"

    .line 22
    invoke-virtual {p0, p1, v3}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string p1, "core_ver_excludes"

    iget-object v4, v2, Landroid/taobao/windvane/config/WVCommonConfigData;->excludeUCVersions:Ljava/lang/String;

    .line 23
    invoke-virtual {p0, p1, v4}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string p1, "MULTI_CORE_TYPE"

    .line 24
    invoke-virtual {p0, p1, v3}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string p1, "SYSTEM_WEBVIEW"

    sget-boolean v3, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mUseSystemWebView:Z

    .line 25
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string p1, "WEBVIEW_POLICY"

    .line 26
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string p1, "loadPolicy"

    const-string v3, "SPECIFIED_ONLY"

    .line 27
    invoke-virtual {p0, p1, v3}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string p1, "VERIFY_POLICY"

    const/4 v3, 0x0

    .line 28
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string p1, "delete_core"

    .line 29
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v3

    invoke-virtual {v3}, Landroid/taobao/windvane/config/GlobalConfig;->getDeleteCorePolicy()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string p1, "log_conf"

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo p1, "wait_fallback_sys"

    .line 31
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object p2

    invoke-virtual {p2}, Landroid/taobao/windvane/config/GlobalConfig;->getUcCoreWaitMills()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo p1, "ucPlayer"

    iget-boolean p2, v2, Landroid/taobao/windvane/config/WVCommonConfigData;->useUCPlayer:Z

    .line 32
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo p1, "skip_old_extra_kernel"

    iget-boolean p2, v2, Landroid/taobao/windvane/config/WVCommonConfigData;->ucSkipOldKernel:Z

    .line 33
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo p1, "sdk_international_env"

    .line 34
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object p2

    invoke-virtual {p2}, Landroid/taobao/windvane/config/GlobalConfig;->isUcSdkInternationalEnv()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo p1, "startup_policy"

    iget p2, v2, Landroid/taobao/windvane/config/WVCommonConfigData;->initWebPolicy:I

    .line 35
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string p1, "PRIVATE_DATA_DIRECTORY_SUFFIX"

    .line 36
    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getMultiProcessPrivateDataDirectorySuffix()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string p1, "disable_multi_unknown_crash"

    .line 37
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object p2

    invoke-virtual {p2}, Landroid/taobao/windvane/config/GlobalConfig;->isDisableMultiUnknownCrash()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo p1, "updateProgress"

    new-instance p2, Landroid/taobao/windvane/extra/uc/WVUCWebView$DownLoadCallback;

    invoke-direct {p2, v5}, Landroid/taobao/windvane/extra/uc/WVUCWebView$DownLoadCallback;-><init>(Landroid/taobao/windvane/extra/uc/WVUCWebView$1;)V

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string p1, "exception"

    new-instance p2, Landroid/taobao/windvane/extra/uc/WVUCWebView$ExceptionValueCallback;

    invoke-direct {p2, v5}, Landroid/taobao/windvane/extra/uc/WVUCWebView$ExceptionValueCallback;-><init>(Landroid/taobao/windvane/extra/uc/WVUCWebView$1;)V

    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo p1, "success"

    new-instance p2, Landroid/taobao/windvane/extra/uc/WVUCWebView$CorePreparedCallback;

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p2, v2, v3}, Landroid/taobao/windvane/extra/uc/WVUCWebView$CorePreparedCallback;-><init>(J)V

    invoke-virtual {p0, p1, p2}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo p1, "switch"

    new-instance p2, Landroid/taobao/windvane/extra/uc/WVUCWebView$SwitchValueCallback;

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p2, v2, v3}, Landroid/taobao/windvane/extra/uc/WVUCWebView$SwitchValueCallback;-><init>(J)V

    invoke-virtual {p0, p1, p2}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    .line 42
    invoke-virtual {p0}, Lcom/uc/webview/export/utility/SetupTask;->setAsDefault()Lcom/uc/webview/export/utility/SetupTask;

    move-result-object p0

    .line 43
    invoke-virtual {p0}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;

    .line 44
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "final UCCore:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/taobao/windvane/extra/uc/WVUCWebView;->UC_CORE_URL:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "UCCore init fail "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :goto_2
    sget-boolean p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mUseSystemWebView:Z

    xor-int/2addr p0, v1

    return p0
.end method

.method private static isMainProcess()Z
    .locals 3

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    invoke-static {v0}, Landroid/taobao/windvane/util/CommonUtils;->isMainProcess(Landroid/content/Context;)Z

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u662f\u5426\u5728\u4e3b\u8fdb\u7a0b:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WVUCWebView"

    invoke-static {v2, v1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static isNeedCookie(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    .line 1
    :try_start_0
    sget-object v1, Landroid/taobao/windvane/extra/uc/WVUCWebView;->pattern:Ljava/util/regex/Pattern;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pattern complile Exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "WVUCWebView"

    invoke-static {v1, p0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0
.end method

.method public static isNeedDownLoad()Z
    .locals 1

    .line 1
    sget-boolean v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->needDownLoad:Z

    return v0
.end method

.method private static isUseSystemWebView(Landroid/content/Context;)Z
    .locals 5

    .line 1
    sget-boolean v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mUseSystemWebView:Z

    if-nez v0, :cond_1

    .line 2
    :try_start_0
    invoke-static {}, Lcom/taobao/orange/OrangeConfig;->getInstance()Lcom/taobao/orange/OrangeConfig;

    move-result-object v1

    const-string v2, "WindVane_common_config"

    const-string/jumbo v3, "useSysWebViewBizList"

    const-string v4, ""

    invoke-virtual {v1, v2, v3, v4}, Lcom/taobao/orange/OrangeConfig;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ";"

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 5
    array-length v2, v1

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 7
    aget-object v4, v1, v3

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    :cond_1
    return v0
.end method

.method public static isWebViewMultiProcessEnabled()Z
    .locals 1

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->webMultiPolicy:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static logConfigCreate()[Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3
    new-instance v1, Landroid/taobao/windvane/extra/uc/WVUCWebView$2;

    invoke-direct {v1}, Landroid/taobao/windvane/extra/uc/WVUCWebView$2;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const-string v2, "[all]"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    return-object v0
.end method

.method private static onUCMCoreSwitched(Landroid/content/Context;J)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UCSDK init onUCMCoreSwitched: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WVUCWebView"

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Landroid/taobao/windvane/extra/core/WVCore;->getInstance()Landroid/taobao/windvane/extra/core/WVCore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/core/WVCore;->isUCSupport()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    const-string v0, "CorePreparedCallback   isUCSDKSupport = true"

    .line 3
    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Landroid/taobao/windvane/extra/core/WVCore;->getInstance()Landroid/taobao/windvane/extra/core/WVCore;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/extra/core/WVCore;->setUCSupport(Z)V

    const/4 v0, 0x0

    .line 5
    sput v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->coreCode:I

    .line 6
    sget-object v2, Landroid/taobao/windvane/extra/uc/WVUCWebView;->coreEventCallback:Landroid/taobao/windvane/webview/CoreEventCallback;

    if-eqz v2, :cond_0

    .line 7
    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVCoreSettings;->getInstance()Landroid/taobao/windvane/extra/uc/WVCoreSettings;

    move-result-object v2

    sget-object v3, Landroid/taobao/windvane/extra/uc/WVUCWebView;->coreEventCallback:Landroid/taobao/windvane/webview/CoreEventCallback;

    invoke-virtual {v2, v3}, Landroid/taobao/windvane/extra/uc/WVCoreSettings;->setCoreEventCallback(Landroid/taobao/windvane/webview/CoreEventCallback;)V

    .line 8
    :cond_0
    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVCoreSettings;->getInstance()Landroid/taobao/windvane/extra/uc/WVCoreSettings;

    move-result-object v2

    iget-object v2, v2, Landroid/taobao/windvane/extra/uc/WVCoreSettings;->coreEventCallbacks:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 9
    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVCoreSettings;->getInstance()Landroid/taobao/windvane/extra/uc/WVCoreSettings;

    move-result-object v2

    iget-object v2, v2, Landroid/taobao/windvane/extra/uc/WVCoreSettings;->coreEventCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/taobao/windvane/webview/CoreEventCallback;

    if-nez v3, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v3}, Landroid/taobao/windvane/webview/CoreEventCallback;->onUCCorePrepared()V

    goto :goto_0

    .line 11
    :cond_2
    invoke-static {}, Landroid/taobao/windvane/config/WVCommonConfig;->getInstance()Landroid/taobao/windvane/config/WVCommonConfig;

    sget-object v2, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-boolean v2, v2, Landroid/taobao/windvane/config/WVCommonConfigData;->enableThreadWatchdog:Z

    if-eqz v2, :cond_3

    .line 12
    sget-object v2, Landroid/taobao/windvane/extra/uc/WVUCWebView;->sSpanWrapper:Landroid/taobao/windvane/fullspan/SpanWrapper;

    invoke-static {v2}, Landroid/taobao/windvane/extra/uc/UCCoreController;->registerThreadANRCallback(Landroid/taobao/windvane/fullspan/SpanWrapper;)V

    .line 13
    :cond_3
    sget-object v2, Landroid/taobao/windvane/extra/uc/WVUCWebView;->initAfterUCCoreReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    invoke-static {p0, p1, p2}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->initAfterUCReady(Landroid/content/Context;J)V

    :cond_4
    return-void
.end method

.method private static saveUCCoeDexDirPath(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "save dex path:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WVUCWebView"

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "WindVane"

    const-string v1, "UC_PATH"

    .line 2
    invoke-static {v0, v1, p0}, Landroid/taobao/windvane/util/ConfigStorage;->putStringVal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setAcceptThirdPartyCookies()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    instance-of v2, v0, Landroid/webkit/WebView;

    if-eqz v2, :cond_0

    .line 4
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v2, v0, v1}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static setBizCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->bizId:Ljava/lang/String;

    return-void
.end method

.method public static setCoreEventCallback(Landroid/taobao/windvane/webview/CoreEventCallback;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sput-object p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->coreEventCallback:Landroid/taobao/windvane/webview/CoreEventCallback;

    return-void
.end method

.method public static setDegradeAliNetwork(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mDegradeAliNetwork:Z

    return-void
.end method

.method private static setMultiPolicy(Landroid/content/Context;)V
    .locals 8

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v1, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->webMultiPolicy:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 2
    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->gpuMultiPolicy:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    .line 3
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "2"

    .line 4
    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 5
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 6
    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 7
    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isMainProcess()Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_2

    if-eqz v3, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 8
    invoke-static {}, Landroid/taobao/windvane/extra/core/WVCore;->getInstance()Landroid/taobao/windvane/extra/core/WVCore;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/taobao/windvane/extra/core/WVCore;->checkIsolateIfOpen(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    sput p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->renderMultiPolicy:I

    .line 9
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt p0, v1, :cond_4

    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isMainProcess()Z

    move-result p0

    if-eqz p0, :cond_4

    if-eqz v2, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    :goto_1
    sput v5, Landroid/taobao/windvane/extra/uc/WVUCWebView;->gpuMultiPolicy:I

    .line 10
    invoke-static {}, Landroid/taobao/windvane/extra/core/WVCore;->getInstance()Landroid/taobao/windvane/extra/core/WVCore;

    move-result-object p0

    sget v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->renderMultiPolicy:I

    invoke-virtual {p0, v0}, Landroid/taobao/windvane/extra/core/WVCore;->setUsedWebMulti(I)V

    .line 11
    invoke-static {}, Landroid/taobao/windvane/extra/core/WVCore;->getInstance()Landroid/taobao/windvane/extra/core/WVCore;

    move-result-object p0

    sget v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->gpuMultiPolicy:I

    invoke-virtual {p0, v0}, Landroid/taobao/windvane/extra/core/WVCore;->setUsedGpuMulti(I)V

    return-void
.end method

.method private setSupportLocalStorageFile()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 2
    new-instance v0, Landroid/taobao/windvane/filter/WVSecurityFilter;

    invoke-direct {v0}, Landroid/taobao/windvane/filter/WVSecurityFilter;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvSecurityFilter:Landroid/taobao/windvane/filter/WVSecurityFilter;

    .line 3
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v0

    iget-object v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvSecurityFilter:Landroid/taobao/windvane/filter/WVSecurityFilter;

    sget v2, Landroid/taobao/windvane/service/WVEventService;->WV_FORWARD_EVENT:I

    invoke-virtual {v0, v1, v2}, Landroid/taobao/windvane/service/WVEventService;->addEventListener(Landroid/taobao/windvane/service/WVEventListener;I)V

    :cond_0
    return-void
.end method

.method public static setUcCoreUrl(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sput-object p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->UC_CORE_URL:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static setUseSystemWebView(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mUseSystemWebView:Z

    const/16 p0, 0x46

    .line 2
    sput p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->fromType:I

    return-void
.end method

.method public static setUseTaobaoNetwork(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mUseAliNetwork:Z

    return-void
.end method

.method private static setupUCParam(Ljava/lang/String;)V
    .locals 6

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-object v1, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->ucParam:Landroid/taobao/windvane/config/UCParamData;

    .line 2
    iget-boolean v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->enableUcShareCore:Z

    const-string v2, "WVUCWebView"

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 3
    invoke-static {}, Landroid/taobao/windvane/config/UCParamData;->hostApp()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/taobao/windvane/config/UCParamData;->needLoadNeedShareCoreApp()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 5
    invoke-static {}, Landroid/taobao/windvane/config/UCParamData;->hostApp()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v1, Landroid/taobao/windvane/config/UCParamData;->scLoadPolicyCd:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    invoke-static {}, Landroid/taobao/windvane/util/NetWork;->isConnectionInexpensive()Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "sc_lshco"

    .line 7
    iput-object v3, v1, Landroid/taobao/windvane/config/UCParamData;->scLoadPolicyCd:Ljava/lang/String;

    const-string v3, "1"

    .line 8
    iput-object v3, v1, Landroid/taobao/windvane/config/UCParamData;->scWaitMilts:Ljava/lang/String;

    .line 9
    :cond_1
    iget-object v3, v1, Landroid/taobao/windvane/config/UCParamData;->scWaitMilts:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "sc_ustwm"

    .line 10
    iget-object v4, v1, Landroid/taobao/windvane/config/UCParamData;->scWaitMilts:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    :cond_2
    invoke-static {}, Landroid/taobao/windvane/config/UCParamData;->hostApp()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v4, "sc_ta_fp"

    if-eqz v3, :cond_3

    :try_start_1
    invoke-virtual {v1}, Landroid/taobao/windvane/config/UCParamData;->validShareCoreToSdcardParams()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 12
    iget-object v3, v1, Landroid/taobao/windvane/config/UCParamData;->sdCopyPathCd:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "sc_cpy"

    .line 13
    iget-object v5, v1, Landroid/taobao/windvane/config/UCParamData;->scCopyToSdcardCd:Ljava/lang/String;

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "sc_hucmv"

    .line 14
    iget-object v5, v1, Landroid/taobao/windvane/config/UCParamData;->hostUcmVersionsCd:Ljava/lang/String;

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "sc_udst"

    .line 15
    iget-object v5, v1, Landroid/taobao/windvane/config/UCParamData;->scStillUpd:Ljava/lang/String;

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "sc_cd_fp"

    .line 17
    invoke-virtual {v0, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    :cond_3
    invoke-virtual {v1}, Landroid/taobao/windvane/config/UCParamData;->validShareCoreFromSdcardParams()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 19
    iget-object p0, v1, Landroid/taobao/windvane/config/UCParamData;->sdCopyPathCd:Ljava/lang/String;

    invoke-virtual {v0, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p0, "sc_taucmv"

    .line 20
    iget-object v3, v1, Landroid/taobao/windvane/config/UCParamData;->thirtyUcmVersionsCd:Ljava/lang/String;

    invoke-virtual {v0, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p0, "sc_ldpl"

    .line 21
    iget-object v3, v1, Landroid/taobao/windvane/config/UCParamData;->scLoadPolicyCd:Ljava/lang/String;

    invoke-virtual {v0, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p0, "sc_pkgl"

    .line 22
    iget-object v1, v1, Landroid/taobao/windvane/config/UCParamData;->scPkgNames:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JSON_CMD"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 24
    invoke-static {v2, p0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-static {p0}, Lcom/uc/webview/export/extension/UCCore;->setParam(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "failed to setup uc param"

    .line 26
    invoke-static {v2, v1, p0, v0}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    const-string/jumbo p0, "not taobao, or shared core disabled by config, or uc param is empty."

    .line 27
    invoke-static {v2, p0}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private tryPrcacheDocument(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/taobao/windvane/config/WVUCPrecacheManager;->getInstance()Landroid/taobao/windvane/config/WVUCPrecacheManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/taobao/windvane/config/WVUCPrecacheManager;->canPrecacheDoc(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->webViewClient:Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance v0, Lcom/uc/webview/export/WebResourceRequest;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/uc/webview/export/WebResourceRequest;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 4
    iget-object v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->webViewClient:Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;

    invoke-virtual {v1, p0, v0}, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;->shouldInterceptRequest(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/WebResourceRequest;)Lcom/uc/webview/export/WebResourceResponse;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "maxAge"

    const-string v2, "10"

    .line 8
    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ignoreQuery"

    const-string v2, "0"

    .line 9
    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {v1, p1}, Lcom/uc/webview/export/extension/UCCore;->precacheResources(Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-static {}, Landroid/taobao/windvane/config/WVUCPrecacheManager;->getInstance()Landroid/taobao/windvane/config/WVUCPrecacheManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/taobao/windvane/config/WVUCPrecacheManager;->addPrecacheDoc(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static ucCore7ZFilePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/config/GlobalConfig;->getUc7ZPath()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/libkernelu4_7z_uc.so"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private static uploadLog([Ljava/lang/Object;)V
    .locals 13

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, ":"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x1

    .line 3
    aget-object v2, p0, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x2

    .line 5
    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x5

    .line 7
    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    .line 9
    aget-object v3, p0, v1

    const-string/jumbo v4, "uc loading"

    const-string/jumbo v5, "msg"

    const-string v6, "false"

    const-string/jumbo v7, "tbNet"

    const-string/jumbo v8, "uc.Loading"

    const-string v9, " "

    const/4 v10, 0x4

    if-eqz v3, :cond_2

    .line 10
    aget-object v3, p0, v1

    instance-of v3, v3, Lcom/uc/webview/export/cyclone/UCKnownException;

    if-eqz v3, :cond_0

    .line 11
    aget-object v3, p0, v1

    check-cast v3, Lcom/uc/webview/export/cyclone/UCKnownException;

    .line 12
    invoke-virtual {v3}, Lcom/uc/webview/export/cyclone/UCKnownException;->errCode()I

    move-result v3

    sput v3, Landroid/taobao/windvane/extra/uc/WVUCWebView;->coreCode:I

    const/16 v11, 0xbbf

    if-ne v3, v11, :cond_0

    :try_start_0
    const-string/jumbo v3, "webviewuc"

    .line 13
    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/16 v3, 0x133

    .line 14
    sput v3, Landroid/taobao/windvane/extra/uc/WVUCWebView;->coreCode:I

    .line 15
    :cond_0
    :goto_0
    invoke-static {}, Landroid/taobao/windvane/config/WVCommonConfig;->getInstance()Landroid/taobao/windvane/config/WVCommonConfig;

    sget-object v3, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-boolean v3, v3, Landroid/taobao/windvane/config/WVCommonConfigData;->enableUCUploadToTlog:Z

    if-eqz v3, :cond_1

    .line 16
    aget-object v3, p0, v10

    check-cast v3, Ljava/lang/String;

    aget-object v1, p0, v1

    check-cast v1, Ljava/lang/Throwable;

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v3, v0, v1, v9}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1

    .line 17
    :cond_1
    sget-object v3, Landroid/taobao/windvane/extra/uc/WVUCWebView;->sSpanWrapper:Landroid/taobao/windvane/fullspan/SpanWrapper;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v12, p0, v10

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p0, v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/taobao/windvane/fullspan/SpanWrapper;->log(Ljava/lang/String;)V

    .line 18
    :goto_1
    aget-object p0, p0, v10

    check-cast p0, Ljava/lang/String;

    invoke-static {v8, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 19
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 20
    invoke-interface {p0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-interface {p0, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-static {v4, p0}, Landroid/taobao/windvane/ha/WVHAManager;->uploadApmStage(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_3

    .line 23
    :cond_2
    invoke-static {}, Landroid/taobao/windvane/config/WVCommonConfig;->getInstance()Landroid/taobao/windvane/config/WVCommonConfig;

    sget-object v1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-boolean v1, v1, Landroid/taobao/windvane/config/WVCommonConfigData;->enableUCUploadToTlog:Z

    if-eqz v1, :cond_3

    .line 24
    aget-object v1, p0, v10

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 25
    :cond_3
    sget-object v1, Landroid/taobao/windvane/extra/uc/WVUCWebView;->sSpanWrapper:Landroid/taobao/windvane/fullspan/SpanWrapper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, p0, v10

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/taobao/windvane/fullspan/SpanWrapper;->log(Ljava/lang/String;)V

    .line 26
    :goto_2
    aget-object p0, p0, v10

    check-cast p0, Ljava/lang/String;

    invoke-static {v8, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 27
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 28
    invoke-interface {p0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-interface {p0, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-static {v4, p0}, Landroid/taobao/windvane/ha/WVHAManager;->uploadApmStage(Ljava/lang/String;Ljava/util/Map;)V

    :cond_4
    :goto_3
    return-void
.end method


# virtual methods
.method public OnScrollChanged(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->entryManager:Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->onScrollChanged(IIII)V

    .line 3
    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/uc/webview/export/WebView;->onScrollChanged(IIII)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public _getContext()Landroid/content/Context;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroid/content/MutableContextWrapper;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Landroid/content/MutableContextWrapper;

    invoke-virtual {v0}, Landroid/content/MutableContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public _post(Ljava/lang/Runnable;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    const-string v0, "WVUCWebView"

    const-string v1, " wait webview attach to window"

    .line 2
    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v0, Landroid/taobao/windvane/webview/IWVWebView;->taskQueue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    const-string v0, "accessibility"

    .line 1
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "accessibilityTraversal"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/uc/webview/export/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public addJsObject(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->entryManager:Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->addEntry(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public allowAllOpen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mAllowAllOpen:Z

    return v0
.end method

.method public back()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/uc/webview/export/WebView;->goBack()V

    .line 3
    iget v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mPageLoadedCount:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    sub-int/2addr v0, v1

    .line 4
    iput v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mPageLoadedCount:I

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "back pressed, mPageLoadedCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mPageLoadedCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WVUCWebView"

    invoke-static {v2, v0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public canGoBack()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v0

    const/16 v1, 0xbbc

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/service/WVEventService;->onEvent(I)Landroid/taobao/windvane/service/WVEventResult;

    move-result-object v0

    iget-boolean v0, v0, Landroid/taobao/windvane/service/WVEventResult;->isSuccess:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public canUseGlobalUrlConfig()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mUseGlobalUrlConfig:Z

    return v0
.end method

.method public canUseUrlConfig()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->useUrlConfig:Z

    return v0
.end method

.method public clearCache()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-super {p0, v0}, Lcom/uc/webview/export/WebView;->clearCache(Z)V

    return-void
.end method

.method public clearH5MonitorData()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mH5MonitorCache:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    :cond_0
    return-void
.end method

.method public containsH5MonitorData(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mH5MonitorCache:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public coreDestroy()V
    .locals 13

    const-string/jumbo v0, "x86"

    const-string v1, "Delay destroy core"

    const-string v2, "WVUCWebView::coreDestroy finally Exception:"

    const-string v3, "WVUCWebView"

    const-wide/16 v4, 0x32

    const/4 v6, 0x1

    const/16 v7, 0x13

    const/4 v8, 0x2

    const/4 v9, 0x0

    .line 1
    :try_start_0
    iget-boolean v10, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mIsCoreDestroy:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v10, :cond_3

    if-nez v10, :cond_2

    .line 2
    :try_start_1
    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v10

    if-eq v10, v8, :cond_1

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v8, v7, :cond_0

    invoke-static {v0}, Landroid/taobao/windvane/extra/uc/WVUCUtils;->isArchContains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->coreDestroy()V

    .line 4
    iput-boolean v6, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mIsCoreDestroy:Z

    .line 5
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->destroy()V

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    invoke-static {v3, v1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/uc/webview/export/WebView;->getSettings()Lcom/uc/webview/export/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/uc/webview/export/WebSettings;->setJavaScriptEnabled(Z)V

    .line 8
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Landroid/taobao/windvane/extra/uc/WVUCWebView$9;

    invoke-direct {v1, p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView$9;-><init>(Landroid/taobao/windvane/extra/uc/WVUCWebView;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 9
    :goto_1
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->containerSpan:Lcom/taobao/analysis/v3/FalcoSpan;

    if-eqz v0, :cond_2

    .line 10
    invoke-interface {v0}, Lcom/taobao/opentracing/api/Span;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void

    .line 12
    :cond_3
    :try_start_2
    iget-object v10, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvh5PPManager:Landroid/taobao/windvane/extra/performance/WVH5PPManager;

    invoke-virtual {v10}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->uploadInfo()V

    const-string v10, "call core destroy"

    .line 13
    invoke-static {v3, v10}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iput v9, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mPageLoadedCount:I

    .line 15
    iget-object v10, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->context:Landroid/content/Context;

    const-string v11, "input_method"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/inputmethod/InputMethodManager;

    .line 16
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 17
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual {v10, v11, v9}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_4
    const/4 v10, 0x0

    .line 18
    invoke-super {p0, v10}, Lcom/uc/webview/export/WebView;->setWebViewClient(Lcom/uc/webview/export/WebViewClient;)V

    .line 19
    invoke-super {p0, v10}, Lcom/uc/webview/export/WebView;->setWebChromeClient(Lcom/uc/webview/export/WebChromeClient;)V

    .line 20
    iput-object v10, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->webViewClient:Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;

    .line 21
    iput-object v10, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->webChromeClient:Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;

    .line 22
    iput-object v10, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->context:Landroid/content/Context;

    .line 23
    invoke-static {}, Landroid/taobao/windvane/jsbridge/WVJsBridge;->getInstance()Landroid/taobao/windvane/jsbridge/WVJsBridge;

    move-result-object v11

    invoke-virtual {v11}, Landroid/taobao/windvane/jsbridge/WVJsBridge;->tryToRunTailBridges()V

    .line 24
    iget-object v11, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->entryManager:Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;

    invoke-virtual {v11}, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->onDestroy()V

    .line 25
    invoke-virtual {p0, v10}, Lcom/uc/webview/export/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 26
    iput-object v10, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 27
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v10

    const/16 v11, 0xbbb

    invoke-virtual {v10, v11}, Landroid/taobao/windvane/service/WVEventService;->onEvent(I)Landroid/taobao/windvane/service/WVEventResult;

    .line 28
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v10

    iget-object v11, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvSecurityFilter:Landroid/taobao/windvane/filter/WVSecurityFilter;

    invoke-virtual {v10, v11}, Landroid/taobao/windvane/service/WVEventService;->removeEventListener(Landroid/taobao/windvane/service/WVEventListener;)V

    .line 29
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v10

    iget-object v11, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->jsPatchListener:Landroid/taobao/windvane/jspatch/WVJsPatchListener;

    invoke-virtual {v10, v11}, Landroid/taobao/windvane/service/WVEventService;->removeEventListener(Landroid/taobao/windvane/service/WVEventListener;)V

    .line 30
    invoke-virtual {p0}, Lcom/uc/webview/export/WebView;->removeAllViews()V

    .line 31
    sget-object v10, Landroid/taobao/windvane/webview/IWVWebView;->JsbridgeHis:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v10, :cond_5

    .line 32
    invoke-virtual {v10}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 33
    :cond_5
    iput-boolean v9, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isLive:Z

    .line 34
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-eqz v10, :cond_6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    instance-of v10, v10, Landroid/view/ViewGroup;

    if-eqz v10, :cond_6

    .line 35
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    invoke-virtual {v10, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 36
    :cond_6
    :try_start_3
    iget-boolean v10, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mIsCoreDestroy:Z

    if-nez v10, :cond_b

    .line 37
    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v10

    if-eq v10, v8, :cond_8

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v8, v7, :cond_7

    invoke-static {v0}, Landroid/taobao/windvane/extra/uc/WVUCUtils;->isArchContains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    .line 38
    :cond_7
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->coreDestroy()V

    .line 39
    iput-boolean v6, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mIsCoreDestroy:Z

    .line 40
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->destroy()V

    goto :goto_4

    .line 41
    :cond_8
    :goto_3
    invoke-static {v3, v1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lcom/uc/webview/export/WebView;->getSettings()Lcom/uc/webview/export/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/uc/webview/export/WebSettings;->setJavaScriptEnabled(Z)V

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Landroid/taobao/windvane/extra/uc/WVUCWebView$9;

    invoke-direct {v1, p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView$9;-><init>(Landroid/taobao/windvane/extra/uc/WVUCWebView;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 44
    :goto_4
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->containerSpan:Lcom/taobao/analysis/v3/FalcoSpan;

    if-eqz v0, :cond_b

    .line 45
    invoke-interface {v0}, Lcom/taobao/opentracing/api/Span;->finish()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception v0

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_7

    :catchall_2
    move-exception v10

    .line 47
    :try_start_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "WVUCWebView::coreDestroy Exception:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 48
    :try_start_5
    iget-boolean v10, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mIsCoreDestroy:Z

    if-nez v10, :cond_b

    .line 49
    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v10

    if-eq v10, v8, :cond_a

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v8, v7, :cond_9

    invoke-static {v0}, Landroid/taobao/windvane/extra/uc/WVUCUtils;->isArchContains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_5

    .line 50
    :cond_9
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->coreDestroy()V

    .line 51
    iput-boolean v6, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mIsCoreDestroy:Z

    .line 52
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->destroy()V

    goto :goto_6

    .line 53
    :cond_a
    :goto_5
    invoke-static {v3, v1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/uc/webview/export/WebView;->getSettings()Lcom/uc/webview/export/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/uc/webview/export/WebSettings;->setJavaScriptEnabled(Z)V

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Landroid/taobao/windvane/extra/uc/WVUCWebView$9;

    invoke-direct {v1, p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView$9;-><init>(Landroid/taobao/windvane/extra/uc/WVUCWebView;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 56
    :goto_6
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->containerSpan:Lcom/taobao/analysis/v3/FalcoSpan;

    if-eqz v0, :cond_b

    .line 57
    invoke-interface {v0}, Lcom/taobao/opentracing/api/Span;->finish()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_8

    :catchall_3
    move-exception v0

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_8
    return-void

    :catchall_4
    move-exception v10

    .line 59
    :try_start_6
    iget-boolean v11, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mIsCoreDestroy:Z

    if-nez v11, :cond_e

    .line 60
    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v11

    if-eq v11, v8, :cond_d

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v8, v7, :cond_c

    invoke-static {v0}, Landroid/taobao/windvane/extra/uc/WVUCUtils;->isArchContains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_9

    .line 61
    :cond_c
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->coreDestroy()V

    .line 62
    iput-boolean v6, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mIsCoreDestroy:Z

    .line 63
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->destroy()V

    goto :goto_a

    .line 64
    :cond_d
    :goto_9
    invoke-static {v3, v1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/uc/webview/export/WebView;->getSettings()Lcom/uc/webview/export/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/uc/webview/export/WebSettings;->setJavaScriptEnabled(Z)V

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Landroid/taobao/windvane/extra/uc/WVUCWebView$9;

    invoke-direct {v1, p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView$9;-><init>(Landroid/taobao/windvane/extra/uc/WVUCWebView;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 67
    :goto_a
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->containerSpan:Lcom/taobao/analysis/v3/FalcoSpan;

    if-eqz v0, :cond_e

    .line 68
    invoke-interface {v0}, Lcom/taobao/opentracing/api/Span;->finish()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_b

    :catchall_5
    move-exception v0

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_e
    :goto_b
    throw v10
.end method

.method public coreDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->dx:F

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->dy:F

    .line 5
    iget-boolean v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isUser:Z

    if-nez v0, :cond_3

    .line 6
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mEventSparseArray:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return v2

    :cond_0
    const/4 v3, 0x2

    const/high16 v4, 0x40a00000    # 5.0f

    if-ne v0, v3, :cond_1

    .line 7
    iget-boolean v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isUser:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->dy:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_3

    return v2

    :cond_1
    if-ne v0, v2, :cond_3

    .line 8
    iget-boolean v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isUser:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->dy:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    .line 9
    iput-boolean v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isUser:Z

    return v2

    .line 10
    :cond_2
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mEventSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    if-eqz v0, :cond_3

    .line 11
    invoke-super {p0, v0}, Lcom/uc/webview/export/WebView;->coreDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 12
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 13
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mEventSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 14
    :cond_3
    invoke-super {p0, p1}, Lcom/uc/webview/export/WebView;->coreDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public coreOnScrollChanged(IIII)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->OnScrollChanged(IIII)V

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/uc/webview/export/WebView;->coreOnScrollChanged(IIII)V

    return-void
.end method

.method public evaluateJavascript(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "evaluateJavascript : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WVUCWebView"

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-boolean v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isLive:Z

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    const-string v2, "javascript:"

    const/4 v3, 0x0

    if-le v0, v1, :cond_1

    const/16 v0, 0xb

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 6
    :cond_1
    sget-boolean v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->evaluateJavascriptSupported:Z

    const/4 v1, 0x3

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/uc/webview/export/WebView;->getCurrentViewCoreType()I

    move-result v0

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 8
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->script2NativeCallback(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_1

    .line 9
    :cond_4
    :goto_0
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/uc/webview/export/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 10
    :catch_0
    invoke-virtual {p0}, Lcom/uc/webview/export/WebView;->getCurrentViewCoreType()I

    move-result v0

    if-eq v0, v1, :cond_5

    .line 11
    sput-boolean v3, Landroid/taobao/windvane/extra/uc/WVUCWebView;->evaluateJavascriptSupported:Z

    .line 12
    invoke-virtual {p0, p1, p2}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    const-string p2, "2"

    const-string v0, "exception"

    .line 13
    invoke-static {p2, p1, v0}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->commitUCWebviewError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 14
    :catch_1
    invoke-virtual {p0}, Lcom/uc/webview/export/WebView;->getCurrentViewCoreType()I

    move-result v0

    if-eq v0, v1, :cond_5

    .line 15
    sput-boolean v3, Landroid/taobao/windvane/extra/uc/WVUCWebView;->evaluateJavascriptSupported:Z

    .line 16
    invoke-virtual {p0, p1, p2}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public fireEvent(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getWVCallBackContext()Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object v0

    const-string/jumbo v1, "{}"

    invoke-virtual {v0, p1, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getWVCallBackContext()Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getCachedUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->cachedUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->cachedUrl:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentHeight()I
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->getContentHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-super {p0}, Lcom/uc/webview/export/WebView;->getScale()F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getCurrentContext()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->_getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentUrl()Ljava/lang/String;
    .locals 4

    const-string v0, "WVUCWebView"

    .line 1
    :try_start_0
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebView had destroyed,forbid to be called getUrl. currentUrl : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->currentUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUrl by currentUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->currentUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->currentUrl:Ljava/lang/String;

    return-object v0

    .line 5
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUrl by webview: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/taobao/windvane/util/TaoLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public getDataOnActive()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->dataOnActive:Ljava/lang/String;

    return-object v0
.end method

.method public getFalcoSpan()Lcom/taobao/analysis/v3/FalcoSpan;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->containerSpan:Lcom/taobao/analysis/v3/FalcoSpan;

    return-object v0
.end method

.method public getH5MonitorData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mH5MonitorCache:Ljava/util/Hashtable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Hashtable;

    if-nez p1, :cond_1

    return-object v1

    .line 3
    :cond_1
    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getH5MonitorDatas()Lorg/json/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mH5MonitorCache:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 4
    iget-object v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mH5MonitorCache:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    iget-object v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mH5MonitorCache:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Hashtable;

    .line 7
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 8
    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v4

    .line 9
    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 10
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 11
    invoke-virtual {v2, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 13
    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v2, "resources"

    .line 14
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v1
.end method

.method public getJsObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->entryManager:Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->getEntry(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getOpenTracingContext()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->openTracingContextMap:Ljava/util/Map;

    return-object v0
.end method

.method public getPageLoadedCount()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mPageLoadedCount:I

    return v0
.end method

.method public getPerformanceDelegate()Landroid/taobao/windvane/extra/performance2/WVPerformance;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->performanceDelegate:Landroid/taobao/windvane/extra/performance2/WVPerformance;

    return-object v0
.end method

.method public getSpanWrapper()Landroid/taobao/windvane/fullspan/SpanWrapper;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mSpanWrapper:Landroid/taobao/windvane/fullspan/SpanWrapper;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getCurrentUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserAgentString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/uc/webview/export/WebView;->getSettings()Lcom/uc/webview/export/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->getCoreView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getWVCallBackContext()Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .locals 1

    .line 1
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-direct {v0, p0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;-><init>(Landroid/taobao/windvane/webview/IWVWebView;)V

    return-object v0
.end method

.method public getWvUIModel()Landroid/taobao/windvane/webview/WVUIModel;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const-string v0, "WVUCWebView"

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    return v1

    .line 2
    :pswitch_0
    :try_start_0
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->_getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Landroid/taobao/windvane/util/EnvUtil;->isCN()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "\u56fe\u7247\u4fdd\u5b58\u5230\u76f8\u518c\u5931\u8d25"

    goto :goto_0

    :cond_0
    const-string v1, "Failed to save picture"

    :goto_0
    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NOTIFY_SAVE_IMAGE_FAIL fail "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v2

    .line 4
    :pswitch_1
    :try_start_1
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->_getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Landroid/taobao/windvane/util/EnvUtil;->isCN()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "\u56fe\u7247\u4fdd\u5b58\u5230\u76f8\u518c\u6210\u529f"

    goto :goto_2

    :cond_1
    const-string v1, "Success to save picture"

    :goto_2
    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NOTIFY_SAVE_IMAGE_SUCCESS fail "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return v2

    .line 6
    :pswitch_2
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {p1}, Landroid/taobao/windvane/webview/WVUIModel;->isShowLoading()Z

    move-result p1

    and-int/2addr p1, v1

    if-eqz p1, :cond_3

    .line 7
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    invoke-virtual {p1}, Landroid/taobao/windvane/webview/WVUIModel;->hideLoadingView()V

    :cond_3
    return v2

    .line 8
    :pswitch_3
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    if-eqz p1, :cond_4

    .line 9
    invoke-virtual {p1}, Landroid/taobao/windvane/webview/WVUIModel;->loadErrorPage()V

    .line 10
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->onErrorTime:J

    .line 11
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    :cond_5
    invoke-virtual {p1}, Landroid/taobao/windvane/webview/WVUIModel;->isShowLoading()Z

    move-result p1

    and-int/2addr p1, v1

    if-eqz p1, :cond_6

    .line 12
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    invoke-virtual {p1}, Landroid/taobao/windvane/webview/WVUIModel;->hideLoadingView()V

    :cond_6
    return v2

    .line 13
    :pswitch_4
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    if-eqz p1, :cond_7

    const/4 v1, 0x1

    :cond_7
    invoke-virtual {p1}, Landroid/taobao/windvane/webview/WVUIModel;->isShowLoading()Z

    move-result p1

    and-int/2addr p1, v1

    if-eqz p1, :cond_8

    .line 14
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    invoke-virtual {p1}, Landroid/taobao/windvane/webview/WVUIModel;->hideLoadingView()V

    .line 15
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    invoke-virtual {p1}, Landroid/taobao/windvane/webview/WVUIModel;->resetNaviBar()V

    .line 16
    :cond_8
    iget-wide v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->onErrorTime:J

    const-wide/16 v3, 0x0

    cmp-long p1, v0, v3

    if-eqz p1, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->onErrorTime:J

    sub-long/2addr v0, v3

    const-wide/16 v3, 0xbb8

    cmp-long p1, v0, v3

    if-lez p1, :cond_9

    .line 17
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    invoke-virtual {p1}, Landroid/taobao/windvane/webview/WVUIModel;->hideErrorPage()V

    :cond_9
    return v2

    .line 18
    :pswitch_5
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    if-eqz p1, :cond_a

    const/4 v1, 0x1

    :cond_a
    invoke-virtual {p1}, Landroid/taobao/windvane/webview/WVUIModel;->isShowLoading()Z

    move-result p1

    and-int/2addr p1, v1

    if-eqz p1, :cond_b

    .line 19
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    invoke-virtual {p1}, Landroid/taobao/windvane/webview/WVUIModel;->showLoadingView()V

    .line 20
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    invoke-virtual {p1, v2}, Landroid/taobao/windvane/webview/WVUIModel;->switchNaviBar(I)V

    .line 21
    :cond_b
    iget p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mPageLoadedCount:I

    add-int/2addr p1, v2

    iput p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mPageLoadedCount:I

    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NOTIFY_PAGE_START mPageLoadedCount="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mPageLoadedCount:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hideLoadingView()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/taobao/windvane/webview/WVUIModel;->hideLoadingView()V

    :cond_0
    return-void
.end method

.method public injectJsEarly(Ljava/lang/String;)V
    .locals 2

    const-string v0, "javascript:"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    .line 2
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->injectJs:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Lcom/uc/webview/export/WebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/uc/webview/export/WebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object p1

    new-instance v0, Landroid/taobao/windvane/extra/uc/WVUCWebView$10;

    invoke-direct {v0, p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView$10;-><init>(Landroid/taobao/windvane/extra/uc/WVUCWebView;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/uc/webview/export/extension/UCExtension;->setInjectJSProvider(Lcom/uc/webview/export/extension/UCExtension$InjectJSProvider;I)V

    :cond_1
    return-void
.end method

.method public insertH5MonitorData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mH5MonitorCache:Ljava/util/Hashtable;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mH5MonitorCache:Ljava/util/Hashtable;

    .line 4
    :cond_1
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mH5MonitorCache:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    if-nez v0, :cond_2

    .line 5
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 6
    iget-object v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mH5MonitorCache:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p3, ""

    :cond_3
    invoke-virtual {v0, p2, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public isLive()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isLive:Z

    return v0
.end method

.method public isPageEmpty(Landroid/taobao/windvane/extra/uc/WVUCWebView$whiteScreenCallback;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/taobao/windvane/extra/uc/WVUCWebView$11;

    invoke-direct {v0, p0, p1}, Landroid/taobao/windvane/extra/uc/WVUCWebView$11;-><init>(Landroid/taobao/windvane/extra/uc/WVUCWebView;Landroid/taobao/windvane/extra/uc/WVUCWebView$whiteScreenCallback;)V

    const-string p1, "(function(d){var filteredTagNames={\'IFRAME\':1,\'STYLE\':1,\'HTML\':1,\'BODY\':1,\'HEAD\':1,\'SCRIPT\':1,\'TITLE\':1};if(d.body){for(var nodes=d.body.childNodes,i=0;i<nodes.length;i++){var node=nodes[i];if(node!=undefined){if(node.nodeType==1&&filteredTagNames[node.tagName]!=1&&node.style.display!=\'none\'){return\'0\'}else if(node.nodeType==3&&node.nodeValue.trim().length>0){return\'0\'}}}}return\'1\'}(document))"

    invoke-virtual {p0, p1, v0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public isPreInit()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isPreInit:Z

    return v0
.end method

.method public isReportedFSP()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isStaticWebView()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mIsStaticWebView:Z

    return v0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mSpanWrapper:Landroid/taobao/windvane/fullspan/SpanWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/fullspan/SpanWrapper;->log(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Landroid/taobao/windvane/util/WVUrlUtil;->isCommonUrl(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "WVUCWebView"

    if-eqz v0, :cond_2

    .line 3
    invoke-static {p1, p0}, Landroid/taobao/windvane/config/WVServerConfig;->isBlackUrl(Ljava/lang/String;Landroid/taobao/windvane/webview/IWVWebView;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    invoke-static {}, Landroid/taobao/windvane/config/WVURLConfig;->getInstance()Landroid/taobao/windvane/config/WVURLConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/config/WVURLConfig;->getForbiddenDomainRedirectURL()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "cause"

    const-string v2, "GET_ACCESS_FORBIDDEN"

    .line 7
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "url"

    .line 8
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x192

    .line 9
    invoke-virtual {p0, p1, v0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->onMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_1
    :try_start_0
    invoke-super {p0, v0}, Lcom/uc/webview/export/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 12
    :cond_2
    iget-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->context:Landroid/content/Context;

    invoke-static {p1, v2, p0}, Landroid/taobao/windvane/webview/WVURLFilter;->doFilter(Ljava/lang/String;Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadUrl filter url="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v1, "UrlConfigFilterType"

    const-string v2, "WVUCWebView.loadUrl"

    .line 14
    invoke-static {v1, v0, v2, p1}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->commitFail(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 15
    :cond_3
    iget-boolean v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->firstTimeLoad:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    const-string v2, "&_wv_preload=true"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 16
    iput-boolean v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->firstTimeLoad:Z

    :cond_4
    if-eqz v0, :cond_5

    .line 17
    :try_start_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v4, "userAgent"

    .line 18
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getUserAgentString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-static {}, Lcom/taobao/weaver/prefetch/WMLPrefetch;->getInstance()Lcom/taobao/weaver/prefetch/WMLPrefetch;

    move-result-object v4

    invoke-virtual {v4, p1, v2}, Lcom/taobao/weaver/prefetch/WMLPrefetch;->prefetchData(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 20
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_5

    move-object p1, v2

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 21
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to call prefetch: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 23
    :cond_5
    :goto_1
    invoke-static {}, Landroid/taobao/windvane/webview/WVSchemeInterceptService;->getWVSchemeIntercepter()Landroid/taobao/windvane/webview/WVSchemeIntercepterInterface;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 24
    invoke-interface {v2, p1}, Landroid/taobao/windvane/webview/WVSchemeIntercepterInterface;->dealUrlScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_6
    if-eqz v0, :cond_9

    .line 25
    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_7

    .line 26
    invoke-direct {p0, p1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->tryPrcacheDocument(Ljava/lang/String;)V

    .line 27
    :cond_7
    iget-boolean v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->firstTimeLoad:Z

    if-eqz v0, :cond_8

    const-string v0, "_wv_preload=true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 28
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvh5PPManager:Landroid/taobao/windvane/extra/performance/WVH5PPManager;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pageDidLoadRequest()V

    .line 29
    iput-boolean v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->firstTimeLoad:Z

    .line 30
    :cond_8
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvh5PPManager:Landroid/taobao/windvane/extra/performance/WVH5PPManager;

    invoke-virtual {v0, p1}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->receiveHtmlUrl(Ljava/lang/String;)V

    .line 31
    :cond_9
    :try_start_2
    invoke-static {}, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->getInstance()Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->onUrlChange(Landroid/taobao/windvane/extra/uc/WVUCWebView;Ljava/lang/String;)V

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadUrl : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-super {p0, p1}, Lcom/uc/webview/export/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :goto_2
    invoke-virtual {p0, p1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->setCachedUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/16 v0, 0xf

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->webChromeClient:Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;

    iget-object v0, v0, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;->mFilePathCallback:Landroid/webkit/ValueCallback;

    if-nez v0, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    invoke-static {p2, p3}, Lcom/uc/webview/export/WebChromeClient$FileChooserParams;->parseResult(ILandroid/content/Intent;)[Landroid/net/Uri;

    move-result-object v0

    .line 3
    iget-object v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->webChromeClient:Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;

    iget-object v1, v1, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;->mFilePathCallback:Landroid/webkit/ValueCallback;

    invoke-interface {v1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->webChromeClient:Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;->mFilePathCallback:Landroid/webkit/ValueCallback;

    .line 5
    :goto_0
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->entryManager:Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0, p1, p2, p3}, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->onActivityResult(IILandroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    const-string v0, "WVUCWebView"

    const-string v1, " webview attach to window, and execute remain task"

    .line 1
    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Landroid/taobao/windvane/webview/IWVWebView;->taskQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 3
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Landroid/taobao/windvane/webview/IWVWebView;->taskQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->onDetachedFromWindow()V

    .line 2
    invoke-static {}, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->getInstance()Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->removeWebview(Landroid/taobao/windvane/extra/uc/WVUCWebView;)V

    .line 3
    sget-object v0, Landroid/taobao/windvane/webview/IWVWebView;->taskQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method public onMessage(ILjava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3
    iput p1, v0, Landroid/os/Message;->what:I

    .line 4
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->entryManager:Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->onPause()V

    .line 3
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 4
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->onPause()V

    .line 5
    :cond_1
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v0

    const/16 v1, 0xbb9

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/service/WVEventService;->onEvent(I)Landroid/taobao/windvane/service/WVEventResult;

    return-void
.end method

.method public onResume()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->entryManager:Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->onResume()V

    .line 3
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 4
    :try_start_0
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->onResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 6
    :cond_1
    :goto_0
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v0

    const/16 v1, 0xbba

    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p0, v2, v3}, Landroid/taobao/windvane/service/WVEventService;->onEvent(ILandroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isLive:Z

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 4

    if-nez p1, :cond_0

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-le v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->_getContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Landroid/app/Activity;

    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 7
    new-instance v1, Landroid/taobao/windvane/extra/uc/WVUCWebView$8;

    invoke-direct {v1, p0, v0}, Landroid/taobao/windvane/extra/uc/WVUCWebView$8;-><init>(Landroid/taobao/windvane/extra/uc/WVUCWebView;Landroid/view/View;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8
    :cond_0
    invoke-super {p0, p1}, Lcom/uc/webview/export/WebView;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Landroid/taobao/windvane/util/WVUrlUtil;->isCommonUrl(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    const-string v2, "WVUCWebView"

    if-eqz v0, :cond_2

    invoke-static {p1, p0}, Landroid/taobao/windvane/config/WVServerConfig;->isBlackUrl(Ljava/lang/String;Landroid/taobao/windvane/webview/IWVWebView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Landroid/taobao/windvane/config/WVURLConfig;->getInstance()Landroid/taobao/windvane/config/WVURLConfig;

    move-result-object p2

    invoke-virtual {p2}, Landroid/taobao/windvane/config/WVURLConfig;->getForbiddenDomainRedirectURL()Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v0, "cause"

    const-string v1, "POST_ACCESS_FORBIDDEN"

    .line 5
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "url"

    .line 6
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x192

    .line 7
    invoke-virtual {p0, p1, p2}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->onMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_1
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 10
    :cond_2
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->context:Landroid/content/Context;

    invoke-static {p1, v0, p0}, Landroid/taobao/windvane/webview/WVURLFilter;->doFilter(Ljava/lang/String;Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "postUrl filter url="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "UrlConfigFilterType"

    const-string v0, "WVUCWebView.loadUrl"

    .line 12
    invoke-static {p2, v1, v0, p1}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->commitFail(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 13
    :cond_3
    invoke-static {}, Landroid/taobao/windvane/webview/WVSchemeInterceptService;->getWVSchemeIntercepter()Landroid/taobao/windvane/webview/WVSchemeIntercepterInterface;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 14
    invoke-interface {v0, p1}, Landroid/taobao/windvane/webview/WVSchemeIntercepterInterface;->dealUrlScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 15
    :cond_4
    :try_start_1
    invoke-static {}, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->getInstance()Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->onUrlChange(Landroid/taobao/windvane/extra/uc/WVUCWebView;Ljava/lang/String;)V

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "postUrl : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-super {p0, p1, p2}, Lcom/uc/webview/export/WebView;->postUrl(Ljava/lang/String;[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    .line 18
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :goto_1
    invoke-virtual {p0, p1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->setCachedUrl(Ljava/lang/String;)V

    return-void
.end method

.method public receiveJSMessageForCustomizedFSP(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->pageTracker:Landroid/taobao/windvane/extra/performance2/WVPageTracker;

    invoke-virtual {v0, p1, p2}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onPageReceivedCustomizedFSP(J)V

    return-void
.end method

.method public receiveJSMessageForCustomizedStage(JLjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->pageTracker:Landroid/taobao/windvane/extra/performance2/WVPageTracker;

    invoke-virtual {v0, p1, p2, p3}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onPageReceivedCustomizedStage(JLjava/lang/String;)V

    return-void
.end method

.method public receiveJSMessageForFP(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvh5PPManager:Landroid/taobao/windvane/extra/performance/WVH5PPManager;

    invoke-virtual {v0, p1, p2}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->receiveFPTime(J)V

    .line 2
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->pageTracker:Landroid/taobao/windvane/extra/performance2/WVPageTracker;

    invoke-virtual {v0, p1, p2}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onPageReceivedFP(J)V

    return-void
.end method

.method public receiveJSMessageForFSP(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvfspManager:Landroid/taobao/windvane/extra/performance2/WVFSPManager;

    invoke-virtual {v0, p1, p2}, Landroid/taobao/windvane/extra/performance2/WVFSPManager;->receiveJSMessage(J)V

    .line 2
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->pageTracker:Landroid/taobao/windvane/extra/performance2/WVPageTracker;

    invoke-virtual {v0, p1, p2}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onPageReceivedFSP(J)V

    return-void
.end method

.method public receiveJSMessageForTTI(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvh5PPManager:Landroid/taobao/windvane/extra/performance/WVH5PPManager;

    invoke-virtual {v0, p1, p2}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->receiveTTITime(J)V

    .line 2
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->pageTracker:Landroid/taobao/windvane/extra/performance2/WVPageTracker;

    invoke-virtual {v0, p1, p2}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onPageReceivedTTI(J)V

    return-void
.end method

.method public refresh()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->reload()V

    return-void
.end method

.method public reload()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "userAgent"

    .line 2
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/taobao/weaver/prefetch/WMLPrefetch;->getInstance()Lcom/taobao/weaver/prefetch/WMLPrefetch;

    move-result-object v1

    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getCurrentUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/taobao/weaver/prefetch/WMLPrefetch;->prefetchData(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to call prefetch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WVUCWebView"

    invoke-static {v2, v1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 6
    :goto_0
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->reload()V

    return-void
.end method

.method public script2NativeCallback(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mWvNativeCallbackId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mWvNativeCallbackId:I

    .line 2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/taobao/windvane/util/WVNativeCallbackUtil;->putNativeCallbak(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:console.log(\'wvNativeCallback/"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/\'+function(){var s = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; return (typeof s === \'object\' ? JSON.stringify(s) : typeof s === \'string\' ? \'\"\' + s + \'\"\' : s);}())"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public setAllowAllOpen(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mAllowAllOpen:Z

    return-void
.end method

.method public setCachedUrl(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "javascript:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "about:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->cachedUrl:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setCurrentUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->currentUrl:Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setCurrentUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " state : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WVUCWebView"

    invoke-static {p2, p1}, Landroid/taobao/windvane/util/TaoLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDataOnActive(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->dataOnActive:Ljava/lang/String;

    return-void
.end method

.method public setFalcoPageName(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    const-string v0, "WVFalco"

    .line 1
    invoke-virtual {p0, v0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getJsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/windvane/jsbridge/api/WVFalco;

    .line 2
    invoke-virtual {v0, p1}, Landroid/taobao/windvane/jsbridge/api/WVFalco;->setPageName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPageName fail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WVUCWebView"

    invoke-static {v0, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setFalcoSpan(Lcom/taobao/analysis/v3/FalcoSpan;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->containerSpan:Lcom/taobao/analysis/v3/FalcoSpan;

    .line 2
    sget-object v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->sSpanWrapper:Landroid/taobao/windvane/fullspan/SpanWrapper;

    invoke-virtual {v0, p1}, Landroid/taobao/windvane/fullspan/SpanWrapper;->setFalcoSpan(Lcom/taobao/analysis/v3/FalcoSpan;)V

    .line 3
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mSpanWrapper:Landroid/taobao/windvane/fullspan/SpanWrapper;

    invoke-virtual {v0, p1}, Landroid/taobao/windvane/fullspan/SpanWrapper;->setFalcoSpan(Lcom/taobao/analysis/v3/FalcoSpan;)V

    return-void
.end method

.method public setGlobalUrlConfigSwitch(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mUseGlobalUrlConfig:Z

    return-void
.end method

.method protected setOnErrorTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->onErrorTime:J

    return-void
.end method

.method public setOpenTracingContext(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->openTracingContextMap:Ljava/util/Map;

    return-void
.end method

.method public setOuterContext(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->context:Landroid/content/Context;

    instance-of v1, v0, Landroid/content/MutableContextWrapper;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Landroid/content/MutableContextWrapper;

    invoke-virtual {v0, p1}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->context:Landroid/content/Context;

    .line 4
    :goto_0
    invoke-static {}, Landroid/taobao/windvane/extra/core/WVCore;->getInstance()Landroid/taobao/windvane/extra/core/WVCore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/core/WVCore;->isUCSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/content/MutableContextWrapper;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/content/MutableContextWrapper;

    invoke-virtual {v0, p1}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public setPageCacheCapacity(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/uc/webview/export/WebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/uc/webview/export/WebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/webview/export/extension/UCExtension;->getUCSettings()Lcom/uc/webview/export/extension/UCSettings;

    const-string v0, "CachePageNumber"

    .line 3
    invoke-static {v0, p1}, Lcom/uc/webview/export/extension/UCSettings;->setGlobalIntValue(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public setPerformanceDelegate(Landroid/taobao/windvane/extra/performance2/WVPerformance;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->performanceDelegate:Landroid/taobao/windvane/extra/performance2/WVPerformance;

    return-void
.end method

.method public setPid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->pid:Ljava/lang/String;

    return-void
.end method

.method public setPreInitState(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isPreInit:Z

    return-void
.end method

.method public setReportedFSP(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->reportedFSP:Z

    return-void
.end method

.method public setSupportDownload(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->supportDownload:Z

    return-void
.end method

.method public setUrlConfigSwitch(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->useUrlConfig:Z

    return-void
.end method

.method public setUserAgentString(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/uc/webview/export/WebView;->getSettings()Lcom/uc/webview/export/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    return-void
.end method

.method public setWebChromeClient(Lcom/uc/webview/export/WebChromeClient;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;

    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->webChromeClient:Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;

    .line 3
    iput-object p0, v0, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    .line 4
    invoke-super {p0, p1}, Lcom/uc/webview/export/WebView;->setWebChromeClient(Lcom/uc/webview/export/WebChromeClient;)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Landroid/taobao/windvane/webview/WindVaneError;

    const-string v0, "Your WebChromeClient must be extended from WVUCWebChromeClient"

    invoke-direct {p1, v0}, Landroid/taobao/windvane/webview/WindVaneError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setWebViewClient(Lcom/uc/webview/export/WebViewClient;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;

    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->webViewClient:Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;

    .line 3
    invoke-super {p0, p1}, Lcom/uc/webview/export/WebView;->setWebViewClient(Lcom/uc/webview/export/WebViewClient;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Landroid/taobao/windvane/webview/WindVaneError;

    const-string v0, "Your WebViewClient must be extended from WVUCWebViewClient"

    invoke-direct {p1, v0}, Landroid/taobao/windvane/webview/WindVaneError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setWvUIModel(Landroid/taobao/windvane/webview/WVUIModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    return-void
.end method

.method public showLoadingView()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/taobao/windvane/webview/WVUIModel;->showLoadingView()V

    :cond_0
    return-void
.end method

.method public stopLoading()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isStop:Z

    .line 2
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->stopLoading()V

    return-void
.end method
