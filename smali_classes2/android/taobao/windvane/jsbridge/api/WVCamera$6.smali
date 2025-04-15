.class Landroid/taobao/windvane/jsbridge/api/WVCamera$6;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/jsbridge/api/WVCamera;->zoomPicAndCallback(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/jsbridge/api/WVCamera;

.field final synthetic val$bm2:Landroid/graphics/Bitmap;

.field final synthetic val$fileInfo:Landroid/taobao/windvane/cache/WVFileInfo;

.field final synthetic val$params:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

.field final synthetic val$targetPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/jsbridge/api/WVCamera;Landroid/graphics/Bitmap;Landroid/taobao/windvane/cache/WVFileInfo;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$6;->this$0:Landroid/taobao/windvane/jsbridge/api/WVCamera;

    iput-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$6;->val$bm2:Landroid/graphics/Bitmap;

    iput-object p3, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$6;->val$fileInfo:Landroid/taobao/windvane/cache/WVFileInfo;

    iput-object p4, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$6;->val$targetPath:Ljava/lang/String;

    iput-object p5, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$6;->val$params:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, "fail to create bitmap file"

    .line 1
    new-instance v1, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v1}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    .line 2
    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$6;->val$bm2:Landroid/graphics/Bitmap;

    const-string v3, "WVCamera"

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    new-array v4, v2, [B

    const/4 v5, 0x0

    aput-byte v5, v4, v5

    .line 3
    invoke-static {}, Landroid/taobao/windvane/cache/WVCacheManager;->getInstance()Landroid/taobao/windvane/cache/WVCacheManager;

    move-result-object v5

    iget-object v6, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$6;->val$fileInfo:Landroid/taobao/windvane/cache/WVFileInfo;

    invoke-virtual {v5, v6, v4}, Landroid/taobao/windvane/cache/WVCacheManager;->writeToFile(Landroid/taobao/windvane/cache/WVFileInfo;[B)Z

    const/4 v4, 0x0

    .line 4
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    invoke-static {}, Landroid/taobao/windvane/cache/WVCacheManager;->getInstance()Landroid/taobao/windvane/cache/WVCacheManager;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/taobao/windvane/cache/WVCacheManager;->getCacheDir(Z)Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$6;->val$fileInfo:Landroid/taobao/windvane/cache/WVFileInfo;

    iget-object v7, v7, Landroid/taobao/windvane/cache/WVFileInfo;->fileName:Ljava/lang/String;

    invoke-direct {v6, v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$6;->val$bm2:Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v2, v4, v6, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$6;->val$bm2:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$6;->val$bm2:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 8
    :cond_0
    :try_start_2
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v4, v5

    goto :goto_1

    :catch_0
    move-object v4, v5

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_1

    .line 9
    :catch_1
    :goto_0
    :try_start_3
    invoke-static {v3, v0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "msg"

    .line 10
    invoke-virtual {v1, v2, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CREATE_BITMAP_ERROR"

    .line 11
    invoke-virtual {v1, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->setResult(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$6;->this$0:Landroid/taobao/windvane/jsbridge/api/WVCamera;

    invoke-static {v0}, Landroid/taobao/windvane/jsbridge/api/WVCamera;->access$800(Landroid/taobao/windvane/jsbridge/api/WVCamera;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 13
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$6;->val$bm2:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 14
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$6;->val$bm2:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    if-eqz v4, :cond_2

    .line 15
    :try_start_4
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_2
    return-void

    .line 16
    :goto_1
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$6;->val$bm2:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 17
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$6;->val$bm2:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    if-eqz v4, :cond_4

    .line 18
    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 19
    :catch_3
    :cond_4
    throw v0

    .line 20
    :catch_4
    :cond_5
    :goto_2
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$6;->this$0:Landroid/taobao/windvane/jsbridge/api/WVCamera;

    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$6;->val$targetPath:Ljava/lang/String;

    iget-object v4, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$6;->val$params:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    invoke-static {v0, v2, v4}, Landroid/taobao/windvane/jsbridge/api/WVCamera;->access$900(Landroid/taobao/windvane/jsbridge/api/WVCamera;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;)V

    .line 21
    invoke-virtual {v1}, Landroid/taobao/windvane/jsbridge/WVResult;->setSuccess()V

    .line 22
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$6;->val$params:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    iget-object v0, v0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->localUrl:Ljava/lang/String;

    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$6;->val$targetPath:Ljava/lang/String;

    const-string v2, "localPath"

    invoke-virtual {v1, v2, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "url:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$6;->val$params:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    iget-object v2, v2, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->localUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " localPath:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$6;->val$targetPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$6;->this$0:Landroid/taobao/windvane/jsbridge/api/WVCamera;

    invoke-static {v0}, Landroid/taobao/windvane/jsbridge/api/WVCamera;->access$800(Landroid/taobao/windvane/jsbridge/api/WVCamera;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object v0

    invoke-virtual {v1}, Landroid/taobao/windvane/jsbridge/WVResult;->toJsonString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WVPhoto.Event.takePhotoSuccess"

    invoke-virtual {v0, v2, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
