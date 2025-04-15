.class public final Landroidx/constraintlayout/compose/HorizontalChainScope;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation runtime Landroidx/compose/foundation/layout/LayoutScopeMarker;
.end annotation

.annotation build Landroidx/compose/runtime/Stable;
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008\u0007\u0018\u00002\u00020\u0001B\u0011\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u001e\u0010\u001fR\u001c\u0010\u0002\u001a\u00020\u00018\u0000@\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0002\u0010\u0003\u001a\u0004\u0008\u0004\u0010\u0005R.\u0010\n\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u00070\u00068\u0000@\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\rR\u0019\u0010\u000f\u001a\u00020\u000e8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u0019\u0010\u0014\u001a\u00020\u00138\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017R\u0019\u0010\u0018\u001a\u00020\u00138\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0015\u001a\u0004\u0008\u0019\u0010\u0017R\u0019\u0010\u001a\u001a\u00020\u00138\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u0015\u001a\u0004\u0008\u001b\u0010\u0017R\u0019\u0010\u001c\u001a\u00020\u00138\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u0015\u001a\u0004\u0008\u001d\u0010\u0017\u00a8\u0006 "
    }
    d2 = {
        "Landroidx/constraintlayout/compose/HorizontalChainScope;",
        "",
        "id",
        "Ljava/lang/Object;",
        "getId$compose_release",
        "()Ljava/lang/Object;",
        "",
        "Lkotlin/Function1;",
        "Landroidx/constraintlayout/compose/State;",
        "",
        "tasks",
        "Ljava/util/List;",
        "getTasks$compose_release",
        "()Ljava/util/List;",
        "Landroidx/constraintlayout/compose/ConstrainedLayoutReference;",
        "parent",
        "Landroidx/constraintlayout/compose/ConstrainedLayoutReference;",
        "getParent",
        "()Landroidx/constraintlayout/compose/ConstrainedLayoutReference;",
        "Landroidx/constraintlayout/compose/VerticalAnchorable;",
        "start",
        "Landroidx/constraintlayout/compose/VerticalAnchorable;",
        "getStart",
        "()Landroidx/constraintlayout/compose/VerticalAnchorable;",
        "absoluteLeft",
        "getAbsoluteLeft",
        "end",
        "getEnd",
        "absoluteRight",
        "getAbsoluteRight",
        "<init>",
        "(Ljava/lang/Object;)V",
        "compose_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field private final absoluteLeft:Landroidx/constraintlayout/compose/VerticalAnchorable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final absoluteRight:Landroidx/constraintlayout/compose/VerticalAnchorable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final end:Landroidx/constraintlayout/compose/VerticalAnchorable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final id:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final parent:Landroidx/constraintlayout/compose/ConstrainedLayoutReference;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final start:Landroidx/constraintlayout/compose/VerticalAnchorable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/constraintlayout/compose/State;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/constraintlayout/compose/HorizontalChainScope;->id:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/compose/HorizontalChainScope;->tasks:Ljava/util/List;

    .line 4
    new-instance v1, Landroidx/constraintlayout/compose/ConstrainedLayoutReference;

    sget-object v2, Landroidx/constraintlayout/core/state/State;->PARENT:Ljava/lang/Integer;

    const-string v3, "PARENT"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroidx/constraintlayout/compose/ConstrainedLayoutReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroidx/constraintlayout/compose/HorizontalChainScope;->parent:Landroidx/constraintlayout/compose/ConstrainedLayoutReference;

    .line 5
    new-instance v1, Landroidx/constraintlayout/compose/ChainVerticalAnchorable;

    const/4 v2, -0x2

    invoke-direct {v1, v0, p1, v2}, Landroidx/constraintlayout/compose/ChainVerticalAnchorable;-><init>(Ljava/util/List;Ljava/lang/Object;I)V

    iput-object v1, p0, Landroidx/constraintlayout/compose/HorizontalChainScope;->start:Landroidx/constraintlayout/compose/VerticalAnchorable;

    .line 6
    new-instance v1, Landroidx/constraintlayout/compose/ChainVerticalAnchorable;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Landroidx/constraintlayout/compose/ChainVerticalAnchorable;-><init>(Ljava/util/List;Ljava/lang/Object;I)V

    iput-object v1, p0, Landroidx/constraintlayout/compose/HorizontalChainScope;->absoluteLeft:Landroidx/constraintlayout/compose/VerticalAnchorable;

    .line 7
    new-instance v1, Landroidx/constraintlayout/compose/ChainVerticalAnchorable;

    const/4 v2, -0x1

    invoke-direct {v1, v0, p1, v2}, Landroidx/constraintlayout/compose/ChainVerticalAnchorable;-><init>(Ljava/util/List;Ljava/lang/Object;I)V

    iput-object v1, p0, Landroidx/constraintlayout/compose/HorizontalChainScope;->end:Landroidx/constraintlayout/compose/VerticalAnchorable;

    .line 8
    new-instance v1, Landroidx/constraintlayout/compose/ChainVerticalAnchorable;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p1, v2}, Landroidx/constraintlayout/compose/ChainVerticalAnchorable;-><init>(Ljava/util/List;Ljava/lang/Object;I)V

    iput-object v1, p0, Landroidx/constraintlayout/compose/HorizontalChainScope;->absoluteRight:Landroidx/constraintlayout/compose/VerticalAnchorable;

    return-void
.end method


# virtual methods
.method public final getAbsoluteLeft()Landroidx/constraintlayout/compose/VerticalAnchorable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/compose/HorizontalChainScope;->absoluteLeft:Landroidx/constraintlayout/compose/VerticalAnchorable;

    return-object v0
.end method

.method public final getAbsoluteRight()Landroidx/constraintlayout/compose/VerticalAnchorable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/compose/HorizontalChainScope;->absoluteRight:Landroidx/constraintlayout/compose/VerticalAnchorable;

    return-object v0
.end method

.method public final getEnd()Landroidx/constraintlayout/compose/VerticalAnchorable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/compose/HorizontalChainScope;->end:Landroidx/constraintlayout/compose/VerticalAnchorable;

    return-object v0
.end method

.method public final getId$compose_release()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/compose/HorizontalChainScope;->id:Ljava/lang/Object;

    return-object v0
.end method

.method public final getParent()Landroidx/constraintlayout/compose/ConstrainedLayoutReference;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/compose/HorizontalChainScope;->parent:Landroidx/constraintlayout/compose/ConstrainedLayoutReference;

    return-object v0
.end method

.method public final getStart()Landroidx/constraintlayout/compose/VerticalAnchorable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/compose/HorizontalChainScope;->start:Landroidx/constraintlayout/compose/VerticalAnchorable;

    return-object v0
.end method

.method public final getTasks$compose_release()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/constraintlayout/compose/State;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/compose/HorizontalChainScope;->tasks:Ljava/util/List;

    return-object v0
.end method
