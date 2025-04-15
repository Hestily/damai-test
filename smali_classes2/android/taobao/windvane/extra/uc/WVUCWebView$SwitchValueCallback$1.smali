.class Landroid/taobao/windvane/extra/uc/WVUCWebView$SwitchValueCallback$1;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/extra/uc/WVUCWebView$SwitchValueCallback;->onReceiveValue(Lcom/uc/webview/export/utility/SetupTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/extra/uc/WVUCWebView$SwitchValueCallback;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/extra/uc/WVUCWebView$SwitchValueCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView$SwitchValueCallback$1;->this$0:Landroid/taobao/windvane/extra/uc/WVUCWebView$SwitchValueCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->access$1900()Landroid/taobao/windvane/webview/CoreEventCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVCoreSettings;->getInstance()Landroid/taobao/windvane/extra/uc/WVCoreSettings;

    move-result-object v0

    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->access$1900()Landroid/taobao/windvane/webview/CoreEventCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/extra/uc/WVCoreSettings;->setCoreEventCallback(Landroid/taobao/windvane/webview/CoreEventCallback;)V

    .line 3
    :cond_0
    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVCoreSettings;->getInstance()Landroid/taobao/windvane/extra/uc/WVCoreSettings;

    move-result-object v0

    iget-object v0, v0, Landroid/taobao/windvane/extra/uc/WVCoreSettings;->coreEventCallbacks:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 4
    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVCoreSettings;->getInstance()Landroid/taobao/windvane/extra/uc/WVCoreSettings;

    move-result-object v0

    iget-object v0, v0, Landroid/taobao/windvane/extra/uc/WVCoreSettings;->coreEventCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/taobao/windvane/webview/CoreEventCallback;

    if-nez v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v1}, Landroid/taobao/windvane/webview/CoreEventCallback;->onCoreSwitch()V

    goto :goto_0

    .line 6
    :cond_2
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v0

    const/16 v1, 0xbc9

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/service/WVEventService;->onEvent(I)Landroid/taobao/windvane/service/WVEventResult;

    .line 7
    invoke-static {}, Landroid/taobao/windvane/extra/core/WVCore;->getInstance()Landroid/taobao/windvane/extra/core/WVCore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/core/WVCore;->isUCSupport()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    .line 8
    invoke-static {}, Landroid/taobao/windvane/extra/core/WVCore;->getInstance()Landroid/taobao/windvane/extra/core/WVCore;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/taobao/windvane/extra/core/WVCore;->setUCSupport(Z)V

    .line 9
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v0

    const/16 v3, 0xbc8

    invoke-virtual {v0, v3}, Landroid/taobao/windvane/service/WVEventService;->onEvent(I)Landroid/taobao/windvane/service/WVEventResult;

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UCSDK onUCMCoreSwitched: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "WVUCWebView"

    invoke-static {v3, v0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVCoreSettings;->getInstance()Landroid/taobao/windvane/extra/uc/WVCoreSettings;

    move-result-object v0

    iget-object v0, v0, Landroid/taobao/windvane/extra/uc/WVCoreSettings;->coreEventCallbacks:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 12
    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVCoreSettings;->getInstance()Landroid/taobao/windvane/extra/uc/WVCoreSettings;

    move-result-object v0

    iget-object v0, v0, Landroid/taobao/windvane/extra/uc/WVCoreSettings;->coreEventCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/taobao/windvane/webview/CoreEventCallback;

    if-nez v3, :cond_3

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {v3}, Landroid/taobao/windvane/webview/CoreEventCallback;->onUCCorePrepared()V

    goto :goto_1

    .line 14
    :cond_4
    sget-object v0, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    if-eqz v0, :cond_6

    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->access$2000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15
    sget-object v0, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    iget-object v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView$SwitchValueCallback$1;->this$0:Landroid/taobao/windvane/extra/uc/WVUCWebView$SwitchValueCallback;

    iget-wide v1, v1, Landroid/taobao/windvane/extra/uc/WVUCWebView$SwitchValueCallback;->startTime:J

    invoke-static {v0, v1, v2}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->access$2100(Landroid/content/Context;J)V

    goto :goto_2

    .line 16
    :cond_5
    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    .line 17
    invoke-static {}, Landroid/taobao/windvane/extra/core/WVCore;->getInstance()Landroid/taobao/windvane/extra/core/WVCore;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/extra/core/WVCore;->setUCSupport(Z)V

    :cond_6
    :goto_2
    return-void
.end method
