.class public abstract Landroid/taobao/windvane/jsbridge/api/WVUploadService;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mWebView:Landroid/taobao/windvane/webview/IWVWebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract doUpload(Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
.end method

.method public initialize(Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVUploadService;->mContext:Landroid/content/Context;

    .line 2
    iput-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVUploadService;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    return-void
.end method
