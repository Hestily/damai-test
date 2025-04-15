.class Landroid/taobao/windvane/jsbridge/api/WVContacts$4$1;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/jsbridge/api/WVContacts$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/taobao/windvane/jsbridge/api/WVContacts$4;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/jsbridge/api/WVContacts$4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVContacts$4$1;->this$1:Landroid/taobao/windvane/jsbridge/api/WVContacts$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVContacts$4$1;->this$1:Landroid/taobao/windvane/jsbridge/api/WVContacts$4;

    iget-object v1, v0, Landroid/taobao/windvane/jsbridge/api/WVContacts$4;->this$0:Landroid/taobao/windvane/jsbridge/api/WVContacts;

    iget-object v2, v0, Landroid/taobao/windvane/jsbridge/api/WVContacts$4;->val$params:Ljava/lang/String;

    iget-object v0, v0, Landroid/taobao/windvane/jsbridge/api/WVContacts$4;->val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-static {v1, v2, v0}, Landroid/taobao/windvane/jsbridge/api/WVContacts;->access$100(Landroid/taobao/windvane/jsbridge/api/WVContacts;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    return-void
.end method
