.class Landroid/taobao/windvane/extra/jsbridge/TBUploadService$5;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lmtopsdk/mtop/upload/FileUploadBaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/extra/jsbridge/TBUploadService;->doMtopUpload(Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/extra/jsbridge/TBUploadService;

.field final synthetic val$params:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

.field final synthetic val$result:Landroid/taobao/windvane/jsbridge/WVResult;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/extra/jsbridge/TBUploadService;Landroid/taobao/windvane/jsbridge/WVResult;Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$5;->this$0:Landroid/taobao/windvane/extra/jsbridge/TBUploadService;

    iput-object p2, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$5;->val$result:Landroid/taobao/windvane/jsbridge/WVResult;

    iput-object p3, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$5;->val$params:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mtop upload file error. code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TBUploadService"

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$5;->val$result:Landroid/taobao/windvane/jsbridge/WVResult;

    const-string v1, "errorCode"

    invoke-virtual {v0, v1, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$5;->val$result:Landroid/taobao/windvane/jsbridge/WVResult;

    const-string v0, "errorMsg"

    invoke-virtual {p1, v0, p2}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$5;->val$result:Landroid/taobao/windvane/jsbridge/WVResult;

    iget-object p2, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$5;->val$params:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    iget-object p2, p2, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->filePath:Ljava/lang/String;

    const-string v0, "localPath"

    invoke-virtual {p1, v0, p2}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$5;->this$0:Landroid/taobao/windvane/extra/jsbridge/TBUploadService;

    invoke-static {p1}, Landroid/taobao/windvane/extra/jsbridge/TBUploadService;->access$100(Landroid/taobao/windvane/extra/jsbridge/TBUploadService;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x7d3

    iget-object v0, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$5;->val$result:Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-static {p1, p2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 7
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mtop upload file error. code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TBUploadService"

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$5;->val$result:Landroid/taobao/windvane/jsbridge/WVResult;

    const-string v1, "errorType"

    invoke-virtual {v0, v1, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$5;->val$result:Landroid/taobao/windvane/jsbridge/WVResult;

    const-string v0, "errorCode"

    invoke-virtual {p1, v0, p2}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$5;->val$result:Landroid/taobao/windvane/jsbridge/WVResult;

    const-string p2, "errorMsg"

    invoke-virtual {p1, p2, p3}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$5;->val$result:Landroid/taobao/windvane/jsbridge/WVResult;

    iget-object p2, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$5;->val$params:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    iget-object p2, p2, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->filePath:Ljava/lang/String;

    const-string p3, "localPath"

    invoke-virtual {p1, p3, p2}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$5;->this$0:Landroid/taobao/windvane/extra/jsbridge/TBUploadService;

    invoke-static {p1}, Landroid/taobao/windvane/extra/jsbridge/TBUploadService;->access$100(Landroid/taobao/windvane/extra/jsbridge/TBUploadService;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x7d3

    iget-object p3, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$5;->val$result:Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-static {p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onFinish(Ljava/lang/String;)V
    .locals 3

    .line 13
    iget-object v0, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$5;->val$result:Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-virtual {v0}, Landroid/taobao/windvane/jsbridge/WVResult;->setSuccess()V

    .line 14
    iget-object v0, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$5;->val$result:Landroid/taobao/windvane/jsbridge/WVResult;

    iget-object v1, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$5;->val$params:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    iget-object v1, v1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->localUrl:Ljava/lang/String;

    const-string/jumbo v2, "url"

    invoke-virtual {v0, v2, v1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$5;->val$result:Landroid/taobao/windvane/jsbridge/WVResult;

    iget-object v1, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$5;->val$params:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    iget-object v1, v1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->filePath:Ljava/lang/String;

    const-string v2, "localPath"

    invoke-virtual {v0, v2, v1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$5;->val$result:Landroid/taobao/windvane/jsbridge/WVResult;

    const-string/jumbo v1, "resourceURL"

    invoke-virtual {v0, v1, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/"

    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 18
    iget-object v1, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$5;->val$result:Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "tfsKey"

    invoke-virtual {v1, v0, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_0
    iget-object p1, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$5;->val$params:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    iget-boolean v0, p1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->isLastPic:Z

    if-eqz v0, :cond_1

    .line 20
    iget-object v0, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$5;->val$result:Landroid/taobao/windvane/jsbridge/WVResult;

    iget-object p1, p1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->images:Lorg/json/JSONArray;

    const-string v1, "images"

    invoke-virtual {v0, v1, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 21
    :cond_1
    iget-object p1, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$5;->this$0:Landroid/taobao/windvane/extra/jsbridge/TBUploadService;

    invoke-static {p1}, Landroid/taobao/windvane/extra/jsbridge/TBUploadService;->access$100(Landroid/taobao/windvane/extra/jsbridge/TBUploadService;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x7d2

    iget-object v1, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$5;->val$result:Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-static {p1, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onFinish(Lmtopsdk/mtop/upload/domain/UploadFileInfo;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$5;->val$result:Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-virtual {p1}, Landroid/taobao/windvane/jsbridge/WVResult;->setSuccess()V

    .line 2
    iget-object p1, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$5;->val$result:Landroid/taobao/windvane/jsbridge/WVResult;

    iget-object v0, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$5;->val$params:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    iget-object v0, v0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->localUrl:Ljava/lang/String;

    const-string/jumbo v1, "url"

    invoke-virtual {p1, v1, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$5;->val$result:Landroid/taobao/windvane/jsbridge/WVResult;

    iget-object v0, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$5;->val$params:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    iget-object v0, v0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->filePath:Ljava/lang/String;

    const-string v1, "localPath"

    invoke-virtual {p1, v1, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$5;->val$result:Landroid/taobao/windvane/jsbridge/WVResult;

    const-string/jumbo v0, "resourceURL"

    invoke-virtual {p1, v0, p2}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$5;->val$params:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    iget-boolean v0, p1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->needBase64:Z

    if-eqz v0, :cond_0

    .line 6
    iget-object p1, p1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->filePath:Ljava/lang/String;

    const/16 v0, 0x400

    invoke-static {p1, v0}, Landroid/taobao/windvane/util/ImageTool;->readZoomImage(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    iget-object v0, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$5;->val$result:Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-static {p1}, Landroid/taobao/windvane/jsbridge/utils/WVUtils;->bitmapToBase64(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "base64Data"

    invoke-virtual {v0, v1, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p1, "/"

    .line 8
    invoke-virtual {p2, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_1

    .line 9
    iget-object v0, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$5;->val$result:Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "tfsKey"

    invoke-virtual {v0, p2, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_1
    iget-object p1, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$5;->val$params:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    iget-boolean p2, p1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->isLastPic:Z

    if-eqz p2, :cond_2

    .line 11
    iget-object p2, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$5;->val$result:Landroid/taobao/windvane/jsbridge/WVResult;

    iget-object p1, p1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->images:Lorg/json/JSONArray;

    const-string v0, "images"

    invoke-virtual {p2, v0, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 12
    :cond_2
    iget-object p1, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$5;->this$0:Landroid/taobao/windvane/extra/jsbridge/TBUploadService;

    invoke-static {p1}, Landroid/taobao/windvane/extra/jsbridge/TBUploadService;->access$100(Landroid/taobao/windvane/extra/jsbridge/TBUploadService;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x7d2

    iget-object v0, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$5;->val$result:Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-static {p1, p2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onProgress(I)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$5;->val$result:Landroid/taobao/windvane/jsbridge/WVResult;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/jsbridge/WVResult;->setResult(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$5;->this$0:Landroid/taobao/windvane/extra/jsbridge/TBUploadService;

    invoke-static {v0}, Landroid/taobao/windvane/extra/jsbridge/TBUploadService;->access$100(Landroid/taobao/windvane/extra/jsbridge/TBUploadService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$5;->val$result:Landroid/taobao/windvane/jsbridge/WVResult;

    const/16 v2, 0x7d1

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
