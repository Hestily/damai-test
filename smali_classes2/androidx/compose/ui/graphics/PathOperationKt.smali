.class public final Landroidx/compose/ui/graphics/PathOperationKt;
.super Ljava/lang/Object;
.source "Taobao"


# direct methods
.method public static final getDifference(Landroidx/compose/ui/graphics/PathOperation$Companion;)I
    .locals 1
    .param p0    # Landroidx/compose/ui/graphics/PathOperation$Companion;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/PathOperation$Companion;->getDifference-b3I0S0c()I

    move-result p0

    return p0
.end method

.method public static synthetic getDifference$annotations(Landroidx/compose/ui/graphics/PathOperation$Companion;)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use PathOperation.Difference instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "PathOperation.Difference"
            imports = {
                "androidx.compose.ui.graphics.PathOperation.Difference"
            }
        .end subannotation
    .end annotation

    return-void
.end method

.method public static final getIntersect(Landroidx/compose/ui/graphics/PathOperation$Companion;)I
    .locals 1
    .param p0    # Landroidx/compose/ui/graphics/PathOperation$Companion;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/PathOperation$Companion;->getIntersect-b3I0S0c()I

    move-result p0

    return p0
.end method

.method public static synthetic getIntersect$annotations(Landroidx/compose/ui/graphics/PathOperation$Companion;)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use PathOperation.Intersect instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "PathOperation.Intersect"
            imports = {
                "androidx.compose.ui.graphics.PathOperation.Intersect"
            }
        .end subannotation
    .end annotation

    return-void
.end method

.method public static final getReverseDifference(Landroidx/compose/ui/graphics/PathOperation$Companion;)I
    .locals 1
    .param p0    # Landroidx/compose/ui/graphics/PathOperation$Companion;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/PathOperation$Companion;->getReverseDifference-b3I0S0c()I

    move-result p0

    return p0
.end method

.method public static synthetic getReverseDifference$annotations(Landroidx/compose/ui/graphics/PathOperation$Companion;)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use PathOperation.ReverseDifference instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "PathOperation.ReverseDifference"
            imports = {
                "androidx.compose.ui.graphics.PathOperation.ReverseDifference"
            }
        .end subannotation
    .end annotation

    return-void
.end method

.method public static final getUnion(Landroidx/compose/ui/graphics/PathOperation$Companion;)I
    .locals 1
    .param p0    # Landroidx/compose/ui/graphics/PathOperation$Companion;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/PathOperation$Companion;->getUnion-b3I0S0c()I

    move-result p0

    return p0
.end method

.method public static synthetic getUnion$annotations(Landroidx/compose/ui/graphics/PathOperation$Companion;)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use PathOperation.Union instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "PathOperation.Union"
            imports = {
                "androidx.compose.ui.graphics.PathOperation.Union"
            }
        .end subannotation
    .end annotation

    return-void
.end method

.method public static final getXor(Landroidx/compose/ui/graphics/PathOperation$Companion;)I
    .locals 1
    .param p0    # Landroidx/compose/ui/graphics/PathOperation$Companion;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/PathOperation$Companion;->getXor-b3I0S0c()I

    move-result p0

    return p0
.end method

.method public static synthetic getXor$annotations(Landroidx/compose/ui/graphics/PathOperation$Companion;)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use PathOperation.Xor instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "PathOperation.Xor"
            imports = {
                "androidx.compose.ui.graphics.PathOperation.Xor"
            }
        .end subannotation
    .end annotation

    return-void
.end method
