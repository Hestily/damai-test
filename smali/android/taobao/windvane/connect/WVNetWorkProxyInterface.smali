.class public interface abstract Landroid/taobao/windvane/connect/WVNetWorkProxyInterface;
.super Ljava/lang/Object;
.source "Taobao"


# virtual methods
.method public abstract getWebResourceResponse(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;ZZI)Landroid/taobao/windvane/connect/IResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZI)",
            "Landroid/taobao/windvane/connect/IResponse;"
        }
    .end annotation
.end method

.method public abstract isSupportSpdy(Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public abstract resetStat(Ljava/lang/String;)V
.end method
