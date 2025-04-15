.class final Landroidx/compose/foundation/MarqueeModifier$spacingPx$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Taobao"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/MarqueeModifier;-><init>(IIIFLandroidx/compose/ui/unit/Density;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/foundation/MarqueeModifier;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/MarqueeModifier;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/MarqueeModifier$spacingPx$2;->this$0:Landroidx/compose/foundation/MarqueeModifier;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Integer;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/MarqueeModifier$spacingPx$2;->this$0:Landroidx/compose/foundation/MarqueeModifier;

    invoke-virtual {v0}, Landroidx/compose/foundation/MarqueeModifier;->getSpacing()Landroidx/compose/foundation/MarqueeSpacing;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/foundation/MarqueeModifier$spacingPx$2;->this$0:Landroidx/compose/foundation/MarqueeModifier;

    .line 3
    invoke-static {v1}, Landroidx/compose/foundation/MarqueeModifier;->access$getDensity$p(Landroidx/compose/foundation/MarqueeModifier;)Landroidx/compose/ui/unit/Density;

    move-result-object v2

    invoke-static {v1}, Landroidx/compose/foundation/MarqueeModifier;->access$getContentWidth(Landroidx/compose/foundation/MarqueeModifier;)I

    move-result v3

    invoke-static {v1}, Landroidx/compose/foundation/MarqueeModifier;->access$getContainerWidth(Landroidx/compose/foundation/MarqueeModifier;)I

    move-result v1

    invoke-interface {v0, v2, v3, v1}, Landroidx/compose/foundation/MarqueeSpacing;->calculateSpacing(Landroidx/compose/ui/unit/Density;II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/MarqueeModifier$spacingPx$2;->invoke()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
