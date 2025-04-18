.class public final Landroidx/compose/ui/text/android/LayoutIntrinsics;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation build Landroidx/compose/ui/text/android/InternalPlatformTextApi;
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final boringMetrics$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final maxIntrinsicWidth$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final minIntrinsicWidth$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/text/TextPaint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "charSequence"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "textPaint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Landroidx/compose/ui/text/android/LayoutIntrinsics$boringMetrics$2;

    invoke-direct {v1, p3, p1, p2}, Landroidx/compose/ui/text/android/LayoutIntrinsics$boringMetrics$2;-><init>(ILjava/lang/CharSequence;Landroid/text/TextPaint;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p3

    iput-object p3, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->boringMetrics$delegate:Lkotlin/Lazy;

    .line 3
    new-instance p3, Landroidx/compose/ui/text/android/LayoutIntrinsics$minIntrinsicWidth$2;

    invoke-direct {p3, p1, p2}, Landroidx/compose/ui/text/android/LayoutIntrinsics$minIntrinsicWidth$2;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;)V

    invoke-static {v0, p3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p3

    iput-object p3, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->minIntrinsicWidth$delegate:Lkotlin/Lazy;

    .line 4
    new-instance p3, Landroidx/compose/ui/text/android/LayoutIntrinsics$maxIntrinsicWidth$2;

    invoke-direct {p3, p0, p1, p2}, Landroidx/compose/ui/text/android/LayoutIntrinsics$maxIntrinsicWidth$2;-><init>(Landroidx/compose/ui/text/android/LayoutIntrinsics;Ljava/lang/CharSequence;Landroid/text/TextPaint;)V

    invoke-static {v0, p3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->maxIntrinsicWidth$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final getBoringMetrics()Landroid/text/BoringLayout$Metrics;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->boringMetrics$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/BoringLayout$Metrics;

    return-object v0
.end method

.method public final getMaxIntrinsicWidth()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->maxIntrinsicWidth$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method public final getMinIntrinsicWidth()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->minIntrinsicWidth$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method
