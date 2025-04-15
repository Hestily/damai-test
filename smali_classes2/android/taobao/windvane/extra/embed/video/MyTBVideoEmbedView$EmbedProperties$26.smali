.class final enum Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView$EmbedProperties$26;
.super Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView$EmbedProperties;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView$EmbedProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView$EmbedProperties;-><init>(Ljava/lang/String;ILandroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView$1;)V

    return-void
.end method


# virtual methods
.method public setValue(Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;Ljava/lang/Object;Z)Z
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView$EmbedProperties;->setValue(Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p2}, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView$EmbedProperties;->toBoolean(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2, p3}, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->setControlsViewHidden(ZZ)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
