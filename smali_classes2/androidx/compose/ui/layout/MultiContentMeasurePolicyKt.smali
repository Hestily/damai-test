.class public final Landroidx/compose/ui/layout/MultiContentMeasurePolicyKt;
.super Ljava/lang/Object;
.source "Taobao"


# direct methods
.method public static final createMeasurePolicy(Landroidx/compose/ui/layout/MultiContentMeasurePolicy;)Landroidx/compose/ui/layout/MeasurePolicy;
    .locals 1
    .param p0    # Landroidx/compose/ui/layout/MultiContentMeasurePolicy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "measurePolicy"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroidx/compose/ui/layout/MultiContentMeasurePolicyKt$createMeasurePolicy$1$1;

    invoke-direct {v0, p0}, Landroidx/compose/ui/layout/MultiContentMeasurePolicyKt$createMeasurePolicy$1$1;-><init>(Landroidx/compose/ui/layout/MultiContentMeasurePolicy;)V

    return-object v0
.end method
