.class public interface abstract Landroidx/window/layout/FoldingFeature;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroidx/window/layout/DisplayFeature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/layout/FoldingFeature$OcclusionType;,
        Landroidx/window/layout/FoldingFeature$Orientation;,
        Landroidx/window/layout/FoldingFeature$State;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008f\u0018\u00002\u00020\u0001:\u0003\u0011\u0012\u0013R\u0016\u0010\u0003\u001a\u00020\u00028&@&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004R\u0016\u0010\u0008\u001a\u00020\u00058&@&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u0016\u0010\u000c\u001a\u00020\t8&@&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0016\u0010\u0010\u001a\u00020\r8&@&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0014"
    }
    d2 = {
        "Landroidx/window/layout/FoldingFeature;",
        "Landroidx/window/layout/DisplayFeature;",
        "",
        "isSeparating",
        "()Z",
        "Landroidx/window/layout/FoldingFeature$OcclusionType;",
        "getOcclusionType",
        "()Landroidx/window/layout/FoldingFeature$OcclusionType;",
        "occlusionType",
        "Landroidx/window/layout/FoldingFeature$Orientation;",
        "getOrientation",
        "()Landroidx/window/layout/FoldingFeature$Orientation;",
        "orientation",
        "Landroidx/window/layout/FoldingFeature$State;",
        "getState",
        "()Landroidx/window/layout/FoldingFeature$State;",
        "state",
        "OcclusionType",
        "Orientation",
        "State",
        "window_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# virtual methods
.method public abstract getOcclusionType()Landroidx/window/layout/FoldingFeature$OcclusionType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getOrientation()Landroidx/window/layout/FoldingFeature$Orientation;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getState()Landroidx/window/layout/FoldingFeature$State;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract isSeparating()Z
.end method
