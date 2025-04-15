.class Landroid/taobao/windvane/jsbridge/api/WVUIActionSheet$1;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/windvane/jsbridge/api/WVUIActionSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/jsbridge/api/WVUIActionSheet;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/jsbridge/api/WVUIActionSheet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVUIActionSheet$1;->this$0:Landroid/taobao/windvane/jsbridge/api/WVUIActionSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v0}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVUIActionSheet$1;->this$0:Landroid/taobao/windvane/jsbridge/api/WVUIActionSheet;

    invoke-static {p1}, Landroid/taobao/windvane/jsbridge/api/WVUIActionSheet;->access$000(Landroid/taobao/windvane/jsbridge/api/WVUIActionSheet;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "_index"

    invoke-virtual {v0, v1, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "WVUIActionSheet"

    const-string v1, "ActionSheet: click: 8.5.0"

    .line 5
    invoke-static {p1, v1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_0
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVUIActionSheet$1;->this$0:Landroid/taobao/windvane/jsbridge/api/WVUIActionSheet;

    invoke-static {p1}, Landroid/taobao/windvane/jsbridge/api/WVUIActionSheet;->access$100(Landroid/taobao/windvane/jsbridge/api/WVUIActionSheet;)Landroid/taobao/windvane/view/PopupWindowController;

    move-result-object p1

    invoke-virtual {p1}, Landroid/taobao/windvane/view/PopupWindowController;->hide()V

    .line 7
    invoke-virtual {v0}, Landroid/taobao/windvane/jsbridge/WVResult;->setSuccess()V

    .line 8
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVUIActionSheet$1;->this$0:Landroid/taobao/windvane/jsbridge/api/WVUIActionSheet;

    invoke-static {p1}, Landroid/taobao/windvane/jsbridge/api/WVUIActionSheet;->access$200(Landroid/taobao/windvane/jsbridge/api/WVUIActionSheet;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Landroid/taobao/windvane/jsbridge/WVResult;)V

    .line 9
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVUIActionSheet$1;->this$0:Landroid/taobao/windvane/jsbridge/api/WVUIActionSheet;

    invoke-static {p1}, Landroid/taobao/windvane/jsbridge/api/WVUIActionSheet;->access$200(Landroid/taobao/windvane/jsbridge/api/WVUIActionSheet;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object p1

    invoke-virtual {v0}, Landroid/taobao/windvane/jsbridge/WVResult;->toJsonString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wv.actionsheet"

    invoke-virtual {p1, v1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
