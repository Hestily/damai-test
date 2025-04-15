.class public final Landroidx/compose/ui/state/ToggleableStateKt;
.super Ljava/lang/Object;
.source "Taobao"


# direct methods
.method public static final ToggleableState(Z)Landroidx/compose/ui/state/ToggleableState;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    sget-object p0, Landroidx/compose/ui/state/ToggleableState;->On:Landroidx/compose/ui/state/ToggleableState;

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/compose/ui/state/ToggleableState;->Off:Landroidx/compose/ui/state/ToggleableState;

    :goto_0
    return-object p0
.end method
