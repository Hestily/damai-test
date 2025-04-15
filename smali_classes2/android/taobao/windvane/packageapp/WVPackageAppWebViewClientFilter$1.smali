.class Landroid/taobao/windvane/packageapp/WVPackageAppWebViewClientFilter$1;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lcom/taobao/zcache/ResourceResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/packageapp/WVPackageAppWebViewClientFilter;->onEvent(ILandroid/taobao/windvane/service/WVEventContext;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/packageapp/WVPackageAppWebViewClientFilter;

.field final synthetic val$cdl:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$startGetZCacheResourceTime:J

.field final synthetic val$zCacheResourceWrapper:Landroid/taobao/windvane/packageapp/zipapp/utils/ZCacheResourceWrapper;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/packageapp/WVPackageAppWebViewClientFilter;Landroid/taobao/windvane/packageapp/zipapp/utils/ZCacheResourceWrapper;Ljava/util/concurrent/CountDownLatch;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/packageapp/WVPackageAppWebViewClientFilter$1;->this$0:Landroid/taobao/windvane/packageapp/WVPackageAppWebViewClientFilter;

    iput-object p2, p0, Landroid/taobao/windvane/packageapp/WVPackageAppWebViewClientFilter$1;->val$zCacheResourceWrapper:Landroid/taobao/windvane/packageapp/zipapp/utils/ZCacheResourceWrapper;

    iput-object p3, p0, Landroid/taobao/windvane/packageapp/WVPackageAppWebViewClientFilter$1;->val$cdl:Ljava/util/concurrent/CountDownLatch;

    iput-wide p4, p0, Landroid/taobao/windvane/packageapp/WVPackageAppWebViewClientFilter$1;->val$startGetZCacheResourceTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish(Lcom/taobao/zcache/ResourceResponse;)V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/taobao/windvane/packageapp/WVPackageAppWebViewClientFilter$1;->val$zCacheResourceWrapper:Landroid/taobao/windvane/packageapp/zipapp/utils/ZCacheResourceWrapper;

    invoke-virtual {v0, p1}, Landroid/taobao/windvane/packageapp/zipapp/utils/ZCacheResourceWrapper;->wrapZCacheResourceResponse(Lcom/taobao/zcache/ResourceResponse;)Lcom/taobao/zcache/model/ZCacheResourceResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 3
    :goto_0
    iget-object p1, p0, Landroid/taobao/windvane/packageapp/WVPackageAppWebViewClientFilter$1;->val$cdl:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/taobao/windvane/packageapp/WVPackageAppWebViewClientFilter$1;->val$startGetZCacheResourceTime:J

    sub-long/2addr v0, v2

    .line 5
    iget-object p1, p0, Landroid/taobao/windvane/packageapp/WVPackageAppWebViewClientFilter$1;->val$zCacheResourceWrapper:Landroid/taobao/windvane/packageapp/zipapp/utils/ZCacheResourceWrapper;

    iget-object p1, p1, Landroid/taobao/windvane/packageapp/zipapp/utils/ZCacheResourceWrapper;->zCacheResourceResponse:Lcom/taobao/zcache/model/ZCacheResourceResponse;

    iget-boolean p1, p1, Lcom/taobao/zcache/model/ZCacheResourceResponse;->isSuccess:Z

    const-string v2, "ZcacheResponseTime"

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/taobao/windvane/packageapp/WVPackageAppWebViewClientFilter;->access$000()J

    move-result-wide v3

    cmp-long p1, v0, v3

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ZCache\u8bf7\u6c42\u8d85\u65f6, \u7528\u65f6\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v2, p1, v0, v1}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->commitFail(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_0
    iget-object p1, p0, Landroid/taobao/windvane/packageapp/WVPackageAppWebViewClientFilter$1;->val$zCacheResourceWrapper:Landroid/taobao/windvane/packageapp/zipapp/utils/ZCacheResourceWrapper;

    iget-object p1, p1, Landroid/taobao/windvane/packageapp/zipapp/utils/ZCacheResourceWrapper;->zCacheResourceResponse:Lcom/taobao/zcache/model/ZCacheResourceResponse;

    iget-boolean p1, p1, Lcom/taobao/zcache/model/ZCacheResourceResponse;->isSuccess:Z

    if-eqz p1, :cond_1

    const-string p1, "ZCache\u8bf7\u6c42\u5728\u6b63\u5e38\u65f6\u9650\u5185\u8fd4\u56de"

    .line 8
    invoke-static {v2, p1}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->commitSuccess(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method
