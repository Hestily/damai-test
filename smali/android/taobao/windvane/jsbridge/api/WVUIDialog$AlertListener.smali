.class public Landroid/taobao/windvane/jsbridge/api/WVUIDialog$AlertListener;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/windvane/jsbridge/api/WVUIDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AlertListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/jsbridge/api/WVUIDialog;


# direct methods
.method protected constructor <init>(Landroid/taobao/windvane/jsbridge/api/WVUIDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVUIDialog$AlertListener;->this$0:Landroid/taobao/windvane/jsbridge/api/WVUIDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVUIDialog$AlertListener;->this$0:Landroid/taobao/windvane/jsbridge/api/WVUIDialog;

    invoke-static {p1}, Landroid/taobao/windvane/jsbridge/api/WVUIDialog;->access$300(Landroid/taobao/windvane/jsbridge/api/WVUIDialog;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    new-instance p1, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {p1}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    .line 3
    iget-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVUIDialog$AlertListener;->this$0:Landroid/taobao/windvane/jsbridge/api/WVUIDialog;

    invoke-static {p2}, Landroid/taobao/windvane/jsbridge/api/WVUIDialog;->access$400(Landroid/taobao/windvane/jsbridge/api/WVUIDialog;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 4
    iget-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVUIDialog$AlertListener;->this$0:Landroid/taobao/windvane/jsbridge/api/WVUIDialog;

    invoke-static {p2}, Landroid/taobao/windvane/jsbridge/api/WVUIDialog;->access$400(Landroid/taobao/windvane/jsbridge/api/WVUIDialog;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "identifier"

    invoke-virtual {p1, v0, p2}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/taobao/windvane/jsbridge/WVResult;->setSuccess()V

    .line 6
    iget-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVUIDialog$AlertListener;->this$0:Landroid/taobao/windvane/jsbridge/api/WVUIDialog;

    invoke-static {p2}, Landroid/taobao/windvane/jsbridge/api/WVUIDialog;->access$300(Landroid/taobao/windvane/jsbridge/api/WVUIDialog;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 7
    iget-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVUIDialog$AlertListener;->this$0:Landroid/taobao/windvane/jsbridge/api/WVUIDialog;

    invoke-static {p2}, Landroid/taobao/windvane/jsbridge/api/WVUIDialog;->access$300(Landroid/taobao/windvane/jsbridge/api/WVUIDialog;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object p2

    invoke-virtual {p1}, Landroid/taobao/windvane/jsbridge/WVResult;->toJsonString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WV.Event.Alert"

    invoke-virtual {p2, v1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVUIDialog$AlertListener;->this$0:Landroid/taobao/windvane/jsbridge/api/WVUIDialog;

    invoke-static {p2}, Landroid/taobao/windvane/jsbridge/api/WVUIDialog;->access$300(Landroid/taobao/windvane/jsbridge/api/WVUIDialog;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Landroid/taobao/windvane/jsbridge/WVResult;)V

    :cond_1
    return-void
.end method
