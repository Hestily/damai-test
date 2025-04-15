.class public final Landroidx/compose/foundation/FocusableKt$focusable$2$3$1$invoke$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/FocusableKt$focusable$2$3$1;->invoke(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $pinHandle$delegate$inlined:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/MutableState;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/FocusableKt$focusable$2$3$1$invoke$$inlined$onDispose$1;->$pinHandle$delegate$inlined:Landroidx/compose/runtime/MutableState;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/FocusableKt$focusable$2$3$1$invoke$$inlined$onDispose$1;->$pinHandle$delegate$inlined:Landroidx/compose/runtime/MutableState;

    invoke-static {v0}, Landroidx/compose/foundation/FocusableKt$focusable$2;->access$invoke$lambda$9(Landroidx/compose/runtime/MutableState;)Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;->unpin()V

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/FocusableKt$focusable$2$3$1$invoke$$inlined$onDispose$1;->$pinHandle$delegate$inlined:Landroidx/compose/runtime/MutableState;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/compose/foundation/FocusableKt$focusable$2;->access$invoke$lambda$10(Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;)V

    return-void
.end method
