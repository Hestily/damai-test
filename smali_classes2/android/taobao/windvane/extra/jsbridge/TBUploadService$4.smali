.class Landroid/taobao/windvane/extra/jsbridge/TBUploadService$4;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lcom/uploader/export/ITaskListener;


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
    iput-object p1, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$4;->this$0:Landroid/taobao/windvane/extra/jsbridge/TBUploadService;

    iput-object p2, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$4;->val$result:Landroid/taobao/windvane/jsbridge/WVResult;

    iput-object p3, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$4;->val$params:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/uploader/export/IUploaderTask;)V
    .locals 0

    return-void
.end method

.method public onFailure(Lcom/uploader/export/IUploaderTask;Ltb/eg5;)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$4;->val$result:Landroid/taobao/windvane/jsbridge/WVResult;

    iget-object v0, p2, Ltb/eg5;->b:Ljava/lang/String;

    const-string/jumbo v1, "subCode"

    invoke-virtual {p1, v1, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$4;->val$result:Landroid/taobao/windvane/jsbridge/WVResult;

    iget-object v0, p2, Ltb/eg5;->a:Ljava/lang/String;

    const-string v1, "errorCode"

    invoke-virtual {p1, v1, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$4;->val$result:Landroid/taobao/windvane/jsbridge/WVResult;

    iget-object p2, p2, Ltb/eg5;->c:Ljava/lang/String;

    const-string v0, "errorMsg"

    invoke-virtual {p1, v0, p2}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$4;->val$result:Landroid/taobao/windvane/jsbridge/WVResult;

    iget-object p2, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$4;->val$params:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    iget-object p2, p2, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->filePath:Ljava/lang/String;

    const-string v0, "localPath"

    invoke-virtual {p1, v0, p2}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$4;->this$0:Landroid/taobao/windvane/extra/jsbridge/TBUploadService;

    invoke-static {p1}, Landroid/taobao/windvane/extra/jsbridge/TBUploadService;->access$100(Landroid/taobao/windvane/extra/jsbridge/TBUploadService;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$4;->val$result:Landroid/taobao/windvane/jsbridge/WVResult;

    const/16 v0, 0x7d3

    invoke-static {p1, v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onPause(Lcom/uploader/export/IUploaderTask;)V
    .locals 0

    return-void
.end method

.method public onProgress(Lcom/uploader/export/IUploaderTask;I)V
    .locals 1

    .line 1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "uploadFile onProgress "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TBUploadService"

    invoke-static {p2, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume(Lcom/uploader/export/IUploaderTask;)V
    .locals 0

    return-void
.end method

.method public onStart(Lcom/uploader/export/IUploaderTask;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Lcom/uploader/export/IUploaderTask;Lcom/uploader/export/ITaskResult;)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$4;->val$result:Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-virtual {p1}, Landroid/taobao/windvane/jsbridge/WVResult;->setSuccess()V

    .line 2
    iget-object p1, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$4;->val$result:Landroid/taobao/windvane/jsbridge/WVResult;

    iget-object v0, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$4;->val$params:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    iget-object v0, v0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->localUrl:Ljava/lang/String;

    const-string/jumbo v1, "url"

    invoke-virtual {p1, v1, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$4;->val$result:Landroid/taobao/windvane/jsbridge/WVResult;

    iget-object v0, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$4;->val$params:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    iget-object v0, v0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->filePath:Ljava/lang/String;

    const-string v1, "localPath"

    invoke-virtual {p1, v1, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-interface {p2}, Lcom/uploader/export/ITaskResult;->getFileUrl()Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object p2, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$4;->val$result:Landroid/taobao/windvane/jsbridge/WVResult;

    const-string/jumbo v0, "resourceURL"

    invoke-virtual {p2, v0, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$4;->val$result:Landroid/taobao/windvane/jsbridge/WVResult;

    iget-object v0, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$4;->val$params:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    iget-boolean v0, v0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->isLastPic:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "isLastPic"

    invoke-virtual {p2, v1, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$4;->val$result:Landroid/taobao/windvane/jsbridge/WVResult;

    iget-object v0, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$4;->val$params:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    iget-object v0, v0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->mutipleSelection:Ljava/lang/String;

    const-string/jumbo v1, "mutipleSelection"

    invoke-virtual {p2, v1, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$4;->val$params:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    iget-boolean v0, p2, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->needBase64:Z

    if-eqz v0, :cond_0

    .line 9
    iget-object p2, p2, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->filePath:Ljava/lang/String;

    const/16 v0, 0x400

    invoke-static {p2, v0}, Landroid/taobao/windvane/util/ImageTool;->readZoomImage(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 10
    iget-object v0, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$4;->val$result:Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-static {p2}, Landroid/taobao/windvane/jsbridge/utils/WVUtils;->bitmapToBase64(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "base64Data"

    invoke-virtual {v0, v1, p2}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p2, "/"

    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_1

    .line 12
    iget-object v0, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$4;->val$result:Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "tfsKey"

    invoke-virtual {v0, p2, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_1
    iget-object p1, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$4;->val$params:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    iget-boolean p2, p1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->isLastPic:Z

    if-eqz p2, :cond_2

    .line 14
    iget-object p2, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$4;->val$result:Landroid/taobao/windvane/jsbridge/WVResult;

    iget-object p1, p1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->images:Lorg/json/JSONArray;

    const-string v0, "images"

    invoke-virtual {p2, v0, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 15
    :cond_2
    iget-object p1, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$4;->this$0:Landroid/taobao/windvane/extra/jsbridge/TBUploadService;

    invoke-static {p1}, Landroid/taobao/windvane/extra/jsbridge/TBUploadService;->access$100(Landroid/taobao/windvane/extra/jsbridge/TBUploadService;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x7d2

    iget-object v0, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$4;->val$result:Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-static {p1, p2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onWait(Lcom/uploader/export/IUploaderTask;)V
    .locals 0

    return-void
.end method
