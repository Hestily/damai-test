.class public Landroid/taobao/windvane/config/WVUpdatingInfo;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field private fromType:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

.field private version:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/taobao/windvane/config/WVUpdatingInfo;->fromType:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    .line 3
    iput-object p2, p0, Landroid/taobao/windvane/config/WVUpdatingInfo;->version:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFromType()Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/config/WVUpdatingInfo;->fromType:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/config/WVUpdatingInfo;->version:Ljava/lang/String;

    return-object v0
.end method
