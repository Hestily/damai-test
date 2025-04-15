.class public interface abstract Landroidx/compose/ui/graphics/PathMeasure;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/PathMeasure$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract getLength()F
.end method

.method public abstract getSegment(FFLandroidx/compose/ui/graphics/Path;Z)Z
    .param p3    # Landroidx/compose/ui/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract setPath(Landroidx/compose/ui/graphics/Path;Z)V
    .param p1    # Landroidx/compose/ui/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method
