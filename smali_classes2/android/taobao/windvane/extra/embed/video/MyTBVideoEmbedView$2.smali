.class Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView$2;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
.method constructor <init>(Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView$2;->this$0:Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView$2;->this$0:Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;

    const-string p2, "click"

    const-string v0, ""

    invoke-static {p1, p2, v0}, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->access$400(Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
