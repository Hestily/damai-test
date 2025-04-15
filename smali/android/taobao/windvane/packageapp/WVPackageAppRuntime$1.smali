.class final Landroid/taobao/windvane/packageapp/WVPackageAppRuntime$1;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/packageapp/WVPackageAppRuntime;->getZCacheResourceResponse(Ljava/lang/String;Landroid/taobao/windvane/packageapp/WVPackageAppRuntime$ZCacheResourceCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$resBack:Landroid/taobao/windvane/packageapp/WVPackageAppRuntime$ZCacheResourceCallback;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/taobao/windvane/packageapp/WVPackageAppRuntime$ZCacheResourceCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/packageapp/WVPackageAppRuntime$1;->val$url:Ljava/lang/String;

    iput-object p2, p0, Landroid/taobao/windvane/packageapp/WVPackageAppRuntime$1;->val$resBack:Landroid/taobao/windvane/packageapp/WVPackageAppRuntime$ZCacheResourceCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/packageapp/WVPackageAppRuntime$1;->val$url:Ljava/lang/String;

    invoke-static {v0}, Landroid/taobao/windvane/packageapp/WVPackageAppRuntime;->getZCacheResourceResponse(Ljava/lang/String;)Landroid/taobao/windvane/packageapp/zipapp/ZCacheResourceResponse;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroid/taobao/windvane/packageapp/WVPackageAppRuntime$1;->val$resBack:Landroid/taobao/windvane/packageapp/WVPackageAppRuntime$ZCacheResourceCallback;

    invoke-interface {v1, v0}, Landroid/taobao/windvane/packageapp/WVPackageAppRuntime$ZCacheResourceCallback;->callback(Landroid/taobao/windvane/packageapp/zipapp/ZCacheResourceResponse;)V

    return-void
.end method
