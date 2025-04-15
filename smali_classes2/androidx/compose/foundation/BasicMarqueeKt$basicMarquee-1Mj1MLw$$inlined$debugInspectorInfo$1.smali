.class public final Landroidx/compose/foundation/BasicMarqueeKt$basicMarquee-1Mj1MLw$$inlined$debugInspectorInfo$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Taobao"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/BasicMarqueeKt;->basicMarquee-1Mj1MLw(Landroidx/compose/ui/Modifier;IIIILandroidx/compose/foundation/MarqueeSpacing;F)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/platform/InspectorInfo;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $animationMode$inlined:I

.field final synthetic $delayMillis$inlined:I

.field final synthetic $initialDelayMillis$inlined:I

.field final synthetic $iterations$inlined:I

.field final synthetic $spacing$inlined:Landroidx/compose/foundation/MarqueeSpacing;

.field final synthetic $velocity$inlined:F


# direct methods
.method public constructor <init>(IIIILandroidx/compose/foundation/MarqueeSpacing;F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/BasicMarqueeKt$basicMarquee-1Mj1MLw$$inlined$debugInspectorInfo$1;->$iterations$inlined:I

    iput p2, p0, Landroidx/compose/foundation/BasicMarqueeKt$basicMarquee-1Mj1MLw$$inlined$debugInspectorInfo$1;->$animationMode$inlined:I

    iput p3, p0, Landroidx/compose/foundation/BasicMarqueeKt$basicMarquee-1Mj1MLw$$inlined$debugInspectorInfo$1;->$delayMillis$inlined:I

    iput p4, p0, Landroidx/compose/foundation/BasicMarqueeKt$basicMarquee-1Mj1MLw$$inlined$debugInspectorInfo$1;->$initialDelayMillis$inlined:I

    iput-object p5, p0, Landroidx/compose/foundation/BasicMarqueeKt$basicMarquee-1Mj1MLw$$inlined$debugInspectorInfo$1;->$spacing$inlined:Landroidx/compose/foundation/MarqueeSpacing;

    iput p6, p0, Landroidx/compose/foundation/BasicMarqueeKt$basicMarquee-1Mj1MLw$$inlined$debugInspectorInfo$1;->$velocity$inlined:F

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/ui/platform/InspectorInfo;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/BasicMarqueeKt$basicMarquee-1Mj1MLw$$inlined$debugInspectorInfo$1;->invoke(Landroidx/compose/ui/platform/InspectorInfo;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 3
    .param p1    # Landroidx/compose/ui/platform/InspectorInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "$this$null"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "basicMarquee"

    .line 2
    invoke-virtual {p1, v0}, Landroidx/compose/ui/platform/InspectorInfo;->setName(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    iget v1, p0, Landroidx/compose/foundation/BasicMarqueeKt$basicMarquee-1Mj1MLw$$inlined$debugInspectorInfo$1;->$iterations$inlined:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "iterations"

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    iget v1, p0, Landroidx/compose/foundation/BasicMarqueeKt$basicMarquee-1Mj1MLw$$inlined$debugInspectorInfo$1;->$animationMode$inlined:I

    invoke-static {v1}, Landroidx/compose/foundation/MarqueeAnimationMode;->box-impl(I)Landroidx/compose/foundation/MarqueeAnimationMode;

    move-result-object v1

    const-string v2, "animationMode"

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    iget v1, p0, Landroidx/compose/foundation/BasicMarqueeKt$basicMarquee-1Mj1MLw$$inlined$debugInspectorInfo$1;->$delayMillis$inlined:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "delayMillis"

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    iget v1, p0, Landroidx/compose/foundation/BasicMarqueeKt$basicMarquee-1Mj1MLw$$inlined$debugInspectorInfo$1;->$initialDelayMillis$inlined:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "initialDelayMillis"

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/foundation/BasicMarqueeKt$basicMarquee-1Mj1MLw$$inlined$debugInspectorInfo$1;->$spacing$inlined:Landroidx/compose/foundation/MarqueeSpacing;

    const-string/jumbo v2, "spacing"

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object p1

    iget v0, p0, Landroidx/compose/foundation/BasicMarqueeKt$basicMarquee-1Mj1MLw$$inlined$debugInspectorInfo$1;->$velocity$inlined:F

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v0

    const-string/jumbo v1, "velocity"

    invoke-virtual {p1, v1, v0}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
