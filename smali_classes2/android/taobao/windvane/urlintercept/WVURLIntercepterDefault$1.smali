.class Landroid/taobao/windvane/urlintercept/WVURLIntercepterDefault$1;
.super Landroid/taobao/windvane/connect/HttpConnectListener;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/urlintercept/WVURLIntercepterDefault;->updateURLRule()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/taobao/windvane/connect/HttpConnectListener<",
        "Landroid/taobao/windvane/connect/HttpResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/urlintercept/WVURLIntercepterDefault;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/urlintercept/WVURLIntercepterDefault;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/urlintercept/WVURLIntercepterDefault$1;->this$0:Landroid/taobao/windvane/urlintercept/WVURLIntercepterDefault;

    invoke-direct {p0}, Landroid/taobao/windvane/connect/HttpConnectListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Landroid/taobao/windvane/connect/HttpResponse;I)V
    .locals 5

    const-string p2, "WVUrlResolver"

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 2
    invoke-virtual {p1}, Landroid/taobao/windvane/connect/HttpResponse;->getData()[B

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/taobao/windvane/connect/HttpResponse;->getData()[B

    move-result-object p1

    const-string/jumbo v2, "utf-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 4
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callback: Download config successfully.\nclass = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\ncontent="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_1
    iget-object p1, p0, Landroid/taobao/windvane/urlintercept/WVURLIntercepterDefault$1;->this$0:Landroid/taobao/windvane/urlintercept/WVURLIntercepterDefault;

    invoke-virtual {p1, v1}, Landroid/taobao/windvane/urlintercept/WVURLIntercepterDefault;->needSaveConfig(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    sget-object p1, Landroid/taobao/windvane/config/WVConfigUtils;->SPNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/taobao/windvane/urlintercept/WVURLIntercepterDefault$1;->this$0:Landroid/taobao/windvane/urlintercept/WVURLIntercepterDefault;

    invoke-static {v3}, Landroid/taobao/windvane/urlintercept/WVURLIntercepterDefault;->access$100(Landroid/taobao/windvane/urlintercept/WVURLIntercepterDefault;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "wv-time"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 9
    invoke-static {p1, v2, v3, v4}, Landroid/taobao/windvane/util/ConfigStorage;->putLongVal(Ljava/lang/String;Ljava/lang/String;J)V

    .line 10
    iget-object p1, p0, Landroid/taobao/windvane/urlintercept/WVURLIntercepterDefault$1;->this$0:Landroid/taobao/windvane/urlintercept/WVURLIntercepterDefault;

    invoke-virtual {p1, v1}, Landroid/taobao/windvane/urlintercept/WVURLIntercepterDefault;->saveConfigFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :cond_2
    :goto_0
    iget-object p1, p0, Landroid/taobao/windvane/urlintercept/WVURLIntercepterDefault$1;->this$0:Landroid/taobao/windvane/urlintercept/WVURLIntercepterDefault;

    invoke-static {p1, v0}, Landroid/taobao/windvane/urlintercept/WVURLIntercepterDefault;->access$002(Landroid/taobao/windvane/urlintercept/WVURLIntercepterDefault;Z)Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 12
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "config encoding error. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 13
    :goto_2
    iget-object p2, p0, Landroid/taobao/windvane/urlintercept/WVURLIntercepterDefault$1;->this$0:Landroid/taobao/windvane/urlintercept/WVURLIntercepterDefault;

    invoke-static {p2, v0}, Landroid/taobao/windvane/urlintercept/WVURLIntercepterDefault;->access$002(Landroid/taobao/windvane/urlintercept/WVURLIntercepterDefault;Z)Z

    .line 14
    throw p1

    .line 15
    :cond_3
    :goto_3
    iget-object p1, p0, Landroid/taobao/windvane/urlintercept/WVURLIntercepterDefault$1;->this$0:Landroid/taobao/windvane/urlintercept/WVURLIntercepterDefault;

    invoke-static {p1, v0}, Landroid/taobao/windvane/urlintercept/WVURLIntercepterDefault;->access$002(Landroid/taobao/windvane/urlintercept/WVURLIntercepterDefault;Z)Z

    return-void
.end method

.method public bridge synthetic onFinish(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Landroid/taobao/windvane/connect/HttpResponse;

    invoke-virtual {p0, p1, p2}, Landroid/taobao/windvane/urlintercept/WVURLIntercepterDefault$1;->onFinish(Landroid/taobao/windvane/connect/HttpResponse;I)V

    return-void
.end method
