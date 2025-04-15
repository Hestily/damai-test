.class Landroid/taobao/windvane/extra/jsbridge/TBUploadService$2;
.super Landroid/taobao/windvane/connect/HttpConnectListener;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/extra/jsbridge/TBUploadService;->doNormalUpload(Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/taobao/windvane/connect/HttpConnectListener<",
        "Landroid/taobao/windvane/extra/upload/UploadFileData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/extra/jsbridge/TBUploadService;

.field final synthetic val$params:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/extra/jsbridge/TBUploadService;Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$2;->this$0:Landroid/taobao/windvane/extra/jsbridge/TBUploadService;

    iput-object p2, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$2;->val$params:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    invoke-direct {p0}, Landroid/taobao/windvane/connect/HttpConnectListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "upload file error. code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TBUploadService"

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v0}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "errorCode"

    invoke-virtual {v0, v1, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "errorMsg"

    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$2;->val$params:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    iget-object p1, p1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->filePath:Ljava/lang/String;

    const-string p2, "localPath"

    invoke-virtual {v0, p2, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$2;->val$params:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    iget-boolean p1, p1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->isLastPic:Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, "isLastPic"

    invoke-virtual {v0, p2, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$2;->val$params:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    iget-object p1, p1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->mutipleSelection:Ljava/lang/String;

    const-string/jumbo p2, "mutipleSelection"

    invoke-virtual {v0, p2, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/16 p2, 0x7d3

    .line 10
    iput p2, p1, Landroid/os/Message;->what:I

    .line 11
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 12
    iget-object p2, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$2;->this$0:Landroid/taobao/windvane/extra/jsbridge/TBUploadService;

    invoke-static {p2}, Landroid/taobao/windvane/extra/jsbridge/TBUploadService;->access$100(Landroid/taobao/windvane/extra/jsbridge/TBUploadService;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onFinish(Landroid/taobao/windvane/extra/upload/UploadFileData;I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p2

    const/16 v0, 0x7d2

    .line 3
    iput v0, p2, Landroid/os/Message;->what:I

    .line 4
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v0}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    .line 5
    invoke-virtual {v0}, Landroid/taobao/windvane/jsbridge/WVResult;->setSuccess()V

    .line 6
    iget-object v1, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$2;->val$params:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    iget-boolean v2, v1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->needBase64:Z

    if-eqz v2, :cond_1

    .line 7
    iget-object v1, v1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->filePath:Ljava/lang/String;

    const/16 v2, 0x400

    invoke-static {v1, v2}, Landroid/taobao/windvane/util/ImageTool;->readZoomImage(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8
    invoke-static {v1}, Landroid/taobao/windvane/jsbridge/utils/WVUtils;->bitmapToBase64(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "base64Data"

    invoke-virtual {v0, v2, v1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_1
    iget-object v1, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$2;->val$params:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    iget-object v1, v1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->localUrl:Ljava/lang/String;

    const-string/jumbo v2, "url"

    invoke-virtual {v0, v2, v1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$2;->val$params:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    iget-object v1, v1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->filePath:Ljava/lang/String;

    const-string v2, "localPath"

    invoke-virtual {v0, v2, v1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v1, p1, Landroid/taobao/windvane/extra/upload/UploadFileData;->resourceUri:Ljava/lang/String;

    const-string/jumbo v2, "resourceURL"

    invoke-virtual {v0, v2, v1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$2;->val$params:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    iget-boolean v1, v1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->isLastPic:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "isLastPic"

    invoke-virtual {v0, v2, v1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v1, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$2;->val$params:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    iget-object v1, v1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->mutipleSelection:Ljava/lang/String;

    const-string/jumbo v2, "mutipleSelection"

    invoke-virtual {v0, v2, v1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object p1, p1, Landroid/taobao/windvane/extra/upload/UploadFileData;->tfsKey:Ljava/lang/String;

    const-string/jumbo v1, "tfsKey"

    invoke-virtual {v0, v1, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$2;->val$params:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    iget-boolean v1, p1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->isLastPic:Z

    if-eqz v1, :cond_2

    .line 16
    iget-object p1, p1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->images:Lorg/json/JSONArray;

    const-string v1, "images"

    invoke-virtual {v0, v1, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 17
    :cond_2
    iput-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 18
    iget-object p1, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$2;->this$0:Landroid/taobao/windvane/extra/jsbridge/TBUploadService;

    invoke-static {p1}, Landroid/taobao/windvane/extra/jsbridge/TBUploadService;->access$100(Landroid/taobao/windvane/extra/jsbridge/TBUploadService;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public bridge synthetic onFinish(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Landroid/taobao/windvane/extra/upload/UploadFileData;

    invoke-virtual {p0, p1, p2}, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$2;->onFinish(Landroid/taobao/windvane/extra/upload/UploadFileData;I)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$2;->this$0:Landroid/taobao/windvane/extra/jsbridge/TBUploadService;

    invoke-static {v0}, Landroid/taobao/windvane/extra/jsbridge/TBUploadService;->access$100(Landroid/taobao/windvane/extra/jsbridge/TBUploadService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7d1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
