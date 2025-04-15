.class public interface abstract Landroidx/compose/ui/tooling/data/SourceContext;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation runtime Landroidx/compose/ui/tooling/data/UiToolingDataApi;
.end annotation


# virtual methods
.method public abstract getBounds()Landroidx/compose/ui/unit/IntRect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getDepth()I
.end method

.method public abstract getLocation()Landroidx/compose/ui/tooling/data/SourceLocation;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getParameters()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/ui/tooling/data/ParameterInformation;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
