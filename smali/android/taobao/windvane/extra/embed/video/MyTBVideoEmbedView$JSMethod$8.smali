.class final enum Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView$JSMethod$8;
.super Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView$JSMethod;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView$JSMethod;
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
    invoke-direct {p0, p1, p2, v0}, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView$JSMethod;-><init>(Ljava/lang/String;ILandroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView$1;)V

    return-void
.end method


# virtual methods
.method public doSomething(Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->access$1200(Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;)V

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
