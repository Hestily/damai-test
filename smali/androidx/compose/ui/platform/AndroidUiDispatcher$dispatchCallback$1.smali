.class public final Landroidx/compose/ui/platform/AndroidUiDispatcher$dispatchCallback$1;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/platform/AndroidUiDispatcher;-><init>(Landroid/view/Choreographer;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/ui/platform/AndroidUiDispatcher;


# direct methods
.method constructor <init>(Landroidx/compose/ui/platform/AndroidUiDispatcher;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher$dispatchCallback$1;->this$0:Landroidx/compose/ui/platform/AndroidUiDispatcher;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher$dispatchCallback$1;->this$0:Landroidx/compose/ui/platform/AndroidUiDispatcher;

    invoke-static {v0}, Landroidx/compose/ui/platform/AndroidUiDispatcher;->access$getHandler$p(Landroidx/compose/ui/platform/AndroidUiDispatcher;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher$dispatchCallback$1;->this$0:Landroidx/compose/ui/platform/AndroidUiDispatcher;

    invoke-static {v0}, Landroidx/compose/ui/platform/AndroidUiDispatcher;->access$performTrampolineDispatch(Landroidx/compose/ui/platform/AndroidUiDispatcher;)V

    .line 3
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher$dispatchCallback$1;->this$0:Landroidx/compose/ui/platform/AndroidUiDispatcher;

    invoke-static {v0, p1, p2}, Landroidx/compose/ui/platform/AndroidUiDispatcher;->access$performFrameDispatch(Landroidx/compose/ui/platform/AndroidUiDispatcher;J)V

    return-void
.end method

.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher$dispatchCallback$1;->this$0:Landroidx/compose/ui/platform/AndroidUiDispatcher;

    invoke-static {v0}, Landroidx/compose/ui/platform/AndroidUiDispatcher;->access$performTrampolineDispatch(Landroidx/compose/ui/platform/AndroidUiDispatcher;)V

    .line 2
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher$dispatchCallback$1;->this$0:Landroidx/compose/ui/platform/AndroidUiDispatcher;

    invoke-static {v0}, Landroidx/compose/ui/platform/AndroidUiDispatcher;->access$getLock$p(Landroidx/compose/ui/platform/AndroidUiDispatcher;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher$dispatchCallback$1;->this$0:Landroidx/compose/ui/platform/AndroidUiDispatcher;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {v1}, Landroidx/compose/ui/platform/AndroidUiDispatcher;->access$getToRunOnFrame$p(Landroidx/compose/ui/platform/AndroidUiDispatcher;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v1}, Landroidx/compose/ui/platform/AndroidUiDispatcher;->getChoreographer()Landroid/view/Choreographer;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    const/4 v2, 0x0

    .line 6
    invoke-static {v1, v2}, Landroidx/compose/ui/platform/AndroidUiDispatcher;->access$setScheduledFrameDispatch$p(Landroidx/compose/ui/platform/AndroidUiDispatcher;Z)V

    .line 7
    :cond_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
