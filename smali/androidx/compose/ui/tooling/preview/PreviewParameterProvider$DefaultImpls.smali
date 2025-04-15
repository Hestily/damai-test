.class public final Landroidx/compose/ui/tooling/preview/PreviewParameterProvider$DefaultImpls;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/tooling/preview/PreviewParameterProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static getCount(Landroidx/compose/ui/tooling/preview/PreviewParameterProvider;)I
    .locals 0
    .param p0    # Landroidx/compose/ui/tooling/preview/PreviewParameterProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/ui/tooling/preview/PreviewParameterProvider<",
            "TT;>;)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Ltb/hy3;->b(Landroidx/compose/ui/tooling/preview/PreviewParameterProvider;)I

    move-result p0

    return p0
.end method
