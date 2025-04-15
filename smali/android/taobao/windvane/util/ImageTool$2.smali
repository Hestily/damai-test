.class final Landroid/taobao/windvane/util/ImageTool$2;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/taobao/windvane/util/ImageTool$ImageSaveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/util/ImageTool;->saveImageToDCIM(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/util/ImageTool$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/taobao/windvane/util/ImageTool$2;->val$handler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/16 v0, 0x195

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public success()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/util/ImageTool$2;->val$handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x194

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
