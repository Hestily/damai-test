.class Landroid/taobao/windvane/extra/jsbridge/TBUploadService$3;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lcom/uploader/export/IUploaderTask;


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

.field final synthetic val$tmpFile:Ljava/io/File;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/extra/jsbridge/TBUploadService;Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$3;->this$0:Landroid/taobao/windvane/extra/jsbridge/TBUploadService;

    iput-object p2, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$3;->val$params:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    iput-object p3, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$3;->val$tmpFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBizType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$3;->val$params:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    iget-object v0, v0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->bizCode:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$3;->val$tmpFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileType()Ljava/lang/String;
    .locals 1

    const-string v0, ".jpg"

    return-object v0
.end method

.method public getMetaInfo()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$3;->val$params:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    iget-object v0, v0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->extraInfo:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget-object v1, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$3;->val$params:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    iget-object v1, v1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->extraInfo:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    iget-object v3, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$3;->val$params:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    iget-object v3, v3, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->extraInfo:Lorg/json/JSONObject;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method
