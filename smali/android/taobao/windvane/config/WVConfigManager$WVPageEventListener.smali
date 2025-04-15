.class public Landroid/taobao/windvane/config/WVConfigManager$WVPageEventListener;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/taobao/windvane/service/WVEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/windvane/config/WVConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WVPageEventListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs onEvent(ILandroid/taobao/windvane/service/WVEventContext;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;
    .locals 1

    const/16 p3, 0xbba

    if-eq p1, p3, :cond_0

    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_3

    .line 1
    :cond_0
    sget-boolean v0, Landroid/taobao/windvane/config/WVConfigManager;->launch:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p2, Landroid/taobao/windvane/service/WVEventContext;->webView:Landroid/taobao/windvane/webview/IWVWebView;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Landroid/taobao/windvane/webview/IWVWebView;->_getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object p2, p2, Landroid/taobao/windvane/service/WVEventContext;->webView:Landroid/taobao/windvane/webview/IWVWebView;

    .line 3
    invoke-interface {p2}, Landroid/taobao/windvane/webview/IWVWebView;->_getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MainActivity3"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 4
    sput-boolean p2, Landroid/taobao/windvane/config/WVConfigManager;->launch:Z

    :cond_1
    if-ne p1, p3, :cond_2

    .line 5
    invoke-static {}, Landroid/taobao/windvane/config/WVConfigManager;->access$000()Landroid/taobao/windvane/config/WVConfigManager;

    move-result-object p1

    sget-object p2, Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;->WVConfigUpdateFromTypeActive:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    invoke-virtual {p1, p2}, Landroid/taobao/windvane/config/WVConfigManager;->updateConfig(Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-static {}, Landroid/taobao/windvane/config/WVConfigManager;->access$000()Landroid/taobao/windvane/config/WVConfigManager;

    move-result-object p1

    sget-object p2, Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;->WVConfigUpdateFromTypeFinish:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    invoke-virtual {p1, p2}, Landroid/taobao/windvane/config/WVConfigManager;->updateConfig(Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;)V

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
