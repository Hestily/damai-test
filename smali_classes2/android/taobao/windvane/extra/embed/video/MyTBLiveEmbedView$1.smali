.class Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$1;
.super Landroid/widget/FrameLayout;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->genVideoView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$1;->this$0:Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    return-void
.end method
