.class public final Landroidx/compose/ui/layout/GraphicLayerInfo$DefaultImpls;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/layout/GraphicLayerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static getOwnerViewId(Landroidx/compose/ui/layout/GraphicLayerInfo;)J
    .locals 2
    .param p0    # Landroidx/compose/ui/layout/GraphicLayerInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Ltb/ux1;->b(Landroidx/compose/ui/layout/GraphicLayerInfo;)J

    move-result-wide v0

    return-wide v0
.end method
