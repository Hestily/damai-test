.class public final Landroid/taobao/windvane/jsbridge/api/ScreenCaptureUtil$BackFragment;
.super Landroid/app/Fragment;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/windvane/jsbridge/api/ScreenCaptureUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BackFragment"
.end annotation


# instance fields
.field private bmp:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 3
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/ScreenCaptureUtil$BackFragment;->bmp:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x611

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 2
    :try_start_0
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/ScreenCaptureUtil$BackFragment;->bmp:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object p2, p0, Landroid/taobao/windvane/jsbridge/api/ScreenCaptureUtil$BackFragment;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/taobao/windvane/jsbridge/api/ScreenCaptureUtil;->access$000(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;)V

    .line 4
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/taobao/windvane/jsbridge/api/ScreenCaptureUtil;->access$100(Landroid/net/Uri;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/ScreenCaptureUtil$BackFragment;->bmp:Landroid/graphics/Bitmap;

    return-void
.end method
