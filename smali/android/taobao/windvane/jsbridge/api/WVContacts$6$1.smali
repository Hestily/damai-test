.class Landroid/taobao/windvane/jsbridge/api/WVContacts$6$1;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/jsbridge/api/WVContacts$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/taobao/windvane/jsbridge/api/WVContacts$6;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/jsbridge/api/WVContacts$6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVContacts$6$1;->this$1:Landroid/taobao/windvane/jsbridge/api/WVContacts$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVContacts$6$1;->this$1:Landroid/taobao/windvane/jsbridge/api/WVContacts$6;

    iget-object v1, v0, Landroid/taobao/windvane/jsbridge/api/WVContacts$6;->this$0:Landroid/taobao/windvane/jsbridge/api/WVContacts;

    iget-object v0, v0, Landroid/taobao/windvane/jsbridge/api/WVContacts$6;->val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-static {v1, v0}, Landroid/taobao/windvane/jsbridge/api/WVContacts;->access$200(Landroid/taobao/windvane/jsbridge/api/WVContacts;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    return-void
.end method
