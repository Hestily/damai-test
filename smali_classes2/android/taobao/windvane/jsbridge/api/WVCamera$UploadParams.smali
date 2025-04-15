.class public Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/windvane/jsbridge/api/WVCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UploadParams"
.end annotation


# instance fields
.field public bizCode:Ljava/lang/String;

.field public extraData:Ljava/lang/String;

.field public extraInfo:Lorg/json/JSONObject;

.field public filePath:Ljava/lang/String;

.field public identifier:Ljava/lang/String;

.field public images:Lorg/json/JSONArray;

.field public isLastPic:Z

.field public localUrl:Ljava/lang/String;

.field public maxSelect:I

.field public mode:Ljava/lang/String;

.field public mutipleSelection:Ljava/lang/String;

.field public needBase64:Z

.field public needLogin:Z

.field public needZoom:Z

.field public reducePermission:Z

.field final synthetic this$0:Landroid/taobao/windvane/jsbridge/api/WVCamera;

.field public type:I

.field public v:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/taobao/windvane/jsbridge/api/WVCamera;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->this$0:Landroid/taobao/windvane/jsbridge/api/WVCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    .line 2
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->identifier:Ljava/lang/String;

    const-string p1, "both"

    .line 3
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->mode:Ljava/lang/String;

    const-string p1, "0"

    .line 4
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->mutipleSelection:Ljava/lang/String;

    const/16 p1, 0x9

    .line 5
    iput p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->maxSelect:I

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->isLastPic:Z

    .line 7
    iput-boolean p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->needZoom:Z

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->needLogin:Z

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->images:Lorg/json/JSONArray;

    .line 10
    iput-boolean p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->needBase64:Z

    .line 11
    iput-boolean p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->reducePermission:Z

    return-void
.end method

.method public constructor <init>(Landroid/taobao/windvane/jsbridge/api/WVCamera;Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;)V
    .locals 1

    .line 12
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->this$0:Landroid/taobao/windvane/jsbridge/api/WVCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    .line 13
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->identifier:Ljava/lang/String;

    const-string p1, "both"

    .line 14
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->mode:Ljava/lang/String;

    const-string p1, "0"

    .line 15
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->mutipleSelection:Ljava/lang/String;

    const/16 p1, 0x9

    .line 16
    iput p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->maxSelect:I

    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->isLastPic:Z

    .line 18
    iput-boolean p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->needZoom:Z

    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->needLogin:Z

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->images:Lorg/json/JSONArray;

    .line 21
    iput-boolean p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->needBase64:Z

    .line 22
    iput-boolean p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->reducePermission:Z

    .line 23
    iget-object p1, p2, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->filePath:Ljava/lang/String;

    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->filePath:Ljava/lang/String;

    .line 24
    iget-object p1, p2, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->localUrl:Ljava/lang/String;

    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->localUrl:Ljava/lang/String;

    .line 25
    iget p1, p2, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->type:I

    iput p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->type:I

    .line 26
    iget-object p1, p2, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->v:Ljava/lang/String;

    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->v:Ljava/lang/String;

    .line 27
    iget-object p1, p2, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->bizCode:Ljava/lang/String;

    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->bizCode:Ljava/lang/String;

    .line 28
    iget-object p1, p2, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->extraData:Ljava/lang/String;

    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->extraData:Ljava/lang/String;

    .line 29
    iget-object p1, p2, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->identifier:Ljava/lang/String;

    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->identifier:Ljava/lang/String;

    .line 30
    iget-object p1, p2, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->mode:Ljava/lang/String;

    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->mode:Ljava/lang/String;

    .line 31
    iget-object p1, p2, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->mutipleSelection:Ljava/lang/String;

    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->mutipleSelection:Ljava/lang/String;

    .line 32
    iget p1, p2, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->maxSelect:I

    iput p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->maxSelect:I

    .line 33
    iget-boolean p1, p2, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->isLastPic:Z

    iput-boolean p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->isLastPic:Z

    .line 34
    iget-object p1, p2, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->images:Lorg/json/JSONArray;

    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->images:Lorg/json/JSONArray;

    .line 35
    iget-boolean p1, p2, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->needZoom:Z

    iput-boolean p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->needZoom:Z

    .line 36
    iget-boolean p1, p2, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->needLogin:Z

    iput-boolean p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->needLogin:Z

    .line 37
    iget-boolean p1, p2, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->needBase64:Z

    iput-boolean p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->needBase64:Z

    .line 38
    iget-boolean p1, p2, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->reducePermission:Z

    iput-boolean p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->reducePermission:Z

    return-void
.end method
