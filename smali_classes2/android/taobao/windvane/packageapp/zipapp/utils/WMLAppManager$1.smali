.class Landroid/taobao/windvane/packageapp/zipapp/utils/WMLAppManager$1;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lcom/taobao/zcachecorewrapper/IZCacheCore$AppInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/packageapp/zipapp/utils/WMLAppManager;->loadApp(Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/utils/WMLAppManager$LoadAppCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/packageapp/zipapp/utils/WMLAppManager;

.field final synthetic val$callback:Landroid/taobao/windvane/packageapp/zipapp/utils/WMLAppManager$LoadAppCallback;

.field final synthetic val$loadData:Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/packageapp/zipapp/utils/WMLAppManager;Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData;Landroid/taobao/windvane/packageapp/zipapp/utils/WMLAppManager$LoadAppCallback;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/packageapp/zipapp/utils/WMLAppManager$1;->this$0:Landroid/taobao/windvane/packageapp/zipapp/utils/WMLAppManager;

    iput-object p2, p0, Landroid/taobao/windvane/packageapp/zipapp/utils/WMLAppManager$1;->val$loadData:Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData;

    iput-object p3, p0, Landroid/taobao/windvane/packageapp/zipapp/utils/WMLAppManager$1;->val$callback:Landroid/taobao/windvane/packageapp/zipapp/utils/WMLAppManager$LoadAppCallback;

    iput-object p4, p0, Landroid/taobao/windvane/packageapp/zipapp/utils/WMLAppManager$1;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Lcom/taobao/zcachecorewrapper/model/AppInfo;Lcom/taobao/zcachecorewrapper/model/Error;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-object v3, v0, Landroid/taobao/windvane/packageapp/zipapp/utils/WMLAppManager$1;->val$loadData:Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData;->t_endTime:J

    const-string v3, ":"

    if-eqz v1, :cond_3

    .line 2
    iget-wide v9, v1, Lcom/taobao/zcachecorewrapper/model/AppInfo;->downloadDuration:J

    .line 3
    new-instance v4, Landroid/taobao/windvane/packageapp/zipapp/data/WMLWrapData;

    invoke-direct {v4}, Landroid/taobao/windvane/packageapp/zipapp/data/WMLWrapData;-><init>()V

    .line 4
    iget-object v5, v1, Lcom/taobao/zcachecorewrapper/model/AppInfo;->rootPath:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5
    iget-object v1, v0, Landroid/taobao/windvane/packageapp/zipapp/utils/WMLAppManager$1;->val$loadData:Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;->LOAD_FOR_FILE_NOT_FOUND:Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;

    invoke-virtual {v4}, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData;->msg:Ljava/lang/String;

    .line 6
    iget-object v1, v0, Landroid/taobao/windvane/packageapp/zipapp/utils/WMLAppManager$1;->val$callback:Landroid/taobao/windvane/packageapp/zipapp/utils/WMLAppManager$LoadAppCallback;

    invoke-virtual {v4}, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/taobao/windvane/packageapp/zipapp/utils/WMLAppManager$LoadAppCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getPackageMonitorInterface()Landroid/taobao/windvane/monitor/WVPackageMonitorInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 8
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getPackageMonitorInterface()Landroid/taobao/windvane/monitor/WVPackageMonitorInterface;

    move-result-object v4

    iget-object v1, v0, Landroid/taobao/windvane/packageapp/zipapp/utils/WMLAppManager$1;->val$loadData:Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData;

    iget-object v6, v1, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData;->appName:Ljava/lang/String;

    iget-wide v7, v1, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData;->task_wait:J

    iget-wide v2, v1, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData;->t_endTime:J

    iget-wide v11, v1, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData;->t_startTime:J

    sub-long v11, v2, v11

    iget-object v13, v1, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData;->msg:Ljava/lang/String;

    const/4 v14, 0x0

    const-string v5, "3"

    invoke-interface/range {v4 .. v14}, Landroid/taobao/windvane/monitor/WVPackageMonitorInterface;->commitZCacheDownLoadTime(Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Z)V

    :cond_0
    return-void

    .line 9
    :cond_1
    iget-object v5, v0, Landroid/taobao/windvane/packageapp/zipapp/utils/WMLAppManager$1;->val$loadData:Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData;

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData;->isSuccess:Z

    .line 10
    invoke-static {}, Lcom/taobao/zcache/ZCacheManager;->instance()Lcom/taobao/zcache/ZCacheManager;

    move-result-object v5

    iget-object v6, v0, Landroid/taobao/windvane/packageapp/zipapp/utils/WMLAppManager$1;->val$name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/taobao/zcache/ZCacheManager;->pauseApp(Ljava/lang/String;)V

    .line 11
    new-instance v5, Ljava/io/File;

    iget-object v6, v1, Lcom/taobao/zcachecorewrapper/model/AppInfo;->rootPath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/taobao/windvane/packageapp/zipapp/data/WMLWrapData;->setRootDir(Ljava/io/File;)V

    .line 12
    iget-boolean v5, v1, Lcom/taobao/zcachecorewrapper/model/AppInfo;->isAppInstalled:Z

    if-eqz v5, :cond_2

    .line 13
    iget-object v5, v0, Landroid/taobao/windvane/packageapp/zipapp/utils/WMLAppManager$1;->val$loadData:Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;->LOAD_LOCAL:Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;

    invoke-virtual {v7}, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;->getCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData;->msg:Ljava/lang/String;

    .line 14
    invoke-virtual {v7}, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/taobao/windvane/packageapp/zipapp/data/WMLWrapData;->setStorage(Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_2
    iget-object v5, v0, Landroid/taobao/windvane/packageapp/zipapp/utils/WMLAppManager$1;->val$loadData:Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;->LOAD_NORMAL:Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;

    invoke-virtual {v7}, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;->getCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData;->msg:Ljava/lang/String;

    .line 16
    invoke-virtual {v7}, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/taobao/windvane/packageapp/zipapp/data/WMLWrapData;->setStorage(Ljava/lang/String;)V

    .line 17
    :goto_0
    iget-object v3, v0, Landroid/taobao/windvane/packageapp/zipapp/utils/WMLAppManager$1;->val$callback:Landroid/taobao/windvane/packageapp/zipapp/utils/WMLAppManager$LoadAppCallback;

    invoke-interface {v3, v4}, Landroid/taobao/windvane/packageapp/zipapp/utils/WMLAppManager$LoadAppCallback;->onLoaded(Landroid/taobao/windvane/packageapp/zipapp/data/WMLWrapData;)V

    goto :goto_1

    .line 18
    :cond_3
    iget-object v4, v0, Landroid/taobao/windvane/packageapp/zipapp/utils/WMLAppManager$1;->val$loadData:Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData;

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData;->isSuccess:Z

    .line 19
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;->LOAD_OTHER_ERROR:Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;

    invoke-virtual {v6}, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;->getCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData$LoadType;->getMsg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/taobao/zcachecorewrapper/model/Error;->errMsg:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData;->msg:Ljava/lang/String;

    .line 20
    iget-object v3, v0, Landroid/taobao/windvane/packageapp/zipapp/utils/WMLAppManager$1;->val$callback:Landroid/taobao/windvane/packageapp/zipapp/utils/WMLAppManager$LoadAppCallback;

    iget v4, v2, Lcom/taobao/zcachecorewrapper/model/Error;->errCode:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lcom/taobao/zcachecorewrapper/model/Error;->errMsg:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/taobao/windvane/packageapp/zipapp/utils/WMLAppManager$LoadAppCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v9, 0x0

    :goto_1
    move-wide/from16 v16, v9

    .line 21
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getPackageMonitorInterface()Landroid/taobao/windvane/monitor/WVPackageMonitorInterface;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 22
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getPackageMonitorInterface()Landroid/taobao/windvane/monitor/WVPackageMonitorInterface;

    move-result-object v11

    iget-object v3, v0, Landroid/taobao/windvane/packageapp/zipapp/utils/WMLAppManager$1;->val$loadData:Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData;

    iget-object v13, v3, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData;->appName:Ljava/lang/String;

    iget-wide v14, v3, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData;->task_wait:J

    iget-wide v4, v3, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData;->t_endTime:J

    iget-wide v6, v3, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData;->t_startTime:J

    sub-long v18, v4, v6

    iget-object v4, v3, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData;->msg:Ljava/lang/String;

    iget-boolean v3, v3, Landroid/taobao/windvane/packageapp/zipapp/utils/InstantPerformanceData;->isSuccess:Z

    const-string v12, "3"

    move-object/from16 v20, v4

    move/from16 v21, v3

    invoke-interface/range {v11 .. v21}, Landroid/taobao/windvane/monitor/WVPackageMonitorInterface;->commitZCacheDownLoadTime(Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Z)V

    .line 23
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "miniApp use ZCache 3.0, name=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/taobao/windvane/packageapp/zipapp/utils/WMLAppManager$1;->val$name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "], path=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_5

    const/4 v1, 0x0

    goto :goto_2

    :cond_5
    iget-object v1, v1, Lcom/taobao/zcachecorewrapper/model/AppInfo;->rootPath:Ljava/lang/String;

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], code=["

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lcom/taobao/zcachecorewrapper/model/Error;->errCode:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]; msg=["

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/taobao/zcachecorewrapper/model/Error;->errMsg:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ZCache"

    invoke-static {v2, v1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
