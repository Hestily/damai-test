.class public final Landroidx/lifecycle/ComputableLiveData$_liveData$1;
.super Landroidx/lifecycle/LiveData;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/ComputableLiveData;-><init>(Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/LiveData<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/lifecycle/ComputableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/ComputableLiveData<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/lifecycle/ComputableLiveData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/ComputableLiveData<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/lifecycle/ComputableLiveData$_liveData$1;->this$0:Landroidx/lifecycle/ComputableLiveData;

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActive()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/ComputableLiveData$_liveData$1;->this$0:Landroidx/lifecycle/ComputableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/ComputableLiveData;->getExecutor$lifecycle_livedata_release()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Landroidx/lifecycle/ComputableLiveData$_liveData$1;->this$0:Landroidx/lifecycle/ComputableLiveData;

    iget-object v1, v1, Landroidx/lifecycle/ComputableLiveData;->refreshRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
