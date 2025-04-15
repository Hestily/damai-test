.class final Landroidx/compose/runtime/DisposableEffectImpl;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroidx/compose/runtime/RememberObserver;


# instance fields
.field private final effect:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/runtime/DisposableEffectScope;",
            "Landroidx/compose/runtime/DisposableEffectResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private onDispose:Landroidx/compose/runtime/DisposableEffectResult;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/runtime/DisposableEffectScope;",
            "+",
            "Landroidx/compose/runtime/DisposableEffectResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "effect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/compose/runtime/DisposableEffectImpl;->effect:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public onAbandoned()V
    .locals 0

    return-void
.end method

.method public onForgotten()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/DisposableEffectImpl;->onDispose:Landroidx/compose/runtime/DisposableEffectResult;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/runtime/DisposableEffectResult;->dispose()V

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/compose/runtime/DisposableEffectImpl;->onDispose:Landroidx/compose/runtime/DisposableEffectResult;

    return-void
.end method

.method public onRemembered()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/DisposableEffectImpl;->effect:Lkotlin/jvm/functions/Function1;

    invoke-static {}, Landroidx/compose/runtime/EffectsKt;->access$getInternalDisposableEffectScope$p()Landroidx/compose/runtime/DisposableEffectScope;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/DisposableEffectResult;

    iput-object v0, p0, Landroidx/compose/runtime/DisposableEffectImpl;->onDispose:Landroidx/compose/runtime/DisposableEffectResult;

    return-void
.end method
