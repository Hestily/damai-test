.class Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mRefreshing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$SavedState$1;

    invoke-direct {v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$SavedState$1;-><init>()V

    sput-object v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$SavedState;->mRefreshing:Z

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2
    iput-boolean p2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$SavedState;->mRefreshing:Z

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget-boolean p2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$SavedState;->mRefreshing:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
