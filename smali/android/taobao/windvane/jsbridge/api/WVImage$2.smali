.class Landroid/taobao/windvane/jsbridge/api/WVImage$2;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/jsbridge/api/WVImage;->execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/jsbridge/api/WVImage;

.field final synthetic val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

.field final synthetic val$params:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/jsbridge/api/WVImage;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVImage$2;->this$0:Landroid/taobao/windvane/jsbridge/api/WVImage;

    iput-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVImage$2;->val$params:Ljava/lang/String;

    iput-object p3, p0, Landroid/taobao/windvane/jsbridge/api/WVImage$2;->val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "WVImage"

    const-string v1, "PERMISSION GRANTED"

    .line 1
    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVImage$2;->this$0:Landroid/taobao/windvane/jsbridge/api/WVImage;

    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVImage$2;->val$params:Ljava/lang/String;

    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/api/WVImage$2;->val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-static {v0, v1, v2}, Landroid/taobao/windvane/jsbridge/api/WVImage;->access$000(Landroid/taobao/windvane/jsbridge/api/WVImage;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    return-void
.end method
