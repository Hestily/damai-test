.class public abstract Landroid/taobao/windvane/config/WVConfigHandler;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field private isUpdating:Z

.field private snapshotN:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/taobao/windvane/config/WVConfigHandler;->isUpdating:Z

    const-string v0, "0"

    .line 3
    iput-object v0, p0, Landroid/taobao/windvane/config/WVConfigHandler;->snapshotN:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSnapshotN()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/config/WVConfigHandler;->snapshotN:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateStatus()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/taobao/windvane/config/WVConfigHandler;->isUpdating:Z

    return v0
.end method

.method public setSnapshotN(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/config/WVConfigHandler;->snapshotN:Ljava/lang/String;

    return-void
.end method

.method public setUpdateStatus(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/taobao/windvane/config/WVConfigHandler;->isUpdating:Z

    return-void
.end method

.method public abstract update(Ljava/lang/String;Landroid/taobao/windvane/config/WVConfigUpdateCallback;)V
.end method
