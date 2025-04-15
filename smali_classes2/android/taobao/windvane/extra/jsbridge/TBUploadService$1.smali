.class Landroid/taobao/windvane/extra/jsbridge/TBUploadService$1;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/extra/jsbridge/TBUploadService;->doUpload(Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/extra/jsbridge/TBUploadService;

.field final synthetic val$params:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/extra/jsbridge/TBUploadService;Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$1;->this$0:Landroid/taobao/windvane/extra/jsbridge/TBUploadService;

    iput-object p2, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$1;->val$params:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$1;->this$0:Landroid/taobao/windvane/extra/jsbridge/TBUploadService;

    iget-object v1, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$1;->val$params:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    invoke-static {v0, v1}, Landroid/taobao/windvane/extra/jsbridge/TBUploadService;->access$000(Landroid/taobao/windvane/extra/jsbridge/TBUploadService;Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;)V

    return-void
.end method
