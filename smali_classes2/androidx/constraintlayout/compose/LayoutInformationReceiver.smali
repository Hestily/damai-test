.class public interface abstract Landroidx/constraintlayout/compose/LayoutInformationReceiver;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&J\u0008\u0010\u0007\u001a\u00020\u0006H&J\u0008\u0010\t\u001a\u00020\u0008H&J\u0008\u0010\n\u001a\u00020\u0008H&\u00a8\u0006\u000b"
    }
    d2 = {
        "Landroidx/constraintlayout/compose/LayoutInformationReceiver;",
        "",
        "",
        "information",
        "",
        "setLayoutInformation",
        "Landroidx/constraintlayout/compose/LayoutInfoFlags;",
        "getLayoutInformationMode",
        "",
        "getForcedWidth",
        "getForcedHeight",
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
.method public abstract getForcedHeight()I
.end method

.method public abstract getForcedWidth()I
.end method

.method public abstract getLayoutInformationMode()Landroidx/constraintlayout/compose/LayoutInfoFlags;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract setLayoutInformation(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
