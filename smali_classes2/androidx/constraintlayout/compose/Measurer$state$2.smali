.class final Landroidx/constraintlayout/compose/Measurer$state$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Taobao"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/constraintlayout/compose/Measurer;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroidx/constraintlayout/compose/State;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0006\n\u0002\u0018\u0002\n\u0000\u0010\u0001\u001a\u00020\u0000H\n"
    }
    d2 = {
        "Landroidx/constraintlayout/compose/State;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/constraintlayout/compose/Measurer;


# direct methods
.method constructor <init>(Landroidx/constraintlayout/compose/Measurer;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/compose/Measurer$state$2;->this$0:Landroidx/constraintlayout/compose/Measurer;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/constraintlayout/compose/State;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/constraintlayout/compose/State;

    iget-object v1, p0, Landroidx/constraintlayout/compose/Measurer$state$2;->this$0:Landroidx/constraintlayout/compose/Measurer;

    invoke-virtual {v1}, Landroidx/constraintlayout/compose/Measurer;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/constraintlayout/compose/State;-><init>(Landroidx/compose/ui/unit/Density;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroidx/constraintlayout/compose/Measurer$state$2;->invoke()Landroidx/constraintlayout/compose/State;

    move-result-object v0

    return-object v0
.end method
