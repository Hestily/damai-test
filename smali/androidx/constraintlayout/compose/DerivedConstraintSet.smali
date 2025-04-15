.class public interface abstract Landroidx/constraintlayout/compose/DerivedConstraintSet;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroidx/constraintlayout/compose/ConstraintSet;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/compose/DerivedConstraintSet$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0008`\u0018\u00002\u00020\u0001J\u001e\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0016J\u0010\u0010\t\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H&R\u0018\u0010\u000c\u001a\u0004\u0018\u00010\u00018&@&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Landroidx/constraintlayout/compose/DerivedConstraintSet;",
        "Landroidx/constraintlayout/compose/ConstraintSet;",
        "Landroidx/constraintlayout/compose/State;",
        "state",
        "",
        "Landroidx/compose/ui/layout/Measurable;",
        "measurables",
        "",
        "applyTo",
        "applyToState",
        "getExtendFrom",
        "()Landroidx/constraintlayout/compose/ConstraintSet;",
        "extendFrom",
        "compose_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# virtual methods
.method public abstract applyTo(Landroidx/constraintlayout/compose/State;Ljava/util/List;)V
    .param p1    # Landroidx/constraintlayout/compose/State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/compose/State;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract applyToState(Landroidx/constraintlayout/compose/State;)V
    .param p1    # Landroidx/constraintlayout/compose/State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract getExtendFrom()Landroidx/constraintlayout/compose/ConstraintSet;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
