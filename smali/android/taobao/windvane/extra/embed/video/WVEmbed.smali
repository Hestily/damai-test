.class public Landroid/taobao/windvane/extra/embed/video/WVEmbed;
.super Ljava/lang/Object;
.source "Taobao"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 3

    .line 1
    const-class v0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;

    const-string/jumbo v1, "wvvideo"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/taobao/windvane/embed/WVEVManager;->registerEmbedView(Ljava/lang/String;Ljava/lang/Class;Z)V

    .line 2
    const-class v0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;

    const-string/jumbo v1, "wvlivevideo"

    invoke-static {v1, v0, v2}, Landroid/taobao/windvane/embed/WVEVManager;->registerEmbedView(Ljava/lang/String;Ljava/lang/Class;Z)V

    return-void
.end method
