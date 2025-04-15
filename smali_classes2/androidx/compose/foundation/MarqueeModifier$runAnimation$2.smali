.class final Landroidx/compose/foundation/MarqueeModifier$runAnimation$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Taobao"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/MarqueeModifier;->runAnimation(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/foundation/MarqueeModifier;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/MarqueeModifier;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/MarqueeModifier$runAnimation$2;->this$0:Landroidx/compose/foundation/MarqueeModifier;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Float;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/MarqueeModifier$runAnimation$2;->this$0:Landroidx/compose/foundation/MarqueeModifier;

    invoke-static {v0}, Landroidx/compose/foundation/MarqueeModifier;->access$getContentWidth(Landroidx/compose/foundation/MarqueeModifier;)I

    move-result v0

    iget-object v1, p0, Landroidx/compose/foundation/MarqueeModifier$runAnimation$2;->this$0:Landroidx/compose/foundation/MarqueeModifier;

    invoke-static {v1}, Landroidx/compose/foundation/MarqueeModifier;->access$getContainerWidth(Landroidx/compose/foundation/MarqueeModifier;)I

    move-result v1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    return-object v2

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/MarqueeModifier$runAnimation$2;->this$0:Landroidx/compose/foundation/MarqueeModifier;

    invoke-virtual {v0}, Landroidx/compose/foundation/MarqueeModifier;->getAnimationMode-ZbEOnfQ()I

    move-result v0

    sget-object v1, Landroidx/compose/foundation/MarqueeAnimationMode;->Companion:Landroidx/compose/foundation/MarqueeAnimationMode$Companion;

    invoke-virtual {v1}, Landroidx/compose/foundation/MarqueeAnimationMode$Companion;->getWhileFocused-ZbEOnfQ()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/foundation/MarqueeAnimationMode;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/foundation/MarqueeModifier$runAnimation$2;->this$0:Landroidx/compose/foundation/MarqueeModifier;

    invoke-static {v0}, Landroidx/compose/foundation/MarqueeModifier;->access$getHasFocus(Landroidx/compose/foundation/MarqueeModifier;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v2

    .line 4
    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/MarqueeModifier$runAnimation$2;->this$0:Landroidx/compose/foundation/MarqueeModifier;

    invoke-static {v0}, Landroidx/compose/foundation/MarqueeModifier;->access$getContentWidth(Landroidx/compose/foundation/MarqueeModifier;)I

    move-result v0

    iget-object v1, p0, Landroidx/compose/foundation/MarqueeModifier$runAnimation$2;->this$0:Landroidx/compose/foundation/MarqueeModifier;

    invoke-static {v1}, Landroidx/compose/foundation/MarqueeModifier;->access$getSpacingPx(Landroidx/compose/foundation/MarqueeModifier;)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/MarqueeModifier$runAnimation$2;->invoke()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
