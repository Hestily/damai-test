.class final Landroidx/compose/material/SwipeableV2State$animateTo$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Taobao"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/SwipeableV2State;->animateTo(Ljava/lang/Object;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/foundation/gestures/DragScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.compose.material.SwipeableV2State$animateTo$2"
    f = "SwipeableV2.kt"
    i = {}
    l = {
        0xfe
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $targetOffset:F

.field final synthetic $velocity:F

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/compose/material/SwipeableV2State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/material/SwipeableV2State<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/material/SwipeableV2State;FFLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/SwipeableV2State<",
            "TT;>;FF",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/material/SwipeableV2State$animateTo$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material/SwipeableV2State$animateTo$2;->this$0:Landroidx/compose/material/SwipeableV2State;

    iput p2, p0, Landroidx/compose/material/SwipeableV2State$animateTo$2;->$targetOffset:F

    iput p3, p0, Landroidx/compose/material/SwipeableV2State$animateTo$2;->$velocity:F

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Landroidx/compose/material/SwipeableV2State$animateTo$2;

    iget-object v1, p0, Landroidx/compose/material/SwipeableV2State$animateTo$2;->this$0:Landroidx/compose/material/SwipeableV2State;

    iget v2, p0, Landroidx/compose/material/SwipeableV2State$animateTo$2;->$targetOffset:F

    iget v3, p0, Landroidx/compose/material/SwipeableV2State$animateTo$2;->$velocity:F

    invoke-direct {v0, v1, v2, v3, p2}, Landroidx/compose/material/SwipeableV2State$animateTo$2;-><init>(Landroidx/compose/material/SwipeableV2State;FFLkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/compose/material/SwipeableV2State$animateTo$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/gestures/DragScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroidx/compose/foundation/gestures/DragScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/DragScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/SwipeableV2State$animateTo$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/compose/material/SwipeableV2State$animateTo$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/compose/material/SwipeableV2State$animateTo$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/foundation/gestures/DragScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/SwipeableV2State$animateTo$2;->invoke(Landroidx/compose/foundation/gestures/DragScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Landroidx/compose/material/SwipeableV2State$animateTo$2;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/material/SwipeableV2State$animateTo$2;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/foundation/gestures/DragScope;

    .line 4
    iget-object v1, p0, Landroidx/compose/material/SwipeableV2State$animateTo$2;->this$0:Landroidx/compose/material/SwipeableV2State;

    invoke-static {v1, v3}, Landroidx/compose/material/SwipeableV2State;->access$setAnimationRunning(Landroidx/compose/material/SwipeableV2State;Z)V

    .line 5
    new-instance v1, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    iget-object v4, p0, Landroidx/compose/material/SwipeableV2State$animateTo$2;->this$0:Landroidx/compose/material/SwipeableV2State;

    invoke-static {v4}, Landroidx/compose/material/SwipeableV2State;->access$getDragPosition$p(Landroidx/compose/material/SwipeableV2State;)Landroidx/compose/runtime/MutableState;

    move-result-object v4

    invoke-interface {v4}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v5

    iput v5, v1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 6
    :try_start_1
    iget v6, p0, Landroidx/compose/material/SwipeableV2State$animateTo$2;->$targetOffset:F

    iget v7, p0, Landroidx/compose/material/SwipeableV2State$animateTo$2;->$velocity:F

    iget-object v4, p0, Landroidx/compose/material/SwipeableV2State$animateTo$2;->this$0:Landroidx/compose/material/SwipeableV2State;

    invoke-virtual {v4}, Landroidx/compose/material/SwipeableV2State;->getAnimationSpec()Landroidx/compose/animation/core/AnimationSpec;

    move-result-object v8

    new-instance v9, Landroidx/compose/material/SwipeableV2State$animateTo$2$1;

    iget-object v4, p0, Landroidx/compose/material/SwipeableV2State$animateTo$2;->this$0:Landroidx/compose/material/SwipeableV2State;

    invoke-direct {v9, p1, v1, v4}, Landroidx/compose/material/SwipeableV2State$animateTo$2$1;-><init>(Landroidx/compose/foundation/gestures/DragScope;Lkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/material/SwipeableV2State;)V

    iput v3, p0, Landroidx/compose/material/SwipeableV2State$animateTo$2;->label:I

    move-object v10, p0

    invoke-static/range {v5 .. v10}, Landroidx/compose/animation/core/SuspendAnimationKt;->animate(FFFLandroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v0, :cond_2

    return-object v0

    .line 7
    :cond_2
    :goto_0
    iget-object p1, p0, Landroidx/compose/material/SwipeableV2State$animateTo$2;->this$0:Landroidx/compose/material/SwipeableV2State;

    invoke-static {p1, v2}, Landroidx/compose/material/SwipeableV2State;->access$setAnimationRunning(Landroidx/compose/material/SwipeableV2State;Z)V

    .line 8
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 9
    :goto_1
    iget-object v0, p0, Landroidx/compose/material/SwipeableV2State$animateTo$2;->this$0:Landroidx/compose/material/SwipeableV2State;

    invoke-static {v0, v2}, Landroidx/compose/material/SwipeableV2State;->access$setAnimationRunning(Landroidx/compose/material/SwipeableV2State;Z)V

    throw p1
.end method
