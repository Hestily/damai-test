.class Landroid/taobao/windvane/config/WVDomainConfig$1;
.super Landroid/taobao/windvane/connect/HttpConnectListener;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/config/WVDomainConfig;->updateDomainRule(Landroid/taobao/windvane/config/WVConfigUpdateCallback;Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$0:Landroid/taobao/windvane/config/WVDomainConfig;

.field final synthetic val$callback:Landroid/taobao/windvane/config/WVConfigUpdateCallback;

.field final synthetic val$finalMonitorConfigUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/config/WVDomainConfig;Landroid/taobao/windvane/config/WVConfigUpdateCallback;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/config/WVDomainConfig$1;->this$0:Landroid/taobao/windvane/config/WVDomainConfig;

    iput-object p2, p0, Landroid/taobao/windvane/config/WVDomainConfig$1;->val$callback:Landroid/taobao/windvane/config/WVConfigUpdateCallback;

    iput-object p3, p0, Landroid/taobao/windvane/config/WVDomainConfig$1;->val$finalMonitorConfigUrl:Ljava/lang/String;

    invoke-direct {p0}, Landroid/taobao/windvane/connect/HttpConnectListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/config/WVDomainConfig$1;->val$callback:Landroid/taobao/windvane/config/WVConfigUpdateCallback;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Landroid/taobao/windvane/config/WVDomainConfig$1;->val$finalMonitorConfigUrl:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Landroid/taobao/windvane/config/WVConfigUpdateCallback;->updateError(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Landroid/taobao/windvane/config/WVDomainConfig$1;->val$callback:Landroid/taobao/windvane/config/WVConfigUpdateCallback;

    sget-object v1, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->UNKNOWN_ERROR:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/taobao/windvane/config/WVConfigUpdateCallback;->updateStatus(Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;I)V

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "update domain failed! : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WVDomainConfig"

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-super {p0, p1, p2}, Landroid/taobao/windvane/connect/HttpConnectListener;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public onFinish(Landroid/taobao/windvane/connect/HttpResponse;I)V
    .locals 2

    .line 2
    iget-object p2, p0, Landroid/taobao/windvane/config/WVDomainConfig$1;->val$callback:Landroid/taobao/windvane/config/WVConfigUpdateCallback;

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    if-eqz p1, :cond_3

    .line 3
    invoke-virtual {p1}, Landroid/taobao/windvane/connect/HttpResponse;->getData()[B

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/taobao/windvane/connect/HttpResponse;->getData()[B

    move-result-object p1

    const-string/jumbo v1, "utf-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 5
    iget-object p1, p0, Landroid/taobao/windvane/config/WVDomainConfig$1;->this$0:Landroid/taobao/windvane/config/WVDomainConfig;

    invoke-static {p1, v0}, Landroid/taobao/windvane/config/WVDomainConfig;->access$000(Landroid/taobao/windvane/config/WVDomainConfig;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string/jumbo p1, "wv_main_config"

    const-string v1, "domainwv-data"

    .line 6
    invoke-static {p1, v1, v0}, Landroid/taobao/windvane/util/ConfigStorage;->putStringVal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Landroid/taobao/windvane/config/WVDomainConfig$1;->val$callback:Landroid/taobao/windvane/config/WVConfigUpdateCallback;

    sget-object v0, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->SUCCESS:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/taobao/windvane/config/WVConfigUpdateCallback;->updateStatus(Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;I)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Landroid/taobao/windvane/config/WVDomainConfig$1;->val$callback:Landroid/taobao/windvane/config/WVConfigUpdateCallback;

    sget-object v0, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->NO_VERSION:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    invoke-interface {p1, v0, p2}, Landroid/taobao/windvane/config/WVConfigUpdateCallback;->updateStatus(Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    iget-object v0, p0, Landroid/taobao/windvane/config/WVDomainConfig$1;->val$callback:Landroid/taobao/windvane/config/WVConfigUpdateCallback;

    sget-object v1, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->ENCODING_ERROR:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    invoke-interface {v0, v1, p2}, Landroid/taobao/windvane/config/WVConfigUpdateCallback;->updateStatus(Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;I)V

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "config encoding error. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WVDomainConfig"

    invoke-static {p2, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 11
    :cond_3
    :goto_1
    iget-object p1, p0, Landroid/taobao/windvane/config/WVDomainConfig$1;->val$callback:Landroid/taobao/windvane/config/WVConfigUpdateCallback;

    sget-object v0, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->NULL_DATA:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    invoke-interface {p1, v0, p2}, Landroid/taobao/windvane/config/WVConfigUpdateCallback;->updateStatus(Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;I)V

    return-void
.end method

.method public bridge synthetic onFinish(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Landroid/taobao/windvane/connect/HttpResponse;

    invoke-virtual {p0, p1, p2}, Landroid/taobao/windvane/config/WVDomainConfig$1;->onFinish(Landroid/taobao/windvane/connect/HttpResponse;I)V

    return-void
.end method
