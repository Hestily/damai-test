.class public interface abstract Landroid/taobao/windvane/packageapp/WVPackageAppConfigInterface;
.super Ljava/lang/Object;
.source "Taobao"


# virtual methods
.method public abstract getGlobalConfig()Landroid/taobao/windvane/packageapp/zipapp/data/ZipGlobalConfig;
.end method

.method public abstract requestFullConfigNextTime()V
.end method

.method public abstract saveLocalConfig(Landroid/taobao/windvane/packageapp/zipapp/data/ZipGlobalConfig;)Z
.end method

.method public abstract updateGlobalConfig(ZLandroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
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
.end method
