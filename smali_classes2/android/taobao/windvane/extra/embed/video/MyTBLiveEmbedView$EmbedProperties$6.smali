.class final enum Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties$6;
.super Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;
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
    invoke-direct {p0, p1, p2, v0}, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;-><init>(Ljava/lang/String;ILandroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$1;)V

    return-void
.end method


# virtual methods
.method public setValue(Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;Ljava/lang/Object;Z)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;->setValue(Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;Ljava/lang/Object;Z)Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->setBizCode(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
