.class public Landroid/taobao/windvane/jspatch/WVJsPatchListener;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/taobao/windvane/service/WVEventListener;


# instance fields
.field private webviewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/taobao/windvane/webview/IWVWebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/taobao/windvane/webview/IWVWebView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/taobao/windvane/jspatch/WVJsPatchListener;->webviewReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public varargs onEvent(ILandroid/taobao/windvane/service/WVEventContext;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;
    .locals 2

    const/16 p2, 0xbbe

    const-string v0, "WVJsPatchListener is free"

    const-string v1, "WVJsPatchListener"

    if-eq p1, p2, :cond_2

    const/16 p2, 0xbc6

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Landroid/taobao/windvane/jspatch/WVJsPatchListener;->webviewReference:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_4

    .line 2
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/taobao/windvane/webview/IWVWebView;

    if-eqz p1, :cond_1

    :try_start_0
    const-string p2, "WV.Event.APP.TakeScreenshot"

    const-string/jumbo p3, "{}"

    .line 3
    invoke-interface {p1, p2, p3}, Landroid/taobao/windvane/webview/IWVWebView;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 5
    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object p1, p0, Landroid/taobao/windvane/jspatch/WVJsPatchListener;->webviewReference:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_4

    .line 7
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/taobao/windvane/webview/IWVWebView;

    if-eqz p1, :cond_3

    const/4 p2, 0x0

    .line 8
    :try_start_1
    aget-object p2, p3, p2

    check-cast p2, Ljava/lang/String;

    const/4 v0, 0x1

    .line 9
    aget-object p3, p3, v0

    check-cast p3, Ljava/lang/String;

    .line 10
    invoke-interface {p1, p2, p3}, Landroid/taobao/windvane/webview/IWVWebView;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 11
    :cond_3
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 12
    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :catch_0
    :cond_4
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
