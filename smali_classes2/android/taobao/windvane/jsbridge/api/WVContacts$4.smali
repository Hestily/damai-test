.class Landroid/taobao/windvane/jsbridge/api/WVContacts$4;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/jsbridge/api/WVContacts;->execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/jsbridge/api/WVContacts;

.field final synthetic val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

.field final synthetic val$params:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/jsbridge/api/WVContacts;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVContacts$4;->this$0:Landroid/taobao/windvane/jsbridge/api/WVContacts;

    iput-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVContacts$4;->val$params:Ljava/lang/String;

    iput-object p3, p0, Landroid/taobao/windvane/jsbridge/api/WVContacts$4;->val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/taobao/windvane/thread/WVThreadPool;->getInstance()Landroid/taobao/windvane/thread/WVThreadPool;

    move-result-object v0

    new-instance v1, Landroid/taobao/windvane/jsbridge/api/WVContacts$4$1;

    invoke-direct {v1, p0}, Landroid/taobao/windvane/jsbridge/api/WVContacts$4$1;-><init>(Landroid/taobao/windvane/jsbridge/api/WVContacts$4;)V

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/thread/WVThreadPool;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
