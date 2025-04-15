.class Landroid/taobao/windvane/jsbridge/api/WVUIDialog$1;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/windvane/jsbridge/api/WVUIDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/jsbridge/api/WVUIDialog;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/jsbridge/api/WVUIDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVUIDialog$1;->this$0:Landroid/taobao/windvane/jsbridge/api/WVUIDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    new-instance p1, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {p1}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 2
    iget-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVUIDialog$1;->this$0:Landroid/taobao/windvane/jsbridge/api/WVUIDialog;

    invoke-static {p2}, Landroid/taobao/windvane/jsbridge/api/WVUIDialog;->access$000(Landroid/taobao/windvane/jsbridge/api/WVUIDialog;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 3
    iget-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVUIDialog$1;->this$0:Landroid/taobao/windvane/jsbridge/api/WVUIDialog;

    invoke-static {p2}, Landroid/taobao/windvane/jsbridge/api/WVUIDialog;->access$100(Landroid/taobao/windvane/jsbridge/api/WVUIDialog;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string p2, ""

    :goto_0
    const-string/jumbo v0, "type"

    .line 4
    invoke-virtual {p1, v0, p2}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVUIDialog$1;->this$0:Landroid/taobao/windvane/jsbridge/api/WVUIDialog;

    invoke-static {v0}, Landroid/taobao/windvane/jsbridge/api/WVUIDialog;->access$200(Landroid/taobao/windvane/jsbridge/api/WVUIDialog;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_index"

    invoke-virtual {p1, v1, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "click: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "WVUIDialog"

    invoke-static {v0, p2}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_2
    invoke-virtual {p1}, Landroid/taobao/windvane/jsbridge/WVResult;->setSuccess()V

    .line 9
    iget-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVUIDialog$1;->this$0:Landroid/taobao/windvane/jsbridge/api/WVUIDialog;

    invoke-static {p2}, Landroid/taobao/windvane/jsbridge/api/WVUIDialog;->access$300(Landroid/taobao/windvane/jsbridge/api/WVUIDialog;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 10
    iget-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVUIDialog$1;->this$0:Landroid/taobao/windvane/jsbridge/api/WVUIDialog;

    invoke-static {p2}, Landroid/taobao/windvane/jsbridge/api/WVUIDialog;->access$300(Landroid/taobao/windvane/jsbridge/api/WVUIDialog;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object p2

    invoke-virtual {p1}, Landroid/taobao/windvane/jsbridge/WVResult;->toJsonString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wv.dialog"

    invoke-virtual {p2, v1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVUIDialog$1;->this$0:Landroid/taobao/windvane/jsbridge/api/WVUIDialog;

    invoke-static {p2}, Landroid/taobao/windvane/jsbridge/api/WVUIDialog;->access$300(Landroid/taobao/windvane/jsbridge/api/WVUIDialog;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Landroid/taobao/windvane/jsbridge/WVResult;)V

    :cond_3
    return-void
.end method
