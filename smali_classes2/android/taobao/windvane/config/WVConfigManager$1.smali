.class Landroid/taobao/windvane/config/WVConfigManager$1;
.super Landroid/taobao/windvane/connect/HttpConnectListener;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/config/WVConfigManager;->updateImmediately(Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;)V
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
.field final synthetic this$0:Landroid/taobao/windvane/config/WVConfigManager;

.field final synthetic val$fromType:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Landroid/taobao/windvane/config/WVConfigManager;JLandroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/config/WVConfigManager$1;->this$0:Landroid/taobao/windvane/config/WVConfigManager;

    iput-wide p2, p0, Landroid/taobao/windvane/config/WVConfigManager$1;->val$startTime:J

    iput-object p4, p0, Landroid/taobao/windvane/config/WVConfigManager$1;->val$fromType:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    invoke-direct {p0}, Landroid/taobao/windvane/connect/HttpConnectListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "update entry failed! : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WVConfigManager"

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getConfigMonitor()Landroid/taobao/windvane/monitor/WVConfigMonitorInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getConfigMonitor()Landroid/taobao/windvane/monitor/WVConfigMonitorInterface;

    move-result-object v0

    sget-object v1, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->UNKNOWN_ERROR:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "entry-NoNetwork"

    invoke-interface {v0, v2, v1, p2}, Landroid/taobao/windvane/monitor/WVConfigMonitorInterface;->didOccurUpdateConfigError(Ljava/lang/String;ILjava/lang/String;)V

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/taobao/windvane/connect/HttpConnectListener;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public onFinish(Landroid/taobao/windvane/connect/HttpResponse;I)V
    .locals 19

    move-object/from16 v1, p0

    const-string v2, "entry"

    const-string v3, "WVConfigManager"

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v1, Landroid/taobao/windvane/config/WVConfigManager$1;->val$startTime:J

    sub-long v11, v4, v6

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/taobao/windvane/connect/HttpResponse;->getData()[B

    move-result-object v4

    const-string/jumbo v5, "utf-8"

    invoke-direct {v0, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 4
    new-instance v4, Landroid/taobao/windvane/connect/api/ApiResponse;

    invoke-direct {v4}, Landroid/taobao/windvane/connect/api/ApiResponse;-><init>()V

    .line 5
    invoke-virtual {v4, v0}, Landroid/taobao/windvane/connect/api/ApiResponse;->parseJsonResult(Ljava/lang/String;)Landroid/taobao/windvane/connect/api/ApiResponse;

    move-result-object v0

    iget-boolean v0, v0, Landroid/taobao/windvane/connect/api/ApiResponse;->success:Z

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, v4, Landroid/taobao/windvane/connect/api/ApiResponse;->data:Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    move-object v0, v5

    .line 7
    :goto_0
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getPackageMonitorInterface()Landroid/taobao/windvane/monitor/WVPackageMonitorInterface;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 9
    invoke-virtual/range {p1 .. p1}, Landroid/taobao/windvane/connect/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_6

    const-string v8, "Age"

    .line 10
    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 11
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v8, "age"

    .line 12
    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    :cond_2
    const-string v9, "Date"

    .line 13
    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 14
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    const-string v9, "date"

    .line 15
    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Ljava/lang/String;

    .line 16
    :cond_3
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-wide/16 v13, 0x0

    if-nez v4, :cond_4

    .line 17
    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    const-wide/16 v17, 0x3e8

    mul-long v15, v15, v17

    goto :goto_1

    :cond_4
    move-wide v15, v13

    .line 18
    :goto_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 19
    invoke-static {v9}, Landroid/taobao/windvane/util/CommonUtils;->parseDate(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v15, v8

    :cond_5
    cmp-long v4, v15, v13

    if-eqz v4, :cond_6

    sub-long/2addr v6, v15

    .line 20
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateDiffTime by config : "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getPackageMonitorInterface()Landroid/taobao/windvane/monitor/WVPackageMonitorInterface;

    move-result-object v4

    invoke-interface {v4, v6, v7}, Landroid/taobao/windvane/monitor/WVPackageMonitorInterface;->uploadDiffTimeTime(J)V

    .line 22
    :cond_6
    invoke-static {}, Landroid/taobao/windvane/config/WVLocaleConfig;->getInstance()Landroid/taobao/windvane/config/WVLocaleConfig;

    move-result-object v4

    invoke-virtual {v4}, Landroid/taobao/windvane/config/WVLocaleConfig;->needFull()Z

    move-result v4

    .line 23
    iget-object v6, v1, Landroid/taobao/windvane/config/WVConfigManager$1;->val$fromType:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    if-eqz v4, :cond_7

    .line 24
    sget-object v6, Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;->WVConfigUpdateFromTypeLocaleChange:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    .line 25
    invoke-static {}, Landroid/taobao/windvane/packageapp/WVPackageAppService;->getWvPackageAppConfig()Landroid/taobao/windvane/packageapp/WVPackageAppConfigInterface;

    move-result-object v4

    invoke-interface {v4}, Landroid/taobao/windvane/packageapp/WVPackageAppConfigInterface;->requestFullConfigNextTime()V

    :cond_7
    if-eqz v0, :cond_9

    .line 26
    iget-object v4, v1, Landroid/taobao/windvane/config/WVConfigManager$1;->this$0:Landroid/taobao/windvane/config/WVConfigManager;

    invoke-static {v4}, Landroid/taobao/windvane/config/WVConfigManager;->access$100(Landroid/taobao/windvane/config/WVConfigManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 27
    iget-object v4, v1, Landroid/taobao/windvane/config/WVConfigManager$1;->this$0:Landroid/taobao/windvane/config/WVConfigManager;

    invoke-static {v4}, Landroid/taobao/windvane/config/WVConfigManager;->access$100(Landroid/taobao/windvane/config/WVConfigManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->keys()Ljava/util/Enumeration;

    move-result-object v4

    .line 28
    :goto_2
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 29
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "0"

    .line 30
    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 31
    iget-object v9, v1, Landroid/taobao/windvane/config/WVConfigManager$1;->this$0:Landroid/taobao/windvane/config/WVConfigManager;

    invoke-static {v9, v7, v8, v5, v6}, Landroid/taobao/windvane/config/WVConfigManager;->access$200(Landroid/taobao/windvane/config/WVConfigManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;)V

    goto :goto_2

    .line 32
    :cond_8
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getConfigMonitor()Landroid/taobao/windvane/monitor/WVConfigMonitorInterface;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 33
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getConfigMonitor()Landroid/taobao/windvane/monitor/WVConfigMonitorInterface;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/taobao/windvane/monitor/WVConfigMonitorInterface;->didOccurUpdateConfigSuccess(Ljava/lang/String;)V

    .line 34
    :cond_9
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v0

    const/16 v4, 0x1b59

    invoke-virtual {v0, v4}, Landroid/taobao/windvane/service/WVEventService;->onEvent(I)Landroid/taobao/windvane/service/WVEventResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    const/4 v13, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    const/4 v4, 0x0

    .line 35
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getConfigMonitor()Landroid/taobao/windvane/monitor/WVConfigMonitorInterface;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 36
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getConfigMonitor()Landroid/taobao/windvane/monitor/WVConfigMonitorInterface;

    move-result-object v5

    sget-object v6, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->UNKNOWN_ERROR:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "update entry error : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v2, v6, v0}, Landroid/taobao/windvane/monitor/WVConfigMonitorInterface;->didOccurUpdateConfigError(Ljava/lang/String;ILjava/lang/String;)V

    :cond_a
    const-string/jumbo v0, "updateImmediately failed!"

    .line 37
    invoke-static {v3, v0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    .line 38
    :goto_3
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getConfigMonitor()Landroid/taobao/windvane/monitor/WVConfigMonitorInterface;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 39
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getConfigMonitor()Landroid/taobao/windvane/monitor/WVConfigMonitorInterface;

    move-result-object v8

    iget-object v0, v1, Landroid/taobao/windvane/config/WVConfigManager$1;->val$fromType:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    iget-object v0, v1, Landroid/taobao/windvane/config/WVConfigManager$1;->this$0:Landroid/taobao/windvane/config/WVConfigManager;

    invoke-static {v0}, Landroid/taobao/windvane/config/WVConfigManager;->access$100(Landroid/taobao/windvane/config/WVConfigManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v14

    const-string v9, "entry"

    invoke-interface/range {v8 .. v14}, Landroid/taobao/windvane/monitor/WVConfigMonitorInterface;->didUpdateConfig(Ljava/lang/String;IJII)V

    :cond_b
    return-void
.end method

.method public bridge synthetic onFinish(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Landroid/taobao/windvane/connect/HttpResponse;

    invoke-virtual {p0, p1, p2}, Landroid/taobao/windvane/config/WVConfigManager$1;->onFinish(Landroid/taobao/windvane/connect/HttpResponse;I)V

    return-void
.end method
