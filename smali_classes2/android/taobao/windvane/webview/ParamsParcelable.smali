.class public Landroid/taobao/windvane/webview/ParamsParcelable;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/taobao/windvane/webview/ParamsParcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private jsbridgeEnabled:Z

.field private navBarEnabled:Z

.field private showLoading:Z

.field private supportPullRefresh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/taobao/windvane/webview/ParamsParcelable$1;

    invoke-direct {v0}, Landroid/taobao/windvane/webview/ParamsParcelable$1;-><init>()V

    sput-object v0, Landroid/taobao/windvane/webview/ParamsParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->showLoading:Z

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->supportPullRefresh:Z

    .line 4
    iput-boolean v0, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->navBarEnabled:Z

    .line 5
    iput-boolean v0, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->jsbridgeEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->showLoading:Z

    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->supportPullRefresh:Z

    .line 9
    iput-boolean v0, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->navBarEnabled:Z

    .line 10
    iput-boolean v0, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->jsbridgeEnabled:Z

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->showLoading:Z

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->supportPullRefresh:Z

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->navBarEnabled:Z

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ne p1, v0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->jsbridgeEnabled:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isJsbridgeEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->jsbridgeEnabled:Z

    return v0
.end method

.method public isNavBarEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->navBarEnabled:Z

    return v0
.end method

.method public isShowLoading()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->showLoading:Z

    return v0
.end method

.method public isSupportPullRefresh()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->supportPullRefresh:Z

    return v0
.end method

.method public setJsbridgeEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->jsbridgeEnabled:Z

    return-void
.end method

.method public setNavBarEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->navBarEnabled:Z

    return-void
.end method

.method public setShowLoading(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->showLoading:Z

    return-void
.end method

.method public setSupportPullRefresh(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->supportPullRefresh:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-boolean p2, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->showLoading:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-boolean p2, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->supportPullRefresh:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-boolean p2, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->navBarEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-boolean p2, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->jsbridgeEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
