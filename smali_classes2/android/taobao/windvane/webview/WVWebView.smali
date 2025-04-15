.class public Landroid/taobao/windvane/webview/WVWebView;
.super Landroid/webkit/WebView;
.source "Taobao"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/taobao/windvane/webview/IWVWebView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/windvane/webview/WVWebView$WVDownLoadListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WVWebView"

.field private static evaluateJavascriptSupported:Z


# instance fields
.field private final WVURL_SUFFIX:Ljava/lang/String;

.field public bizCode:Ljava/lang/String;

.field protected context:Landroid/content/Context;

.field private currentUrl:Ljava/lang/String;

.field private dataOnActive:Ljava/lang/String;

.field dx:F

.field dy:F

.field protected entryManager:Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;

.field protected isAlive:Z

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

.field protected mHandler:Landroid/os/Handler;

.field private mImageUrl:Ljava/lang/String;

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mPageLoadedCount:I

.field private mPopupClickListener:Landroid/view/View$OnClickListener;

.field private mPopupController:Landroid/taobao/windvane/view/PopupWindowController;

.field private mPopupMenuTags:[Ljava/lang/String;

.field private mUseGlobalUrlConfig:Z

.field private mWvNativeCallbackId:I

.field private onErrorTime:J

.field protected supportDownload:Z

.field private useUrlConfig:Z

.field protected webChromeClient:Landroid/taobao/windvane/webview/WVWebChromeClient;

.field protected webViewClient:Landroid/taobao/windvane/webview/WVWebViewClient;

.field private wvSecurityFilter:Landroid/taobao/windvane/filter/WVSecurityFilter;

.field private wvSupportFileSchema:Z

.field private wvSupportNativeJs:Z

.field private wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/taobao/windvane/webview/WVWebView;->evaluateJavascriptSupported:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 55
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    .line 56
    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->bizCode:Ljava/lang/String;

    const/16 v0, 0x3e8

    .line 57
    iput v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mWvNativeCallbackId:I

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->longPressSaveImage:Z

    const/4 v1, 0x0

    .line 59
    iput-object v1, p0, Landroid/taobao/windvane/webview/WVWebView;->mHandler:Landroid/os/Handler;

    .line 60
    iput-object v1, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    .line 61
    iput-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->supportDownload:Z

    const/4 v2, 0x0

    .line 62
    iput-boolean v2, p0, Landroid/taobao/windvane/webview/WVWebView;->wvSupportNativeJs:Z

    .line 63
    invoke-static {}, Landroid/taobao/windvane/util/EnvUtil;->isDebug()Z

    move-result v3

    iput-boolean v3, p0, Landroid/taobao/windvane/webview/WVWebView;->wvSupportFileSchema:Z

    .line 64
    iput-object v1, p0, Landroid/taobao/windvane/webview/WVWebView;->currentUrl:Ljava/lang/String;

    .line 65
    iput-object v1, p0, Landroid/taobao/windvane/webview/WVWebView;->dataOnActive:Ljava/lang/String;

    const-string v3, "?wvFackUrlState="

    .line 66
    iput-object v3, p0, Landroid/taobao/windvane/webview/WVWebView;->WVURL_SUFFIX:Ljava/lang/String;

    .line 67
    iput-object v1, p0, Landroid/taobao/windvane/webview/WVWebView;->wvSecurityFilter:Landroid/taobao/windvane/filter/WVSecurityFilter;

    .line 68
    iput-object v1, p0, Landroid/taobao/windvane/webview/WVWebView;->jsPatchListener:Landroid/taobao/windvane/jspatch/WVJsPatchListener;

    .line 69
    iput-object v1, p0, Landroid/taobao/windvane/webview/WVWebView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 70
    iput-boolean v2, p0, Landroid/taobao/windvane/webview/WVWebView;->useUrlConfig:Z

    .line 71
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v3

    invoke-virtual {v3}, Landroid/taobao/windvane/config/GlobalConfig;->isUseGlobalUrlConfig()Z

    move-result v3

    iput-boolean v3, p0, Landroid/taobao/windvane/webview/WVWebView;->mUseGlobalUrlConfig:Z

    .line 72
    iput-boolean v2, p0, Landroid/taobao/windvane/webview/WVWebView;->mAllowAllOpen:Z

    .line 73
    iput v2, p0, Landroid/taobao/windvane/webview/WVWebView;->mPageLoadedCount:I

    const-wide/16 v3, 0x0

    .line 74
    iput-wide v3, p0, Landroid/taobao/windvane/webview/WVWebView;->onErrorTime:J

    .line 75
    iput-object v1, p0, Landroid/taobao/windvane/webview/WVWebView;->mPopupController:Landroid/taobao/windvane/view/PopupWindowController;

    new-array v1, v0, [Ljava/lang/String;

    .line 76
    invoke-static {}, Landroid/taobao/windvane/util/EnvUtil;->isCN()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "\u4fdd\u5b58\u5230\u76f8\u518c"

    goto :goto_0

    :cond_0
    const-string v3, "Save picture to album"

    :goto_0
    aput-object v3, v1, v2

    iput-object v1, p0, Landroid/taobao/windvane/webview/WVWebView;->mPopupMenuTags:[Ljava/lang/String;

    .line 77
    new-instance v1, Landroid/taobao/windvane/webview/WVWebView$2;

    invoke-direct {v1, p0}, Landroid/taobao/windvane/webview/WVWebView$2;-><init>(Landroid/taobao/windvane/webview/WVWebView;)V

    iput-object v1, p0, Landroid/taobao/windvane/webview/WVWebView;->mPopupClickListener:Landroid/view/View$OnClickListener;

    .line 78
    iput-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->isUser:Z

    .line 79
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mEventSparseArray:Landroid/util/SparseArray;

    .line 80
    iput-object p1, p0, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    .line 81
    invoke-direct {p0}, Landroid/taobao/windvane/webview/WVWebView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, ""

    .line 29
    iput-object p2, p0, Landroid/taobao/windvane/webview/WVWebView;->bizCode:Ljava/lang/String;

    const/16 p2, 0x3e8

    .line 30
    iput p2, p0, Landroid/taobao/windvane/webview/WVWebView;->mWvNativeCallbackId:I

    const/4 p2, 0x1

    .line 31
    iput-boolean p2, p0, Landroid/taobao/windvane/webview/WVWebView;->longPressSaveImage:Z

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mHandler:Landroid/os/Handler;

    .line 33
    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    .line 34
    iput-boolean p2, p0, Landroid/taobao/windvane/webview/WVWebView;->supportDownload:Z

    const/4 v1, 0x0

    .line 35
    iput-boolean v1, p0, Landroid/taobao/windvane/webview/WVWebView;->wvSupportNativeJs:Z

    .line 36
    invoke-static {}, Landroid/taobao/windvane/util/EnvUtil;->isDebug()Z

    move-result v2

    iput-boolean v2, p0, Landroid/taobao/windvane/webview/WVWebView;->wvSupportFileSchema:Z

    .line 37
    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->currentUrl:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->dataOnActive:Ljava/lang/String;

    const-string v2, "?wvFackUrlState="

    .line 39
    iput-object v2, p0, Landroid/taobao/windvane/webview/WVWebView;->WVURL_SUFFIX:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->wvSecurityFilter:Landroid/taobao/windvane/filter/WVSecurityFilter;

    .line 41
    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->jsPatchListener:Landroid/taobao/windvane/jspatch/WVJsPatchListener;

    .line 42
    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 43
    iput-boolean v1, p0, Landroid/taobao/windvane/webview/WVWebView;->useUrlConfig:Z

    .line 44
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v2

    invoke-virtual {v2}, Landroid/taobao/windvane/config/GlobalConfig;->isUseGlobalUrlConfig()Z

    move-result v2

    iput-boolean v2, p0, Landroid/taobao/windvane/webview/WVWebView;->mUseGlobalUrlConfig:Z

    .line 45
    iput-boolean v1, p0, Landroid/taobao/windvane/webview/WVWebView;->mAllowAllOpen:Z

    .line 46
    iput v1, p0, Landroid/taobao/windvane/webview/WVWebView;->mPageLoadedCount:I

    const-wide/16 v2, 0x0

    .line 47
    iput-wide v2, p0, Landroid/taobao/windvane/webview/WVWebView;->onErrorTime:J

    .line 48
    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mPopupController:Landroid/taobao/windvane/view/PopupWindowController;

    new-array v0, p2, [Ljava/lang/String;

    .line 49
    invoke-static {}, Landroid/taobao/windvane/util/EnvUtil;->isCN()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "\u4fdd\u5b58\u5230\u76f8\u518c"

    goto :goto_0

    :cond_0
    const-string v2, "Save picture to album"

    :goto_0
    aput-object v2, v0, v1

    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mPopupMenuTags:[Ljava/lang/String;

    .line 50
    new-instance v0, Landroid/taobao/windvane/webview/WVWebView$2;

    invoke-direct {v0, p0}, Landroid/taobao/windvane/webview/WVWebView$2;-><init>(Landroid/taobao/windvane/webview/WVWebView;)V

    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mPopupClickListener:Landroid/view/View$OnClickListener;

    .line 51
    iput-boolean p2, p0, Landroid/taobao/windvane/webview/WVWebView;->isUser:Z

    .line 52
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Landroid/taobao/windvane/webview/WVWebView;->mEventSparseArray:Landroid/util/SparseArray;

    .line 53
    iput-object p1, p0, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    .line 54
    invoke-direct {p0}, Landroid/taobao/windvane/webview/WVWebView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, ""

    .line 2
    iput-object p2, p0, Landroid/taobao/windvane/webview/WVWebView;->bizCode:Ljava/lang/String;

    const/16 p2, 0x3e8

    .line 3
    iput p2, p0, Landroid/taobao/windvane/webview/WVWebView;->mWvNativeCallbackId:I

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, Landroid/taobao/windvane/webview/WVWebView;->longPressSaveImage:Z

    const/4 p3, 0x0

    .line 5
    iput-object p3, p0, Landroid/taobao/windvane/webview/WVWebView;->mHandler:Landroid/os/Handler;

    .line 6
    iput-object p3, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    .line 7
    iput-boolean p2, p0, Landroid/taobao/windvane/webview/WVWebView;->supportDownload:Z

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->wvSupportNativeJs:Z

    .line 9
    invoke-static {}, Landroid/taobao/windvane/util/EnvUtil;->isDebug()Z

    move-result v1

    iput-boolean v1, p0, Landroid/taobao/windvane/webview/WVWebView;->wvSupportFileSchema:Z

    .line 10
    iput-object p3, p0, Landroid/taobao/windvane/webview/WVWebView;->currentUrl:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Landroid/taobao/windvane/webview/WVWebView;->dataOnActive:Ljava/lang/String;

    const-string v1, "?wvFackUrlState="

    .line 12
    iput-object v1, p0, Landroid/taobao/windvane/webview/WVWebView;->WVURL_SUFFIX:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Landroid/taobao/windvane/webview/WVWebView;->wvSecurityFilter:Landroid/taobao/windvane/filter/WVSecurityFilter;

    .line 14
    iput-object p3, p0, Landroid/taobao/windvane/webview/WVWebView;->jsPatchListener:Landroid/taobao/windvane/jspatch/WVJsPatchListener;

    .line 15
    iput-object p3, p0, Landroid/taobao/windvane/webview/WVWebView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 16
    iput-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->useUrlConfig:Z

    .line 17
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v1

    invoke-virtual {v1}, Landroid/taobao/windvane/config/GlobalConfig;->isUseGlobalUrlConfig()Z

    move-result v1

    iput-boolean v1, p0, Landroid/taobao/windvane/webview/WVWebView;->mUseGlobalUrlConfig:Z

    .line 18
    iput-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mAllowAllOpen:Z

    .line 19
    iput v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mPageLoadedCount:I

    const-wide/16 v1, 0x0

    .line 20
    iput-wide v1, p0, Landroid/taobao/windvane/webview/WVWebView;->onErrorTime:J

    .line 21
    iput-object p3, p0, Landroid/taobao/windvane/webview/WVWebView;->mPopupController:Landroid/taobao/windvane/view/PopupWindowController;

    new-array p3, p2, [Ljava/lang/String;

    .line 22
    invoke-static {}, Landroid/taobao/windvane/util/EnvUtil;->isCN()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "\u4fdd\u5b58\u5230\u76f8\u518c"

    goto :goto_0

    :cond_0
    const-string v1, "Save picture to album"

    :goto_0
    aput-object v1, p3, v0

    iput-object p3, p0, Landroid/taobao/windvane/webview/WVWebView;->mPopupMenuTags:[Ljava/lang/String;

    .line 23
    new-instance p3, Landroid/taobao/windvane/webview/WVWebView$2;

    invoke-direct {p3, p0}, Landroid/taobao/windvane/webview/WVWebView$2;-><init>(Landroid/taobao/windvane/webview/WVWebView;)V

    iput-object p3, p0, Landroid/taobao/windvane/webview/WVWebView;->mPopupClickListener:Landroid/view/View$OnClickListener;

    .line 24
    iput-boolean p2, p0, Landroid/taobao/windvane/webview/WVWebView;->isUser:Z

    .line 25
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Landroid/taobao/windvane/webview/WVWebView;->mEventSparseArray:Landroid/util/SparseArray;

    .line 26
    iput-object p1, p0, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    .line 27
    invoke-direct {p0}, Landroid/taobao/windvane/webview/WVWebView;->init()V

    return-void
.end method

.method static synthetic access$000(Landroid/taobao/windvane/webview/WVWebView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/taobao/windvane/webview/WVWebView;->longPressSaveImage:Z

    return p0
.end method

.method static synthetic access$100(Landroid/taobao/windvane/webview/WVWebView;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/taobao/windvane/webview/WVWebView;->mImageUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Landroid/taobao/windvane/webview/WVWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/webview/WVWebView;->mImageUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Landroid/taobao/windvane/webview/WVWebView;)Landroid/taobao/windvane/view/PopupWindowController;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/taobao/windvane/webview/WVWebView;->mPopupController:Landroid/taobao/windvane/view/PopupWindowController;

    return-object p0
.end method

.method static synthetic access$202(Landroid/taobao/windvane/webview/WVWebView;Landroid/taobao/windvane/view/PopupWindowController;)Landroid/taobao/windvane/view/PopupWindowController;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/webview/WVWebView;->mPopupController:Landroid/taobao/windvane/view/PopupWindowController;

    return-object p1
.end method

.method static synthetic access$300(Landroid/taobao/windvane/webview/WVWebView;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/taobao/windvane/webview/WVWebView;->mPopupMenuTags:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Landroid/taobao/windvane/webview/WVWebView;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/taobao/windvane/webview/WVWebView;->mPopupClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method private init()V
    .locals 8

    .line 1
    invoke-static {}, Landroid/taobao/windvane/util/EnvUtil;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v0

    const/16 v1, 0xbc0

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/service/WVEventService;->onEvent(I)Landroid/taobao/windvane/service/WVEventResult;

    .line 3
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mHandler:Landroid/os/Handler;

    .line 4
    new-instance v0, Landroid/taobao/windvane/webview/WVWebViewClient;

    iget-object v1, p0, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/taobao/windvane/webview/WVWebViewClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->webViewClient:Landroid/taobao/windvane/webview/WVWebViewClient;

    .line 5
    invoke-super {p0, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 6
    new-instance v0, Landroid/taobao/windvane/webview/WVWebChromeClient;

    iget-object v1, p0, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/taobao/windvane/webview/WVWebChromeClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->webChromeClient:Landroid/taobao/windvane/webview/WVWebChromeClient;

    .line 7
    invoke-super {p0, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 8
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->webChromeClient:Landroid/taobao/windvane/webview/WVWebChromeClient;

    iput-object p0, v0, Landroid/taobao/windvane/webview/WVWebChromeClient;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 10
    invoke-virtual {p0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 11
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 12
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_1

    .line 13
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    invoke-virtual {v3, p0, v2}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 14
    :cond_1
    iget-object v3, p0, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/taobao/windvane/webview/WVRenderPolicy;->disableAccessibility(Landroid/content/Context;)V

    .line 15
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    .line 16
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 17
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 18
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v4

    invoke-virtual {v4}, Landroid/taobao/windvane/config/GlobalConfig;->getAppTag()Ljava/lang/String;

    move-result-object v4

    .line 19
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v5

    invoke-virtual {v5}, Landroid/taobao/windvane/config/GlobalConfig;->getAppVersion()Ljava/lang/String;

    move-result-object v5

    .line 20
    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 21
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 22
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " AliApp("

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    :cond_2
    const-string v4, "TTID/"

    .line 23
    invoke-virtual {v6, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v4

    invoke-virtual {v4}, Landroid/taobao/windvane/config/GlobalConfig;->getTtid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 24
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " TTID/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v5

    invoke-virtual {v5}, Landroid/taobao/windvane/config/GlobalConfig;->getTtid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 25
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " WindVane/8.5.0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    const/4 v4, -0x1

    .line 26
    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    const/4 v4, 0x5

    if-lt v1, v4, :cond_4

    .line 27
    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 28
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/data/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/databases"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 29
    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 31
    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    :cond_4
    const/4 v4, 0x7

    if-lt v1, v4, :cond_5

    .line 32
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 33
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 34
    iget-object v4, p0, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 35
    iget-object v4, p0, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 36
    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    :cond_5
    const/16 v4, 0x12

    if-ge v1, v4, :cond_6

    .line 37
    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    :cond_6
    const/16 v4, 0xe

    if-lt v1, v4, :cond_7

    const/16 v4, 0x64

    .line 38
    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    goto :goto_0

    .line 39
    :cond_7
    sget-object v4, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    .line 40
    :goto_0
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v3

    if-eqz v3, :cond_8

    const/16 v3, 0x13

    if-lt v1, v3, :cond_8

    .line 41
    invoke-static {v2}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 42
    :cond_8
    invoke-static {}, Landroid/taobao/windvane/jsbridge/WVJsBridge;->getInstance()Landroid/taobao/windvane/jsbridge/WVJsBridge;

    move-result-object v3

    invoke-virtual {v3}, Landroid/taobao/windvane/jsbridge/WVJsBridge;->init()V

    .line 43
    new-instance v3, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;

    iget-object v4, p0, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    invoke-direct {v3, v4, p0}, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;-><init>(Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;)V

    iput-object v3, p0, Landroid/taobao/windvane/webview/WVWebView;->entryManager:Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;

    .line 44
    new-instance v3, Landroid/taobao/windvane/jsbridge/WVAppEvent;

    invoke-direct {v3}, Landroid/taobao/windvane/jsbridge/WVAppEvent;-><init>()V

    .line 45
    iget-object v4, p0, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    invoke-virtual {v3, v4, p0}, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->initialize(Landroid/content/Context;Landroid/taobao/windvane/webview/WVWebView;)V

    const-string v4, "AppEvent"

    .line 46
    invoke-virtual {p0, v4, v3}, Landroid/taobao/windvane/webview/WVWebView;->addJsObject(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v3, 0xa

    if-le v1, v3, :cond_9

    const/16 v3, 0x11

    if-ge v1, v3, :cond_9

    :try_start_0
    const-string/jumbo v1, "searchBoxJavaBridge_"

    .line 47
    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v1, "accessibility"

    .line 48
    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v1, "accessibilityTraversal"

    .line 49
    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 50
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    :cond_9
    :goto_1
    new-instance v1, Landroid/taobao/windvane/filter/WVSecurityFilter;

    invoke-direct {v1}, Landroid/taobao/windvane/filter/WVSecurityFilter;-><init>()V

    iput-object v1, p0, Landroid/taobao/windvane/webview/WVWebView;->wvSecurityFilter:Landroid/taobao/windvane/filter/WVSecurityFilter;

    .line 52
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v1

    iget-object v3, p0, Landroid/taobao/windvane/webview/WVWebView;->wvSecurityFilter:Landroid/taobao/windvane/filter/WVSecurityFilter;

    sget v4, Landroid/taobao/windvane/service/WVEventService;->WV_FORWARD_EVENT:I

    invoke-virtual {v1, v3, v4}, Landroid/taobao/windvane/service/WVEventService;->addEventListener(Landroid/taobao/windvane/service/WVEventListener;I)V

    .line 53
    new-instance v1, Landroid/taobao/windvane/jspatch/WVJsPatchListener;

    invoke-direct {v1, p0}, Landroid/taobao/windvane/jspatch/WVJsPatchListener;-><init>(Landroid/taobao/windvane/webview/IWVWebView;)V

    iput-object v1, p0, Landroid/taobao/windvane/webview/WVWebView;->jsPatchListener:Landroid/taobao/windvane/jspatch/WVJsPatchListener;

    .line 54
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v1

    iget-object v3, p0, Landroid/taobao/windvane/webview/WVWebView;->jsPatchListener:Landroid/taobao/windvane/jspatch/WVJsPatchListener;

    sget v4, Landroid/taobao/windvane/service/WVEventService;->WV_BACKWARD_EVENT:I

    invoke-virtual {v1, v3, v4}, Landroid/taobao/windvane/service/WVEventService;->addEventListener(Landroid/taobao/windvane/service/WVEventListener;I)V

    .line 55
    sget-object v1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-boolean v1, v1, Landroid/taobao/windvane/config/WVCommonConfigData;->enableSamsungClipboard:Z

    if-eqz v1, :cond_b

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-le v1, v3, :cond_b

    const/16 v3, 0x1d

    if-ge v1, v3, :cond_b

    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string/jumbo v3, "samsung"

    .line 56
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 57
    :try_start_1
    iget-object v1, p0, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    const-string v3, "clipboard"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    if-eqz v1, :cond_b

    .line 58
    invoke-static {v1}, Lcom/alibaba/wireless/security/aopsdk/replace/android/content/ClipboardManager;->getPrimaryClip(Landroid/content/ClipboardManager;)Landroid/content/ClipData;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, ""

    const-string/jumbo v5, "\u521d\u59cb\u5316"

    if-nez v3, :cond_a

    .line 59
    :try_start_2
    invoke-static {v5, v4}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    goto :goto_2

    :cond_a
    const-string v6, "intent:#Intent;S.K_1171477665=;end"

    .line 60
    invoke-virtual {v3, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    iget-object v3, p0, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 61
    invoke-static {v5, v4}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    nop

    .line 62
    :cond_b
    :goto_2
    new-instance v0, Landroid/taobao/windvane/webview/WVUIModel;

    iget-object v1, p0, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/taobao/windvane/webview/WVUIModel;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    .line 63
    new-instance v0, Landroid/taobao/windvane/webview/WVWebView$1;

    invoke-direct {v0, p0}, Landroid/taobao/windvane/webview/WVWebView$1;-><init>(Landroid/taobao/windvane/webview/WVWebView;)V

    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 64
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 65
    new-instance v0, Landroid/taobao/windvane/webview/WVWebView$WVDownLoadListener;

    invoke-direct {v0, p0}, Landroid/taobao/windvane/webview/WVWebView$WVDownLoadListener;-><init>(Landroid/taobao/windvane/webview/WVWebView;)V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 66
    invoke-static {}, Landroid/taobao/windvane/webview/WVTweakWebCoreHandler;->tryTweakWebCoreHandler()V

    .line 67
    iput-boolean v2, p0, Landroid/taobao/windvane/webview/WVWebView;->isAlive:Z

    .line 68
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getPackageMonitorInterface()Landroid/taobao/windvane/monitor/WVPackageMonitorInterface;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 70
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getPerformanceMonitor()Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface;->didWebViewInitAtTime(J)V

    .line 71
    :cond_c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_d

    invoke-static {}, Landroid/taobao/windvane/webview/WVRenderPolicy;->shouldDisableHardwareRenderInLayer()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    .line 72
    :try_start_3
    invoke-virtual {p0, v2, v0}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 74
    :cond_d
    :goto_3
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVBridgeEngine;

    invoke-direct {v0, p0}, Landroid/taobao/windvane/jsbridge/WVBridgeEngine;-><init>(Landroid/taobao/windvane/webview/IWVWebView;)V

    const-string v1, "__windvane__"

    invoke-virtual {p0, v0, v1}, Landroid/taobao/windvane/webview/WVWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public _getContext()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public _post(Ljava/lang/Runnable;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/webkit/WebView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    const-string v0, "WVWebView"

    const-string v1, " webview has not attach to window"

    .line 2
    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v0, Landroid/taobao/windvane/webview/IWVWebView;->taskQueue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    const-string v0, "accessibility"

    .line 1
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "accessibilityTraversal"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->wvSupportNativeJs:Z

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_1

    const-string p1, "WVWebView"

    const-string p2, "addJavascriptInterface is disabled before API level 17 for security reason."

    .line 3
    invoke-static {p1, p2}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public addJsObject(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->entryManager:Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->addEntry(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public allowAllOpen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mAllowAllOpen:Z

    return v0
.end method

.method public back()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/taobao/windvane/webview/WVWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/webkit/WebView;->goBack()V

    .line 3
    iget v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mPageLoadedCount:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    sub-int/2addr v0, v1

    .line 4
    iput v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mPageLoadedCount:I

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "back pressed, mPageLoadedCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/taobao/windvane/webview/WVWebView;->mPageLoadedCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WVWebView"

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
    invoke-super {p0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public canUseGlobalUrlConfig()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mUseGlobalUrlConfig:Z

    return v0
.end method

.method public canUseUrlConfig()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->useUrlConfig:Z

    return v0
.end method

.method public clearCache()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-super {p0, v0}, Landroid/webkit/WebView;->clearCache(Z)V

    return-void
.end method

.method public closeLongPressSaveImage()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->longPressSaveImage:Z

    return-void
.end method

.method public destroy()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->isAlive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->isAlive:Z

    .line 3
    iput v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mPageLoadedCount:I

    .line 4
    iget-object v1, p0, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 5
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/webkit/WebView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    const/4 v0, 0x0

    .line 7
    invoke-super {p0, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 8
    invoke-super {p0, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 9
    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->webViewClient:Landroid/taobao/windvane/webview/WVWebViewClient;

    .line 10
    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->webChromeClient:Landroid/taobao/windvane/webview/WVWebChromeClient;

    .line 11
    invoke-static {}, Landroid/taobao/windvane/jsbridge/WVJsBridge;->getInstance()Landroid/taobao/windvane/jsbridge/WVJsBridge;

    move-result-object v1

    invoke-virtual {v1}, Landroid/taobao/windvane/jsbridge/WVJsBridge;->tryToRunTailBridges()V

    .line 12
    iget-object v1, p0, Landroid/taobao/windvane/webview/WVWebView;->entryManager:Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;

    invoke-virtual {v1}, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->onDestroy()V

    .line 13
    iget-object v1, p0, Landroid/taobao/windvane/webview/WVWebView;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 14
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 15
    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mHandler:Landroid/os/Handler;

    .line 16
    :cond_2
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v1

    const/16 v2, 0xbbb

    invoke-virtual {v1, v2}, Landroid/taobao/windvane/service/WVEventService;->onEvent(I)Landroid/taobao/windvane/service/WVEventResult;

    .line 17
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v1

    iget-object v2, p0, Landroid/taobao/windvane/webview/WVWebView;->wvSecurityFilter:Landroid/taobao/windvane/filter/WVSecurityFilter;

    invoke-virtual {v1, v2}, Landroid/taobao/windvane/service/WVEventService;->removeEventListener(Landroid/taobao/windvane/service/WVEventListener;)V

    .line 18
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v1

    iget-object v2, p0, Landroid/taobao/windvane/webview/WVWebView;->jsPatchListener:Landroid/taobao/windvane/jspatch/WVJsPatchListener;

    invoke-virtual {v1, v2}, Landroid/taobao/windvane/service/WVEventService;->removeEventListener(Landroid/taobao/windvane/service/WVEventListener;)V

    .line 19
    invoke-virtual {p0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 20
    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mPopupController:Landroid/taobao/windvane/view/PopupWindowController;

    .line 21
    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mPopupClickListener:Landroid/view/View$OnClickListener;

    .line 22
    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 23
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 24
    sget-object v0, Landroid/taobao/windvane/webview/IWVWebView;->JsbridgeHis:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_3

    .line 25
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 26
    :cond_3
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public evaluateJavascript(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/taobao/windvane/webview/WVWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

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

    const-string v0, "javascript:"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_0

    const/16 v2, 0xb

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 4
    :cond_0
    sget-boolean v2, Landroid/taobao/windvane/webview/WVWebView;->evaluateJavascriptSupported:Z

    if-eqz v2, :cond_1

    .line 5
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    sput-boolean v1, Landroid/taobao/windvane/webview/WVWebView;->evaluateJavascriptSupported:Z

    .line 7
    invoke-virtual {p0, p1, p2}, Landroid/taobao/windvane/webview/WVWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 8
    :catch_1
    sput-boolean v1, Landroid/taobao/windvane/webview/WVWebView;->evaluateJavascriptSupported:Z

    .line 9
    invoke-virtual {p0, p1, p2}, Landroid/taobao/windvane/webview/WVWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/taobao/windvane/webview/WVWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/taobao/windvane/webview/WVWebView;->script2NativeCallback(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :goto_0
    return-void
.end method

.method public fireEvent(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "{}"

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/taobao/windvane/webview/WVWebView;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroid/taobao/windvane/webview/WVWebView;->getWVCallBackContext()Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getContentHeight()I
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-super {p0}, Landroid/webkit/WebView;->getScale()F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getCurrentUrl()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WVWebView"

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUrl by currentUrl: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/taobao/windvane/webview/WVWebView;->currentUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->currentUrl:Ljava/lang/String;

    return-object v0

    .line 4
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUrl by webview: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/windvane/util/TaoLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDataOnActive()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->dataOnActive:Ljava/lang/String;

    return-object v0
.end method

.method public getJsObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->entryManager:Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->getEntry(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getPageLoadedCount()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mPageLoadedCount:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/taobao/windvane/webview/WVWebView;->getCurrentUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserAgentString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getWVCallBackContext()Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-direct {v0, p0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;-><init>(Landroid/taobao/windvane/webview/IWVWebView;)V

    return-object v0
.end method

.method public getWVHandler()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getWvUIModel()Landroid/taobao/windvane/webview/WVUIModel;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    return v0

    .line 2
    :pswitch_0
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    invoke-static {}, Landroid/taobao/windvane/util/EnvUtil;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u56fe\u7247\u4fdd\u5b58\u5230\u76f8\u518c\u5931\u8d25"

    goto :goto_0

    :cond_0
    const-string v0, "Failed to save picture"

    :goto_0
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v1

    .line 3
    :pswitch_1
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    invoke-static {}, Landroid/taobao/windvane/util/EnvUtil;->isCN()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "\u56fe\u7247\u4fdd\u5b58\u5230\u76f8\u518c\u6210\u529f"

    goto :goto_1

    :cond_1
    const-string v0, "Success to save picture"

    :goto_1
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v1

    .line 4
    :pswitch_2
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {p1}, Landroid/taobao/windvane/webview/WVUIModel;->isShowLoading()Z

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_3

    .line 5
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    invoke-virtual {p1}, Landroid/taobao/windvane/webview/WVUIModel;->hideLoadingView()V

    :cond_3
    return v1

    .line 6
    :pswitch_3
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    invoke-virtual {p1}, Landroid/taobao/windvane/webview/WVUIModel;->loadErrorPage()V

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/taobao/windvane/webview/WVWebView;->onErrorTime:J

    .line 8
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    :cond_4
    invoke-virtual {p1}, Landroid/taobao/windvane/webview/WVUIModel;->isShowLoading()Z

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_5

    .line 9
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    invoke-virtual {p1}, Landroid/taobao/windvane/webview/WVUIModel;->hideLoadingView()V

    :cond_5
    return v1

    .line 10
    :pswitch_4
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    :cond_6
    invoke-virtual {p1}, Landroid/taobao/windvane/webview/WVUIModel;->isShowLoading()Z

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_7

    .line 11
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    invoke-virtual {p1}, Landroid/taobao/windvane/webview/WVUIModel;->hideLoadingView()V

    .line 12
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    invoke-virtual {p1}, Landroid/taobao/windvane/webview/WVUIModel;->resetNaviBar()V

    .line 13
    :cond_7
    iget-wide v2, p0, Landroid/taobao/windvane/webview/WVWebView;->onErrorTime:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-eqz p1, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/taobao/windvane/webview/WVWebView;->onErrorTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xbb8

    cmp-long p1, v2, v4

    if-lez p1, :cond_8

    .line 14
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    invoke-virtual {p1}, Landroid/taobao/windvane/webview/WVUIModel;->hideErrorPage()V

    :cond_8
    return v1

    .line 15
    :pswitch_5
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    if-eqz p1, :cond_9

    const/4 v0, 0x1

    :cond_9
    invoke-virtual {p1}, Landroid/taobao/windvane/webview/WVUIModel;->isShowLoading()Z

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_a

    .line 16
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    invoke-virtual {p1}, Landroid/taobao/windvane/webview/WVUIModel;->showLoadingView()V

    .line 17
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    invoke-virtual {p1, v1}, Landroid/taobao/windvane/webview/WVUIModel;->switchNaviBar(I)V

    .line 18
    :cond_a
    iget p1, p0, Landroid/taobao/windvane/webview/WVWebView;->mPageLoadedCount:I

    add-int/2addr p1, v1

    iput p1, p0, Landroid/taobao/windvane/webview/WVWebView;->mPageLoadedCount:I

    return v1

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
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/taobao/windvane/webview/WVUIModel;->hideLoadingView()V

    :cond_0
    return-void
.end method

.method public isAlive()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->isAlive:Z

    return v0
.end method

.method public isSupportFileSchema()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->wvSupportFileSchema:Z

    return v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->isAlive:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->isAlive:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadDataWithBaseURL: baseUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WVWebView"

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->isAlive:Z

    if-eqz v0, :cond_7

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-static {p1}, Landroid/taobao/windvane/util/WVUrlUtil;->isCommonUrl(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "WVWebView"

    if-eqz v0, :cond_2

    invoke-static {p1, p0}, Landroid/taobao/windvane/config/WVServerConfig;->isBlackUrl(Ljava/lang/String;Landroid/taobao/windvane/webview/IWVWebView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-static {}, Landroid/taobao/windvane/config/WVURLConfig;->getInstance()Landroid/taobao/windvane/config/WVURLConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/config/WVURLConfig;->getForbiddenDomainRedirectURL()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "cause"

    const-string v2, "GET_ACCESS_FORBIDDEN"

    .line 6
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "url"

    .line 7
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x192

    .line 8
    invoke-virtual {p0, p1, v0}, Landroid/taobao/windvane/webview/WVWebView;->onMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_1
    :try_start_0
    invoke-super {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 11
    :cond_2
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    invoke-static {p1, v0, p0}, Landroid/taobao/windvane/webview/WVURLFilter;->doFilter(Ljava/lang/String;Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadUrl filter url="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 13
    :cond_3
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v0

    const/16 v2, 0xbc2

    invoke-virtual {v0, v2}, Landroid/taobao/windvane/service/WVEventService;->onEvent(I)Landroid/taobao/windvane/service/WVEventResult;

    .line 14
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadUrl: url="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_4
    invoke-static {}, Landroid/taobao/windvane/webview/WVSchemeInterceptService;->getWVSchemeIntercepter()Landroid/taobao/windvane/webview/WVSchemeIntercepterInterface;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 17
    invoke-interface {v0, p1}, Landroid/taobao/windvane/webview/WVSchemeIntercepterInterface;->dealUrlScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 18
    :cond_5
    :try_start_1
    invoke-static {}, Landroid/taobao/windvane/urlintercept/WVURLInterceptService;->getWVABTestHandler()Landroid/taobao/windvane/urlintercept/WVABTestUrlHandler;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {p1}, Landroid/taobao/windvane/util/WVUrlUtil;->shouldTryABTest(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 19
    invoke-static {}, Landroid/taobao/windvane/urlintercept/WVURLInterceptService;->getWVABTestHandler()Landroid/taobao/windvane/urlintercept/WVABTestUrlHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/taobao/windvane/urlintercept/WVABTestUrlHandler;->toABTestUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " abTestUrl to : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    .line 22
    :cond_6
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 24
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->isAlive:Z

    if-eqz v0, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 25
    :cond_0
    invoke-static {p1}, Landroid/taobao/windvane/util/WVUrlUtil;->isCommonUrl(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "WVWebView"

    if-eqz v0, :cond_2

    invoke-static {p1, p0}, Landroid/taobao/windvane/config/WVServerConfig;->isBlackUrl(Ljava/lang/String;Landroid/taobao/windvane/webview/IWVWebView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26
    invoke-static {}, Landroid/taobao/windvane/config/WVURLConfig;->getInstance()Landroid/taobao/windvane/config/WVURLConfig;

    move-result-object p2

    invoke-virtual {p2}, Landroid/taobao/windvane/config/WVURLConfig;->getForbiddenDomainRedirectURL()Ljava/lang/String;

    move-result-object p2

    .line 27
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    new-instance p2, Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-direct {p2, v0}, Ljava/util/HashMap;-><init>(I)V

    const-string v0, "cause"

    const-string v1, "GET_ACCESS_FORBIDDEN"

    .line 29
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "url"

    .line 30
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x192

    .line 31
    invoke-virtual {p0, p1, p2}, Landroid/taobao/windvane/webview/WVWebView;->onMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 32
    :cond_1
    :try_start_0
    invoke-super {p0, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 34
    :cond_2
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    invoke-static {p1, v0, p0}, Landroid/taobao/windvane/webview/WVURLFilter;->doFilter(Ljava/lang/String;Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 35
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loadUrl filter url="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 36
    :cond_3
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadUrl with headers: url="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->entryManager:Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1
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

    .line 2
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Landroid/taobao/windvane/webview/IWVWebView;->taskQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    .line 2
    sget-object v0, Landroid/taobao/windvane/webview/IWVWebView;->taskQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public onMessage(ILjava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3
    iput p1, v0, Landroid/os/Message;->what:I

    .line 4
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVWebView;->mHandler:Landroid/os/Handler;

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
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->entryManager:Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->onPause()V

    .line 3
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 4
    invoke-super {p0}, Landroid/webkit/WebView;->onPause()V

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
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->entryManager:Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->onResume()V

    .line 3
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 4
    invoke-super {p0}, Landroid/webkit/WebView;->onResume()V

    .line 5
    :cond_1
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v0

    const/16 v1, 0xbba

    invoke-virtual {p0}, Landroid/taobao/windvane/webview/WVWebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p0, v2, v3}, Landroid/taobao/windvane/service/WVEventService;->onEvent(ILandroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->entryManager:Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->onScrollChanged(IIII)V

    .line 3
    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V
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

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
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

    iput v0, p0, Landroid/taobao/windvane/webview/WVWebView;->dx:F

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/taobao/windvane/webview/WVWebView;->dy:F

    .line 5
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->isUser:Z

    if-nez v0, :cond_3

    .line 6
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mEventSparseArray:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return v2

    :cond_0
    const/4 v3, 0x2

    const/high16 v4, 0x40a00000    # 5.0f

    if-ne v0, v3, :cond_1

    .line 7
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->isUser:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Landroid/taobao/windvane/webview/WVWebView;->dy:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_3

    return v2

    :cond_1
    if-ne v0, v2, :cond_3

    .line 8
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->isUser:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Landroid/taobao/windvane/webview/WVWebView;->dy:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    .line 9
    iput-boolean v2, p0, Landroid/taobao/windvane/webview/WVWebView;->isUser:Z

    return v2

    .line 10
    :cond_2
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mEventSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    if-eqz v0, :cond_3

    .line 11
    invoke-super {p0, v0}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 12
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 13
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mEventSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 14
    :cond_3
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public openLongPressSaveImage()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->longPressSaveImage:Z

    return-void
.end method

.method public pauseTimers()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/webkit/WebView;->pauseTimers()V

    .line 2
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WVWebView"

    const-string v1, "You  must be careful  to Call pauseTimers ,It\'s Global"

    .line 3
    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->isAlive:Z

    if-eqz v0, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-static {p1}, Landroid/taobao/windvane/util/WVUrlUtil;->isCommonUrl(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "WVWebView"

    if-eqz v0, :cond_2

    invoke-static {p1, p0}, Landroid/taobao/windvane/config/WVServerConfig;->isBlackUrl(Ljava/lang/String;Landroid/taobao/windvane/webview/IWVWebView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-static {}, Landroid/taobao/windvane/config/WVURLConfig;->getInstance()Landroid/taobao/windvane/config/WVURLConfig;

    move-result-object p2

    invoke-virtual {p2}, Landroid/taobao/windvane/config/WVURLConfig;->getForbiddenDomainRedirectURL()Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    new-instance p2, Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-direct {p2, v0}, Ljava/util/HashMap;-><init>(I)V

    const-string v0, "cause"

    const-string v1, "POST_ACCESS_FORBIDDEN"

    .line 6
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "url"

    .line 7
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x192

    .line 8
    invoke-virtual {p0, p1, p2}, Landroid/taobao/windvane/webview/WVWebView;->onMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_1
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/taobao/windvane/webview/WVWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 11
    :cond_2
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    invoke-static {p1, v0, p0}, Landroid/taobao/windvane/webview/WVURLFilter;->doFilter(Ljava/lang/String;Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loadUrl filter url="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 13
    :cond_3
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "postUrl: url="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    :cond_5
    :goto_1
    return-void
.end method

.method public refresh()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/taobao/windvane/webview/WVWebView;->reload()V

    return-void
.end method

.method public reload()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/webkit/WebView;->reload()V

    return-void
.end method

.method public resumeTimers()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/webkit/WebView;->resumeTimers()V

    .line 2
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WVWebView"

    const-string v1, "You  must be careful  to Call resumeTimers ,It\'s Global"

    .line 3
    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
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
    iget v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mWvNativeCallbackId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mWvNativeCallbackId:I

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
    invoke-virtual {p0, p1}, Landroid/taobao/windvane/webview/WVWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public setAllowAllOpen(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/taobao/windvane/webview/WVWebView;->mAllowAllOpen:Z

    return-void
.end method

.method public setCurrentUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/webview/WVWebView;->currentUrl:Ljava/lang/String;

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

    const-string p2, "WVWebView"

    invoke-static {p2, p1}, Landroid/taobao/windvane/util/TaoLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDataOnActive(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/webview/WVWebView;->dataOnActive:Ljava/lang/String;

    return-void
.end method

.method public setGlobalUrlConfigSwitch(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/taobao/windvane/webview/WVWebView;->mUseGlobalUrlConfig:Z

    return-void
.end method

.method public setSupportDownload(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/taobao/windvane/webview/WVWebView;->supportDownload:Z

    return-void
.end method

.method public setSupportFileSchema(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/taobao/windvane/webview/WVWebView;->wvSupportFileSchema:Z

    return-void
.end method

.method public setUrlConfigSwitch(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/taobao/windvane/webview/WVWebView;->useUrlConfig:Z

    return-void
.end method

.method public setUserAgentString(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/taobao/windvane/webview/WVWebChromeClient;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Landroid/taobao/windvane/webview/WVWebChromeClient;

    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->webChromeClient:Landroid/taobao/windvane/webview/WVWebChromeClient;

    .line 3
    iput-object p0, v0, Landroid/taobao/windvane/webview/WVWebChromeClient;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    .line 4
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->webChromeClient:Landroid/taobao/windvane/webview/WVWebChromeClient;

    if-eqz v0, :cond_1

    .line 6
    iput-object p1, v0, Landroid/taobao/windvane/webview/WVWebChromeClient;->extraWebChromeClient:Landroid/webkit/WebChromeClient;

    :cond_1
    :goto_0
    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/taobao/windvane/webview/WVWebViewClient;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Landroid/taobao/windvane/webview/WVWebViewClient;

    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->webViewClient:Landroid/taobao/windvane/webview/WVWebViewClient;

    .line 3
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->webViewClient:Landroid/taobao/windvane/webview/WVWebViewClient;

    if-eqz v0, :cond_1

    .line 5
    iput-object p1, v0, Landroid/taobao/windvane/webview/WVWebViewClient;->extraWebViewClient:Landroid/webkit/WebViewClient;

    :cond_1
    :goto_0
    return-void
.end method

.method public showLoadingView()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/taobao/windvane/webview/WVUIModel;->showLoadingView()V

    :cond_0
    return-void
.end method

.method public superLoadUrl(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->isAlive:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public supportJavascriptInterface(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/taobao/windvane/webview/WVWebView;->wvSupportNativeJs:Z

    return-void
.end method
