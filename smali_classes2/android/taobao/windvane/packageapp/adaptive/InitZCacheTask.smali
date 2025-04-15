.class public Landroid/taobao/windvane/packageapp/adaptive/InitZCacheTask;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/app/Application;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/taobao/zcache/config/ZCacheAdapterManager;->getInstance()Lcom/taobao/zcache/config/ZCacheAdapterManager;

    move-result-object p1

    new-instance p2, Landroid/taobao/windvane/packageapp/adaptive/ZCacheAdapter;

    invoke-direct {p2}, Landroid/taobao/windvane/packageapp/adaptive/ZCacheAdapter;-><init>()V

    invoke-virtual {p1, p2}, Lcom/taobao/zcache/config/ZCacheAdapterManager;->setUpdateImpl(Lcom/taobao/zcache/config/IZCacheUpdate;)V

    return-void
.end method
