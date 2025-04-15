.class final Landroid/taobao/windvane/WindVaneSDKForTB$1;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lcom/taobao/application/common/Apm$OnApmEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/WindVaneSDKForTB;->init(Landroid/content/Context;Ljava/lang/String;ILandroid/taobao/windvane/config/WVAppParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$preferences:Lcom/taobao/application/common/IAppPreferences;


# direct methods
.method constructor <init>(Lcom/taobao/application/common/IAppPreferences;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/WindVaneSDKForTB$1;->val$preferences:Lcom/taobao/application/common/IAppPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/WindVaneSDKForTB$1;->val$preferences:Lcom/taobao/application/common/IAppPreferences;

    const-string v1, "isInBackground"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/taobao/application/common/IAppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Landroid/taobao/windvane/WindVaneSDKForTB;->access$002(Z)Z

    .line 2
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getPackageMonitorInterface()Landroid/taobao/windvane/monitor/WVPackageMonitorInterface;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x2

    const-string v4, "WindVaneSDKForTB"

    if-ne p1, v3, :cond_1

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "app active at time : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sput-boolean v2, Landroid/taobao/windvane/config/GlobalConfig;->isBackground:Z

    .line 6
    invoke-static {}, Landroid/taobao/windvane/config/WVConfigManager;->getInstance()Landroid/taobao/windvane/config/WVConfigManager;

    move-result-object v2

    sget-object v3, Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;->WVConfigUpdateFromTypeAppActive:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    invoke-virtual {v2, v3}, Landroid/taobao/windvane/config/WVConfigManager;->updateConfig(Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;)V

    .line 7
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getPackageMonitorInterface()Landroid/taobao/windvane/monitor/WVPackageMonitorInterface;

    move-result-object v2

    invoke-interface {v2, v5, v6}, Landroid/taobao/windvane/monitor/WVPackageMonitorInterface;->uploadStartAppTime(J)V

    :cond_1
    if-ne p1, v1, :cond_2

    if-eqz v0, :cond_2

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "app background at time : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    sput-boolean v1, Landroid/taobao/windvane/config/GlobalConfig;->isBackground:Z

    .line 11
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getPackageMonitorInterface()Landroid/taobao/windvane/monitor/WVPackageMonitorInterface;

    move-result-object p1

    invoke-interface {p1, v2, v3}, Landroid/taobao/windvane/monitor/WVPackageMonitorInterface;->uploadBackgroundTime(J)V

    :cond_2
    return-void
.end method
