.class public Landroid/taobao/windvane/packageapp/WVPackageAppConfig;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/taobao/windvane/packageapp/WVPackageAppConfigInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGlobalConfig()Landroid/taobao/windvane/packageapp/zipapp/data/ZipGlobalConfig;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public requestFullConfigNextTime()V
    .locals 0

    return-void
.end method

.method public saveLocalConfig(Landroid/taobao/windvane/packageapp/zipapp/data/ZipGlobalConfig;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public updateGlobalConfig(ZLandroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/webkit/ValueCallback<",
            "Landroid/taobao/windvane/packageapp/zipapp/data/ZipGlobalConfig;",
            ">;",
            "Landroid/webkit/ValueCallback<",
            "Landroid/taobao/windvane/WindvaneException;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    return-void
.end method
