.class Landroid/taobao/windvane/jsbridge/api/WVCamera$5;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/windvane/jsbridge/api/WVCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/jsbridge/api/WVCamera;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/jsbridge/api/WVCamera;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$5;->this$0:Landroid/taobao/windvane/jsbridge/api/WVCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$5;->this$0:Landroid/taobao/windvane/jsbridge/api/WVCamera;

    invoke-static {v0}, Landroid/taobao/windvane/jsbridge/api/WVCamera;->access$400(Landroid/taobao/windvane/jsbridge/api/WVCamera;)Landroid/taobao/windvane/view/PopupWindowController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/view/PopupWindowController;->hide()V

    .line 2
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v0}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    .line 3
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$5;->this$0:Landroid/taobao/windvane/jsbridge/api/WVCamera;

    invoke-static {v1}, Landroid/taobao/windvane/jsbridge/api/WVCamera;->access$500(Landroid/taobao/windvane/jsbridge/api/WVCamera;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$5;->this$0:Landroid/taobao/windvane/jsbridge/api/WVCamera;

    invoke-static {p1}, Landroid/taobao/windvane/jsbridge/api/WVCamera;->access$600(Landroid/taobao/windvane/jsbridge/api/WVCamera;)V

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$5;->this$0:Landroid/taobao/windvane/jsbridge/api/WVCamera;

    invoke-static {v1}, Landroid/taobao/windvane/jsbridge/api/WVCamera;->access$500(Landroid/taobao/windvane/jsbridge/api/WVCamera;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$5;->this$0:Landroid/taobao/windvane/jsbridge/api/WVCamera;

    invoke-static {p1}, Landroid/taobao/windvane/jsbridge/api/WVCamera;->access$700(Landroid/taobao/windvane/jsbridge/api/WVCamera;)V

    return-void

    :cond_1
    const-string/jumbo p1, "msg"

    const-string v1, "CANCELED_BY_USER"

    .line 7
    invoke-virtual {v0, p1, v1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "WVCamera"

    const-string/jumbo v1, "take photo cancel, and callback."

    .line 8
    invoke-static {p1, v1}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$5;->this$0:Landroid/taobao/windvane/jsbridge/api/WVCamera;

    invoke-static {p1}, Landroid/taobao/windvane/jsbridge/api/WVCamera;->access$800(Landroid/taobao/windvane/jsbridge/api/WVCamera;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    return-void
.end method
