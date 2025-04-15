.class public final Landroidx/compose/foundation/lazy/staggeredgrid/ComposableSingletons$LazyStaggeredGridItemProviderKt;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field public static final INSTANCE:Landroidx/compose/foundation/lazy/staggeredgrid/ComposableSingletons$LazyStaggeredGridItemProviderKt;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static lambda-1:Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function4<",
            "Landroidx/compose/foundation/lazy/layout/IntervalList$Interval<",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridIntervalContent;",
            ">;",
            "Ljava/lang/Integer;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/compose/foundation/lazy/staggeredgrid/ComposableSingletons$LazyStaggeredGridItemProviderKt;

    invoke-direct {v0}, Landroidx/compose/foundation/lazy/staggeredgrid/ComposableSingletons$LazyStaggeredGridItemProviderKt;-><init>()V

    sput-object v0, Landroidx/compose/foundation/lazy/staggeredgrid/ComposableSingletons$LazyStaggeredGridItemProviderKt;->INSTANCE:Landroidx/compose/foundation/lazy/staggeredgrid/ComposableSingletons$LazyStaggeredGridItemProviderKt;

    .line 1
    sget-object v0, Landroidx/compose/foundation/lazy/staggeredgrid/ComposableSingletons$LazyStaggeredGridItemProviderKt$lambda-1$1;->INSTANCE:Landroidx/compose/foundation/lazy/staggeredgrid/ComposableSingletons$LazyStaggeredGridItemProviderKt$lambda-1$1;

    const v1, 0x202672ca

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/lazy/staggeredgrid/ComposableSingletons$LazyStaggeredGridItemProviderKt;->lambda-1:Lkotlin/jvm/functions/Function4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLambda-1$foundation_release()Lkotlin/jvm/functions/Function4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function4<",
            "Landroidx/compose/foundation/lazy/layout/IntervalList$Interval<",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridIntervalContent;",
            ">;",
            "Ljava/lang/Integer;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Landroidx/compose/foundation/lazy/staggeredgrid/ComposableSingletons$LazyStaggeredGridItemProviderKt;->lambda-1:Lkotlin/jvm/functions/Function4;

    return-object v0
.end method
