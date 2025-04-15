.class public Landroid/taobao/windvane/packageapp/WVPackageAppRuntime;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/windvane/packageapp/WVPackageAppRuntime$ZCacheResourceCallback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PackageApp-Runtime"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getZCacheResourceResponse(Ljava/lang/String;)Landroid/taobao/windvane/packageapp/zipapp/ZCacheResourceResponse;
    .locals 5

    .line 2
    invoke-static {p0}, Landroid/taobao/windvane/util/WVUrlUtil;->removeQueryParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {}, Lcom/taobao/zcache/ZCacheInitTask;->getInstance()Lcom/taobao/zcache/ZCacheInitTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/zcache/ZCacheInitTask;->init()V

    .line 4
    invoke-static {}, Lcom/taobao/zcache/ZCacheManager;->instance()Lcom/taobao/zcache/ZCacheManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taobao/zcache/ZCacheManager;->getZCacheResource(Ljava/lang/String;)Lcom/taobao/zcache/model/ZCacheResourceResponse;

    move-result-object v0

    .line 5
    new-instance v1, Landroid/taobao/windvane/packageapp/zipapp/ZCacheResourceResponse;

    invoke-direct {v1}, Landroid/taobao/windvane/packageapp/zipapp/ZCacheResourceResponse;-><init>()V

    const-string/jumbo v2, "weex use ZCache 3.0, url=["

    const-string v3, "ZCache"

    if-eqz v0, :cond_0

    .line 6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "], with response:["

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, v0, Lcom/taobao/zcache/model/ZCacheResourceResponse;->isSuccess:Z

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p0, v0, Lcom/taobao/zcache/model/ZCacheResourceResponse;->encoding:Ljava/lang/String;

    iput-object p0, v1, Landroid/taobao/windvane/packageapp/zipapp/ZCacheResourceResponse;->encoding:Ljava/lang/String;

    .line 8
    iget-object p0, v0, Lcom/taobao/zcache/model/ZCacheResourceResponse;->headers:Ljava/util/Map;

    iput-object p0, v1, Landroid/taobao/windvane/packageapp/zipapp/ZCacheResourceResponse;->headers:Ljava/util/Map;

    .line 9
    iget-object p0, v0, Lcom/taobao/zcache/model/ZCacheResourceResponse;->inputStream:Ljava/io/InputStream;

    iput-object p0, v1, Landroid/taobao/windvane/packageapp/zipapp/ZCacheResourceResponse;->inputStream:Ljava/io/InputStream;

    .line 10
    iget-boolean p0, v0, Lcom/taobao/zcache/model/ZCacheResourceResponse;->isSuccess:Z

    iput-boolean p0, v1, Landroid/taobao/windvane/packageapp/zipapp/ZCacheResourceResponse;->isSuccess:Z

    .line 11
    iget-object p0, v0, Lcom/taobao/zcache/model/ZCacheResourceResponse;->mimeType:Ljava/lang/String;

    iput-object p0, v1, Landroid/taobao/windvane/packageapp/zipapp/ZCacheResourceResponse;->mimeType:Ljava/lang/String;

    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "], with response=[null]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v1
.end method

.method public static getZCacheResourceResponse(Ljava/lang/String;Landroid/taobao/windvane/packageapp/WVPackageAppRuntime$ZCacheResourceCallback;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/taobao/windvane/thread/WVThreadPool;->getInstance()Landroid/taobao/windvane/thread/WVThreadPool;

    move-result-object v0

    new-instance v1, Landroid/taobao/windvane/packageapp/WVPackageAppRuntime$1;

    invoke-direct {v1, p0, p1}, Landroid/taobao/windvane/packageapp/WVPackageAppRuntime$1;-><init>(Ljava/lang/String;Landroid/taobao/windvane/packageapp/WVPackageAppRuntime$ZCacheResourceCallback;)V

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/thread/WVThreadPool;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static isLocalVisit(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/taobao/zcache/ZCacheManager;->instance()Lcom/taobao/zcache/ZCacheManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taobao/zcache/ZCacheManager;->isResourceInstalled(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
