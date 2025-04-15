.class public abstract Landroid/taobao/windvane/jsbridge/WVApiPlugin;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field public static final REQUEST_MULTI_PICK_PHOTO:I = 0xfa3

.field public static final REQUEST_PICK_PHONE:I = 0xfa3

.field public static final REQUEST_PICK_PHOTO:I = 0xfa2

.field public static final REQUEST_TAKE_PHOTO:I = 0xfa1


# instance fields
.field protected isAlive:Z

.field protected mContext:Landroid/content/Context;

.field protected mWebView:Landroid/taobao/windvane/webview/IWVWebView;

.field protected paramObj:Ljava/lang/Object;

.field protected performance:Landroid/taobao/windvane/extra/performance2/IPerformance;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->isAlive:Z

    return-void
.end method


# virtual methods
.method protected abstract execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
.end method

.method public executeSafe(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WVJsBridge"

    invoke-static {p2, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public getContext()Landroid/content/Context;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->mContext:Landroid/content/Context;

    instance-of v1, v0, Landroid/content/MutableContextWrapper;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Landroid/content/MutableContextWrapper;

    invoke-virtual {v0}, Landroid/content/MutableContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public initialize(Landroid/content/Context;Landroid/taobao/windvane/extra/performance2/IPerformance;Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 6
    iput-object p4, p0, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->paramObj:Ljava/lang/Object;

    .line 7
    iput-object p2, p0, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->performance:Landroid/taobao/windvane/extra/performance2/IPerformance;

    .line 8
    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->initialize(Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public initialize(Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->mContext:Landroid/content/Context;

    .line 2
    iput-object p2, p0, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    return-void
.end method

.method public initialize(Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-virtual {p0, p1, p2}, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->initialize(Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;)V

    return-void
.end method

.method public initialize(Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->initialize(Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/Object;)V

    return-void
.end method

.method public initialize(Landroid/content/Context;Landroid/taobao/windvane/webview/WVWebView;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->initialize(Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/Object;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->isAlive:Z

    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->isAlive:Z

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->isAlive:Z

    return-void
.end method

.method public onScrollChanged(IIII)V
    .locals 0

    return-void
.end method
