.class final Landroidx/constraintlayout/compose/Measurer$drawDebugBounds$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Taobao"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/constraintlayout/compose/Measurer;->drawDebugBounds(Landroidx/compose/foundation/layout/BoxScope;FLandroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {}
    d2 = {}
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $$changed:I

.field final synthetic $forcedScaleFactor:F

.field final synthetic $this_drawDebugBounds:Landroidx/compose/foundation/layout/BoxScope;

.field final synthetic $tmp0_rcvr:Landroidx/constraintlayout/compose/Measurer;


# direct methods
.method constructor <init>(Landroidx/constraintlayout/compose/Measurer;Landroidx/compose/foundation/layout/BoxScope;FI)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/compose/Measurer$drawDebugBounds$2;->$tmp0_rcvr:Landroidx/constraintlayout/compose/Measurer;

    iput-object p2, p0, Landroidx/constraintlayout/compose/Measurer$drawDebugBounds$2;->$this_drawDebugBounds:Landroidx/compose/foundation/layout/BoxScope;

    iput p3, p0, Landroidx/constraintlayout/compose/Measurer$drawDebugBounds$2;->$forcedScaleFactor:F

    iput p4, p0, Landroidx/constraintlayout/compose/Measurer$drawDebugBounds$2;->$$changed:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/compose/Measurer$drawDebugBounds$2;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 3
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p2, p0, Landroidx/constraintlayout/compose/Measurer$drawDebugBounds$2;->$tmp0_rcvr:Landroidx/constraintlayout/compose/Measurer;

    iget-object v0, p0, Landroidx/constraintlayout/compose/Measurer$drawDebugBounds$2;->$this_drawDebugBounds:Landroidx/compose/foundation/layout/BoxScope;

    iget v1, p0, Landroidx/constraintlayout/compose/Measurer$drawDebugBounds$2;->$forcedScaleFactor:F

    iget v2, p0, Landroidx/constraintlayout/compose/Measurer$drawDebugBounds$2;->$$changed:I

    or-int/lit8 v2, v2, 0x1

    invoke-virtual {p2, v0, v1, p1, v2}, Landroidx/constraintlayout/compose/Measurer;->drawDebugBounds(Landroidx/compose/foundation/layout/BoxScope;FLandroidx/compose/runtime/Composer;I)V

    return-void
.end method
