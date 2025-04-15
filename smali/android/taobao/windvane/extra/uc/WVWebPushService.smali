.class public Landroid/taobao/windvane/extra/uc/WVWebPushService;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/taobao/windvane/service/WVEventListener;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WVWebPushService"

.field public static final synthetic a:I = 0x0

.field private static mInstance:Landroid/taobao/windvane/extra/uc/WVWebPushService; = null

.field private static final serviceClassName:Ljava/lang/String; = "android.taobao.windvane.extra.jsbridge.WVACCSService"

.field private static final swServiceId:Ljava/lang/String; = "sw-push"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMessageHandler:Landroid/os/Handler;

.field private mResultDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "WVWebPushService"

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Landroid/taobao/windvane/extra/uc/WVWebPushService;->mContext:Landroid/content/Context;

    .line 3
    iput-object v1, p0, Landroid/taobao/windvane/extra/uc/WVWebPushService;->mResultDataList:Ljava/util/List;

    .line 4
    iput-object v1, p0, Landroid/taobao/windvane/extra/uc/WVWebPushService;->mMessageHandler:Landroid/os/Handler;

    .line 5
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/WVWebPushService;->mContext:Landroid/content/Context;

    .line 6
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v1, "sw-push"

    const-string v2, "android.taobao.windvane.extra.jsbridge.WVACCSService"

    invoke-static {p1, v1, v2}, Lcom/taobao/accs/ACCSManager;->registerSerivce(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "ACCSManager.registerSerivce"

    .line 8
    invoke-static {v0, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/taobao/windvane/extra/uc/WVWebPushService;
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    sget-object v0, Landroid/taobao/windvane/extra/uc/WVWebPushService;->mInstance:Landroid/taobao/windvane/extra/uc/WVWebPushService;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/taobao/windvane/extra/uc/WVWebPushService;

    invoke-direct {v0, p0}, Landroid/taobao/windvane/extra/uc/WVWebPushService;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/taobao/windvane/extra/uc/WVWebPushService;->mInstance:Landroid/taobao/windvane/extra/uc/WVWebPushService;

    .line 3
    invoke-direct {v0}, Landroid/taobao/windvane/extra/uc/WVWebPushService;->init()V

    .line 4
    :cond_0
    sget-object p0, Landroid/taobao/windvane/extra/uc/WVWebPushService;->mInstance:Landroid/taobao/windvane/extra/uc/WVWebPushService;

    return-object p0
.end method

.method private init()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/taobao/windvane/service/WVEventService;->addEventListener(Landroid/taobao/windvane/service/WVEventListener;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVWebPushService;->mResultDataList:Ljava/util/List;

    .line 3
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WVWebPushService"

    const-string v1, "WVEventService.getInstance().addEventListener"

    .line 4
    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private sendServiceWorkderPushMessage()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVWebPushService;->mResultDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVWebPushService;->mMessageHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVWebPushService;->mMessageHandler:Landroid/os/Handler;

    .line 4
    :cond_1
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVWebPushService;->mMessageHandler:Landroid/os/Handler;

    new-instance v1, Landroid/taobao/windvane/extra/uc/WVWebPushService$1;

    invoke-direct {v1, p0}, Landroid/taobao/windvane/extra/uc/WVWebPushService$1;-><init>(Landroid/taobao/windvane/extra/uc/WVWebPushService;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public doSendServiceWorkderPushMessage()V
    .locals 7

    const-string v0, "WVWebPushService"

    .line 1
    :try_start_0
    iget-object v1, p0, Landroid/taobao/windvane/extra/uc/WVWebPushService;->mResultDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Landroid/taobao/windvane/extra/uc/WVWebPushService;->mResultDataList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    goto/16 :goto_0

    .line 4
    :cond_1
    new-instance v2, Landroid/taobao/windvane/extra/uc/WVUCWebView;

    iget-object v3, p0, Landroid/taobao/windvane/extra/uc/WVWebPushService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/taobao/windvane/extra/uc/WVUCWebView;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-virtual {v2}, Lcom/uc/webview/export/WebView;->getCurrentViewCoreType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 6
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "workerId"

    .line 7
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "data"

    .line 8
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 9
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "appId"

    .line 10
    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "message"

    .line 11
    invoke-virtual {v4, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "messageId"

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WVWebPushService, send message to uc core: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", uc core type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v2}, Lcom/uc/webview/export/WebView;->getCurrentViewCoreType()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_2
    new-instance v1, Landroid/taobao/windvane/extra/uc/WVWebPushService$2;

    invoke-direct {v1, p0}, Landroid/taobao/windvane/extra/uc/WVWebPushService$2;-><init>(Landroid/taobao/windvane/extra/uc/WVWebPushService;)V

    const/4 v3, 0x2

    .line 18
    invoke-static {v3, v4, v1}, Lcom/uc/webview/export/extension/UCCore;->notifyCoreEvent(ILjava/lang/Object;Landroid/webkit/ValueCallback;)Ljava/lang/Object;

    .line 19
    :cond_3
    invoke-virtual {v2}, Lcom/uc/webview/export/WebView;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_4
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WVWebPushService,  onEvent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public getUtdidBySdk()Ljava/lang/String;
    .locals 8

    const-string v0, "WVWebPushService"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    const-class v2, Lcom/ta/utdid2/device/UTDevice;

    const-string v3, "getUtdid"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    .line 2
    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 3
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v3, v4, [Ljava/lang/Object;

    .line 4
    iget-object v4, p0, Landroid/taobao/windvane/extra/uc/WVWebPushService;->mContext:Landroid/content/Context;

    aput-object v4, v3, v7

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUtdidBySdk utdid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception v2

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUtdidBySdk cd exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public varargs onEvent(ILandroid/taobao/windvane/service/WVEventContext;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;
    .locals 2

    const-string p2, "WVWebPushService"

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "ACCS disconnect"

    .line 2
    invoke-static {p2, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :pswitch_1
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "ACCS connect"

    .line 4
    invoke-static {p2, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x0

    .line 5
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/String;

    .line 6
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x1

    aget-object p3, p3, v1

    check-cast p3, [B

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    .line 7
    :try_start_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WVWebPushService, "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p3, "sw-push"

    .line 8
    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 9
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/WVWebPushService;->mResultDataList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-direct {p0}, Landroid/taobao/windvane/extra/uc/WVWebPushService;->sendServiceWorkderPushMessage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 11
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "WVWebPushService,  onEvent: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1389
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
