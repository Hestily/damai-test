.class public Landroid/taobao/windvane/extra/jsbridge/WVACCS$ACCSWVEventListener;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/taobao/windvane/service/WVEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/windvane/extra/jsbridge/WVACCS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ACCSWVEventListener"
.end annotation


# instance fields
.field private webview:Ljava/lang/ref/WeakReference;
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

    iput-object v0, p0, Landroid/taobao/windvane/extra/jsbridge/WVACCS$ACCSWVEventListener;->webview:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public varargs onEvent(ILandroid/taobao/windvane/service/WVEventContext;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;
    .locals 4

    .line 1
    iget-object p2, p0, Landroid/taobao/windvane/extra/jsbridge/WVACCS$ACCSWVEventListener;->webview:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/taobao/windvane/webview/IWVWebView;

    const/4 v0, 0x0

    const-string v1, "ACCS"

    if-nez p2, :cond_1

    .line 2
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string/jumbo p1, "webview is recycled"

    .line 3
    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0

    :cond_1
    const-string/jumbo v2, "{}"

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, "WV.Event.ACCS.OnDisConnected"

    .line 4
    invoke-interface {p2, p1, v2}, Landroid/taobao/windvane/webview/IWVWebView;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "ACCS disconnect"

    .line 6
    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string p1, "WV.Event.ACCS.OnConnected"

    .line 7
    invoke-interface {p2, p1, v2}, Landroid/taobao/windvane/webview/IWVWebView;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "ACCS connect"

    .line 9
    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x0

    .line 10
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/String;

    .line 11
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x1

    aget-object p3, p3, v3

    check-cast p3, [B

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([B)V

    .line 12
    :try_start_0
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v3, "serviceId"

    .line 13
    invoke-virtual {p3, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p1, "resultData"

    .line 14
    invoke-virtual {p3, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "WV.Event.ACCS.OnData"

    .line 16
    invoke-interface {p2, p3, p1}, Landroid/taobao/windvane/webview/IWVWebView;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 18
    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1389
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
