.class final Landroidx/compose/foundation/pager/AwaitLazyListStateSet$waitFinalLazyListSetting$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/pager/AwaitLazyListStateSet;->waitFinalLazyListSetting(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.compose.foundation.pager.AwaitLazyListStateSet"
    f = "PagerState.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x18c
    }
    m = "waitFinalLazyListSetting"
    n = {
        "this",
        "previousContinuation"
    }
    s = {
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Landroidx/compose/foundation/pager/AwaitLazyListStateSet;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/pager/AwaitLazyListStateSet;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/pager/AwaitLazyListStateSet;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/foundation/pager/AwaitLazyListStateSet$waitFinalLazyListSetting$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/pager/AwaitLazyListStateSet$waitFinalLazyListSetting$1;->this$0:Landroidx/compose/foundation/pager/AwaitLazyListStateSet;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/pager/AwaitLazyListStateSet$waitFinalLazyListSetting$1;->result:Ljava/lang/Object;

    iget p1, p0, Landroidx/compose/foundation/pager/AwaitLazyListStateSet$waitFinalLazyListSetting$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/compose/foundation/pager/AwaitLazyListStateSet$waitFinalLazyListSetting$1;->label:I

    iget-object p1, p0, Landroidx/compose/foundation/pager/AwaitLazyListStateSet$waitFinalLazyListSetting$1;->this$0:Landroidx/compose/foundation/pager/AwaitLazyListStateSet;

    invoke-virtual {p1, p0}, Landroidx/compose/foundation/pager/AwaitLazyListStateSet;->waitFinalLazyListSetting(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
