.class Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView$1;
.super Landroid/widget/FrameLayout;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->genVideoView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView$1;->this$0:Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    if-ne p4, p3, :cond_0

    if-nez p4, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p3, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView$1;->this$0:Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;

    invoke-static {p3}, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->access$000(Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;)I

    move-result p3

    if-ne p3, p2, :cond_1

    iget-object p3, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView$1;->this$0:Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;

    invoke-static {p3}, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->access$100(Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;)I

    move-result p3

    if-eq p3, p1, :cond_3

    .line 3
    :cond_1
    iget-object p3, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView$1;->this$0:Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;

    invoke-static {p3, p2}, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->access$002(Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;I)I

    .line 4
    iget-object p3, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView$1;->this$0:Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;

    invoke-static {p3, p1}, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->access$102(Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;I)I

    .line 5
    iget-object p3, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView$1;->this$0:Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;

    invoke-static {p3}, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->access$200(Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;)Lcom/taobao/avplayer/TBDWInstance;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 6
    iget-object p3, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView$1;->this$0:Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;

    invoke-static {p3}, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->access$200(Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;)Lcom/taobao/avplayer/TBDWInstance;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/taobao/avplayer/TBDWInstance;->setFrame(II)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p3, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView$1;->this$0:Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;

    invoke-static {p3}, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->access$300(Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;)Lcom/taobao/avplayer/TBHighPerformanceDWInstance;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 8
    iget-object p3, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView$1;->this$0:Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;

    invoke-static {p3}, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->access$300(Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;)Lcom/taobao/avplayer/TBHighPerformanceDWInstance;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/taobao/avplayer/TBHighPerformanceDWInstance;->setFrame(II)V

    :cond_3
    :goto_0
    return-void
.end method
