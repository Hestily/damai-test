.class public Landroid/taobao/windvane/packageapp/WVPackageAppService;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/windvane/packageapp/WVPackageAppService$IPackageZipPrefixAdapter;
    }
.end annotation


# static fields
.field private static packageZipPrefixAdapter:Landroid/taobao/windvane/packageapp/WVPackageAppService$IPackageZipPrefixAdapter;

.field private static wvPackageApp:Landroid/taobao/windvane/packageapp/WVPackageAppConfigInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPackageZipPrefixAdapter()Landroid/taobao/windvane/packageapp/WVPackageAppService$IPackageZipPrefixAdapter;
    .locals 1

    .line 1
    sget-object v0, Landroid/taobao/windvane/packageapp/WVPackageAppService;->packageZipPrefixAdapter:Landroid/taobao/windvane/packageapp/WVPackageAppService$IPackageZipPrefixAdapter;

    return-object v0
.end method

.method public static getWvPackageAppConfig()Landroid/taobao/windvane/packageapp/WVPackageAppConfigInterface;
    .locals 1

    .line 1
    sget-object v0, Landroid/taobao/windvane/packageapp/WVPackageAppService;->wvPackageApp:Landroid/taobao/windvane/packageapp/WVPackageAppConfigInterface;

    return-object v0
.end method

.method public static registerWvPackageAppConfig(Landroid/taobao/windvane/packageapp/WVPackageAppConfigInterface;)V
    .locals 0

    .line 1
    sput-object p0, Landroid/taobao/windvane/packageapp/WVPackageAppService;->wvPackageApp:Landroid/taobao/windvane/packageapp/WVPackageAppConfigInterface;

    return-void
.end method

.method static setPackageZipPrefixAdapter(Landroid/taobao/windvane/packageapp/WVPackageAppService$IPackageZipPrefixAdapter;)V
    .locals 0

    .line 1
    sput-object p0, Landroid/taobao/windvane/packageapp/WVPackageAppService;->packageZipPrefixAdapter:Landroid/taobao/windvane/packageapp/WVPackageAppService$IPackageZipPrefixAdapter;

    return-void
.end method
